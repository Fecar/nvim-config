return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false,
		opts = {
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_diagnostics = true,
			enable_gitignore = true,
			enable_normal_mode_for_action_menu = true,
			open_files_as_nodes = false,
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
					never_show = {},
				},
				follow_current_file = true,
				group_empty_dirs = true,
				hijack_netrw_behavior = "open_default",
				use_libuv_file_watcher = true,
			},
		},
		config = function()
			vim.keymap.set("n", "<C-e>", ":Neotree toggle filesystem reveal left<CR>", {})
		end,
	},
}
