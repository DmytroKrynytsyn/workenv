return {
  'Mofiqul/vscode.nvim',
  lazy = false,
  priority = 1000,
  config = function()
        vim.cmd.colorscheme('vscode')
  end
}

-- TODO: 

--[[
-- return {
--  'kepano/flexoki-neovim',
--  name = 'flexoki',
--  config = function ()
--      vim.cmd('colorscheme flexoki-light)
--  end
-- }
]]--

--[[
return {

  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
        vim.cmd.colorscheme('tokyonight-day')
      end
}
]]--

--[[
return {
     "yorik1984/newpaper.nvim",
    priority = 1000,
    config = true,
}
]]--

--[[
return {
      'sainnhe/edge',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.edge_enable_italic = true
        vim.cmd.colorscheme('edge')
      end
    }
    ]]--

--[[
return {
  'catppuccin/nvim',
  name = "catppuccin",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('catppuccin').setup({
      flavour = "latte"
    })

    vim.cmd('colorscheme catppuccin')
  end,
}
]]--
