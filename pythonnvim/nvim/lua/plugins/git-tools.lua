return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
            require("config.keymaps").Gitsigns()
        end
    },
    {
        "tpope/vim-fugitive",
        config = function()
            require("config.keymaps").VimFugitive()
        end

    }
}
