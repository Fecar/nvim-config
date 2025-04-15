return {
	"Mofiqul/vscode.nvim",
	lazy = false,
	priority = 1000,
	config = function()
    local c = require('vscode.colors').get_colors()
		require("vscode").setup({
			transparent = false,
			italic_comments = false,
			group_overrides = {
				MatchParen = { fg = "#ffff00", bold = true },
        Cursor = { fg=c.vsDarkBlue, bg=c.vscLightGreen, bold=true }
			},
		})
		vim.cmd.colorscheme("vscode")
	end,
}
