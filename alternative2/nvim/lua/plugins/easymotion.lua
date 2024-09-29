return {
    'easymotion/vim-easymotion',
    config = function()
        vim.keymap.set('n', '<Leader>mw', '<Plug>(easymotion-overwin-w)', {desc = 'test'})
        vim.keymap.set('n', '<Leader>ml', '<Plug>(easymotion-overwin-line)', {desc = 'test'})
        vim.keymap.set('n', '<Leader>mf', '<Plug>(easymotion-overwin-f)', {desc = 'test'})
        vim.keymap.set('n', 's', '<Plug>(easymotion-overwin-f2)', {desc = 'test'})
        vim.keymap.set('v', '<Leader>mw', '<Plug>(easymotion-bd-w)', {desc = 'test'})
        vim.keymap.set('v', '<Leader>ml', '<Plug>(easymotion-eol-bd-jk)', {desc = 'test'})
        vim.keymap.set('v', '<Leader>mf', '<Plug>(easymotion-bd-f)', {desc = 'test'})
    end,
}
