return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.pyright.setup({ capabilities = capabilities })

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}