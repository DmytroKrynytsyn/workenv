return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  
  config = function()
    require("config.keymaps").Flash()
  end
}
