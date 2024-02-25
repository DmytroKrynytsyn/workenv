
return {
    {
        'MunifTanjim/nui.nvim'
    },
    {
        'VonHeikemen/fine-cmdline.nvim',
        config = function()
            vim.keymap.set('n', '<leader>;', '<cmd>FineCmdline<CR>', {noremap = true})
        end

    }
}

