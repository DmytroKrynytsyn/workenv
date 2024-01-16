return {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
        vim.keymap.set('n', '<leader>c', '<Cmd>ToggleTerm direction=float<CR>')
    end
}
