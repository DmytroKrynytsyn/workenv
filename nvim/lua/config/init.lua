local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.options")
require("config.keymaps")
require("config.autocmds")

local opts = {
	defaults = {
		lazy = false,
	},
	rtp = {
		disabled_plugins = {
            "lspsaga",
		},
	},
	change_detection = {
		notify = true,
	},
}

require("lazy").setup("plugins", opts)
