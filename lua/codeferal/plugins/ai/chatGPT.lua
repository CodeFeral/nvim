return {
	"jackMort/ChatGPT.nvim",

	enabled = false,

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
