return {
    {
      'ahmedkhalf/project.nvim',
      config = function()
        require('project_nvim').setup({
          detection_methods = { "pattern" },
          patterns = { "lazy-lock.json", ".git", "Makefile", "package.json", "requirements.txt" },
        })
      end
    },

    {
      'goolord/alpha-nvim',
      config = function()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')
        
        dashboard.section.buttons.val = {
          dashboard.button("p", "📁 Projects", ":Telescope projects<CR>"),
          dashboard.button("f", "🔍 Find File", ":Telescope find_files<CR>"),
          dashboard.button("n", "📝 New File", ":ene<CR>"),
        }
        
        alpha.setup(dashboard.config)
      end
    },
}
