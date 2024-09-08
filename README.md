# workenv

---
Common

- sudo port install ripgrep
- sudo port install gsed
- zsh
- sudo apt install build-essential # for debian/ubuntu
- yazi & mc - as file managers
  - poppler (for pdf preview in console)
- fzf - finder
- btop - process monitoring

---
Alternative config
v1='XDG_CONFIG_HOME=~/.config1 nvim'

---
kitty terminal
- kitten themes -> alabaster
---
Iterm2

1. color scheme (I use 'alabaster:')
https://raw.githubusercontent.com
2. oh my zsh
https://github.com/ohmyzsh/ohmyzsh
3. fonts
https://www.nerdfonts.com/font-downloads
meslo
4. ZSH_THEME="zhann"
5. syntax highlighting 
https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
6. autosuggestion
https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

7. edit ./zshrc -> plugins zsh-syntax-highlighting zsh-autosuggestions

---
Tmux

1. place .tmux.conf into HOME
2. git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
3. Prefix + I/U - intall/update plugins

---
NeoVim

put "nvim" folder in ~/.config

---
QMK

~/qmk_firmware/keyboards/crkbd/keymaps/<keymap_name>/keymap.c


https://config.qmk.fm/#/crkbd/rev1/LAYOUT_split_3x6_3


qmk list-keymaps -kb crkbd/rev1


qmk compile -kb crkbd/rev1 -km <keymap_name> -e CONVERT_TO=promicro_rp2040


python qmk/ctojson.py qmk/keymap.c

