return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      -- copilot_model = "gpt-4o-copilot",
      copilot_model = "claude-3.7-sonnet",
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 55,
        keymap = {
          -- accept = "<tab>",
          accept = "<C-y>",
          -- accept = false,
          accept_word = false,
          -- accept_line = '<tab>',
          next = "<C-)>",
          -- prev = "<M-[>",
          dismiss = "<C-Tab>",
        },
      },
    })
  end,
}
