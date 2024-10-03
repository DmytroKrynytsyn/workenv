return {
	"jay-babu/mason-null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("mason-null-ls").setup({
			ensure_installed = {
				"stylua",
				"jq",
				"mypy",
				"black",
				"isort",
				"shfmt",
				"shellcheck",
				"ansiblelint",
				"terrafmt",
				"terraform_fmt",
				"terraform_validate",
                "yamllint",
                "yamlfmt",
                "yamlfix"
			},
		})
	end,
}
