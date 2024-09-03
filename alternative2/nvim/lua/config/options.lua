vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.g.background = light

-- Tab / Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.wrap = false

-- Search
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Appearance
vim.opt.number = true
--vim.opt.relativenumber = true
vim.opt.cmdheight = 1
vim.opt.scrolloff = 3
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Behaviour
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = "a"
--vim.opt.clipboard:append("unnamedplus")
vim.opt.clipboard = "unnamed,unnamedplus"
--vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.opt.encoding = "UTF-8"
vim.opt.showmode = false

-- Files
vim.opt.undofile = true
vim.opt.updatetime = 250
