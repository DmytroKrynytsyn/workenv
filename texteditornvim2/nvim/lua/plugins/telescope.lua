return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      {
        'nvim-telescope/telescope-fzf-native.nvim',

        build = 'make',

        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
    },
    config = function()

      require('telescope').setup {
        path_display = { "smart" },

--        pickers = {
--          find_files = {
--            theme = "ivy"
--          }
--        },

        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
          ['fzf'] = {},
        },
      }

      require('telescope').load_extension('fzf')
      require('telescope').load_extension('ui-select')
      require('telescope').load_extension('projects') 

      require("config.keymaps").Telescope()
    end,
}
