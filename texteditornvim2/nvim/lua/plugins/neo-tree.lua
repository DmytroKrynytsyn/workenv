return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            filesystem = {
                follow_current_file = { enabled = true },
            },
            window = { 
                mappings= { 
                    ["Z"] = "expand_all_nodes",
                    ["h"] = "open_split",
                    ["v"] = "open_vsplit",
                    ["s"] = "noop",
                },
            }
        })

        require("config.keymaps").Neotree()
    end
}

