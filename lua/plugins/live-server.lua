return {
	"barrett-ruth/live-server.nvim",
	build = "npm add -g live-server",
	cmd = { "LiveServerStart", "LiveServerStop" },
	config = function()
		require("live-server").setup({
			args = { "--port=5555" },
		})
	end,
}
