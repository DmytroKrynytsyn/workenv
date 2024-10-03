return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"gbprod/none-ls-shellcheck.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				require("none-ls-shellcheck.diagnostics"),
				require("none-ls-shellcheck.code_actions"),
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.shfmt,
			},
		})
		vim.lsp.buf.format({ timeout_ms = 50000 })
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}
