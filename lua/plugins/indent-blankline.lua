return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      --local highlight = {
      -- "RainbowDelimiterRed",
      --"RainbowDelimiterYellow",
      --"RainbowDelimiterBlue",
      --"RainbowDelimiterOrange",
      --"RainbowDelimiterGreen",
      --"RainbowDelimiterViolet",
      --"RainbowDelimiterCyan",
      --}
      require("ibl").setup({
        debounce = 150,
        whitespace = {
          highlight = { "Whitespace", "NonText"},
          remove_blankline_trail = false,
        },
        scope = { enabled = false },
        indent = {
          --highlight = highlight,
          --char = "|",
          --char = ":",
        },
      })
    end,
  },
}
