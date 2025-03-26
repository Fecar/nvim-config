return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "HiPhish/rainbow-delimiters.nvim" },
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      -- auto_install = true,
      ensure_installed = { "lua", "cpp", "c", "python" },
      highlight = { enable = true },
      indent = { enable = true },
    })
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
}
