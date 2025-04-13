return {
	{
		"akinsho/bufferline.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({
				options = {
					show_buffer_close_icons = true,
					show_close_icon = true,
					offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },

					highlights = {
						fill = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "StatusLineNC" },
						},
						background = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "Normal" },
						},
						buffer_visible = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "Normal" },
						},
						buffer_selected = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "NormalNC" },
						},
						separator = {
							fg = { attribute = "bg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "StatusLine" },
						},
						separator_selected = {
							fg = { attribute = "fg", highlight = "Special" },
							bg = { attribute = "bg", highlight = "Normal" },
						},
						separator_visible = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "StatusLineNC" },
						},
						close_button = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "StatusLine" },
						},
						close_button_selected = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "Normal" },
						},
						close_button_visible = {
							fg = { attribute = "fg", highlight = "Normal" },
							bg = { attribute = "bg", highlight = "Normal" },
						},
					},
				},
			})
		end,
	},
}
