return {
    'easymotion/vim-easymotion',
    config = function()
        require("config.keymaps").EasyMotion()
    end,
}
