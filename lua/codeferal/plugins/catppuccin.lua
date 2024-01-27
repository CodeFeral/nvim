return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- require("catppuccin").setup({
		-- 	integrations = {
		-- 		aerial = true,
		-- 		dashboard = true,
		-- 		leap = true,
		-- 		mason = true,
		-- 		neotree = true,
		-- 		notify = true,
		-- 		lsp_trouble = true,
		-- 		which_key = true,
		-- 	},
		-- })
		vim.cmd.colorscheme("catppuccin")
	end,
}
