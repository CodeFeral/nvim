return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.html.setup({})
	end,
}
