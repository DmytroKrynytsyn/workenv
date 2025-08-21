return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("todo-comments").setup()
    require("config.keymaps").TodoComments()
  end,
}
