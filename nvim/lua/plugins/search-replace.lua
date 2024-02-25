return {
    {
        'nvim-lua/plenary.nvim'
    },
    {
        'nvim-pack/nvim-spectre',
        config = function()
            vim.keymap.set('n', '<leader>r', '<cmd>Spectre<CR>', {})
        end

--        config = function()
--            require("gitsigns").setup()
--        end
    }
}

-- :Spectre
