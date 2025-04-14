return {
	"aktersnurra/no-clown-fiesta.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("no-clown-fiesta").setup({
			transparent = false,
			styles = {
				-- You can set any of the style values specified for `:h nvim_set_hl`
				comments = {},
				functions = {},
				keywords = {},
				lsp = {},
				match_paren = { fg = "#ffff00", bold = true, underline = false },
				type = { bold = true },
				variables = {},
			},
		})
		vim.cmd.colorscheme("no-clown-fiesta")
	end,
}
