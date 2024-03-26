local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.smarttab = true
opt.autoindent = true
opt.breakindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.inccommand = "split"
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Appearance
opt.number = true
--opt.relativenumber = true
opt.cmdheight = 1
opt.scrolloff = 3
opt.cursorline = true
opt.signcolumn = "yes"

-- Behaviour
opt.splitright = true
opt.splitbelow = true
opt.mouse = "a"
--opt.clipboard:append("unnamedplus")
opt.clipboard = "unnamedplus"
--opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
opt.encoding = "UTF-8"
opt.showmode = false

-- Files
opt.undofile = true
opt.updatetime = 250
