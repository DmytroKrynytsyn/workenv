return {
	"neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.pyright.setup({ capabilities = capabilities })
		lspconfig.bashls.setup({ capabilities = capabilities })

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>ce", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, {}) 
		-- vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "<leader>cr", "<cmd>Telescope lsp_references<CR>", {})
		vim.keymap.set("n", "<leader>ct", "<cmd>Telescope lsp_type_definitions<CR>", {})
		vim.keymap.set("n", "<leader>cd", "<cmd>Telescope lsp_definitions<CR>", {})
		vim.keymap.set("n", "<leader>ci", "<cmd>Telescope lsp_implementations<CR>", {})
		vim.keymap.set("n", "<leader>cp", "<cmd>Telescope diagnostics bufnr=0<CR>", {})
        vim.keymap.set("n", "<leader>er", vim.lsp.buf.rename, {})
	end,
}
