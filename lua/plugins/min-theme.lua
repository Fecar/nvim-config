return {
	"datsfilipe/min-theme.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("min-theme").setup({
			theme = "dark",
			transparent = "false",
			italics = {
				comments = false,
				ketwords = false,
				functions = false,
				strings = false,
				variables = false,
			},
		})
		vim.cmd.colorscheme("min-theme")
	end,
}
