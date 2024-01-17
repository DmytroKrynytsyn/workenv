return {
    'akinsho/toggleterm.nvim', 
    version = "*",
    config = true,
    opts = function()
        vim.keymap.set('n', '<F4>', '<Cmd>ToggleTerm direction=float<CR>')
    end
}
