return {
	"jackMort/ChatGPT.nvim",

	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},

	event = "VeryLazy",

	config = function()
		require("chatgpt").setup()
	end,
}
