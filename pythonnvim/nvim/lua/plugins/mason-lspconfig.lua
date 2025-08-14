return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright", "bashls", "terraformls", "ansiblels" },
        })
    end,
}
