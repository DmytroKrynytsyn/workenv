return {
    'akinsho/toggleterm.nvim', 
    version = "*",
    config = true,
    opts = function()
        vim.keymap.set('n', '<leader>c', '<Cmd>ToggleTerm direction=float<CR>')
    end
}
