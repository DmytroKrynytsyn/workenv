return {
    'akinsho/toggleterm.nvim', 
    version = "*",
    config = true,
    opts = function()
      require("config.keymaps").Toggleterm()
    end
}
