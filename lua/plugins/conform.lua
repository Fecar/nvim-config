return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				python = { "isort", "black" },
				lua = { "stylua" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				vue = { "prettier" },
				cpp = { "clang-format" },
				c = { "clang-format" },
				html = { "prettier" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>gf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format buffer" })
	end,
}
