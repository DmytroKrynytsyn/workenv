import re
import sys
import json

data = {
  "version": 1,
  "notes": "",
  "documentation": "Dmytros crkbd keymap",
  "keyboard": "crkbd/rev1",
  "keymap": "crkbd_rev1_layout_split_3x6_3_dmytros",
  "layout": "LAYOUT_split_3x6_3",
  "layers": [  ],
  "author": "Dmytro"
}

ROWS_PER_LAYER = 4

all_rows = []

is_inside = False 

with open(sys.argv[1], 'r') as file:
    for line in file:
        if not is_inside:
            is_inside = "PROGMEM keymaps" in line
            continue

        stripped_line = re.sub(r'\s+', '', line.strip()).strip()

        if stripped_line.startswith("//") or stripped_line.isspace() or stripped_line == "":
            continue

        if stripped_line and (stripped_line[0].isupper() or stripped_line[0] == "_"):
            all_rows.append(stripped_line)

if 0 != len(all_rows) % ROWS_PER_LAYER:
    print(f"Something's wrong - Corne 3x6 has {ROWS_PER_LAYER} rows per layer")

for layer_number in range(int(len(all_rows)/ROWS_PER_LAYER)):
    line_number_from = layer_number * ROWS_PER_LAYER
    line_number_to = (layer_number + 1) * ROWS_PER_LAYER
    layer_keys = ("".join(all_rows[ line_number_from : line_number_to ])).split(',')
    data["layers"].append(layer_keys)

with open(data["keymap"] + ".json", "w") as json_file:
    json.dump(data, json_file, indent=4)  # indent=4 for pretty formatting