return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- dependencies = { "HiPhish/rainbow-delimiters.nvim" },
		branch = "master",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				-- auto_install = true,
				ensure_installed = { "lua", "cpp", "c", "python", "vue", "javascript", "typescript", "html", "css" },
				highlight = { enable = true },
				indent = { enable = true },
				folds = { enable = true },
			})
			-- 	local rainbow = require("rainbow-delimiters.setup")
			--
			-- 	rainbow.setup({
			--
			-- 		dependencies = { "nvim-treesitter/nvim-treesitter" },
			-- 		strategy = {
			-- 			[""] = "rainbow-delimiters.strategy.global",
			-- 			commonlisp = "rainbow-delimiters.strategy.local",
			-- 		},
			-- 		query = {
			-- 			[""] = "rainbow-delimiters",
			-- 			latex = "rainbow-blocks",
			-- 		},
			-- 		highlight = {
			-- 			"RainbowDelimiterRed",
			-- 			"RainbowDelimiterYellow",
			-- 			"RainbowDelimiterBlue",
			-- 			"RainbowDelimiterOrange",
			-- 			"RainbowDelimiterGreen",
			-- 			"RainbowDelimiterViolet",
			-- 			"RainbowDelimiterCyan",
			-- 		},
			-- 	})
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			local rainbow = require("rainbow-delimiters.setup")
			rainbow.setup({
				strategy = {
					[""] = "rainbow-delimiters.strategy.global",
					commonlisp = "rainbow-delimiters.strategy.local",
				},
				query = {
					[""] = "rainbow-delimiters",
					latex = "rainbow-blocks",
				},
				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterYellow",
					"RainbowDelimiterBlue",
					"RainbowDelimiterOrange",
					"RainbowDelimiterGreen",
					"RainbowDelimiterViolet",
					"RainbowDelimiterCyan",
				},
			})
		end,
	},
}
