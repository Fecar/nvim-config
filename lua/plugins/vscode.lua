return {
  "Mofiqul/vscode.nvim",
  priority = 1000,
  config = function()
    require("vscode").setup({
      transparent = false,
      italic_comments = false,
      underline_links = true,
      disable_nvimtree_bg = false,
      terminal_colors = true,
      color_overrides = {
        vscLineNumber = "#454545",
      },
    })
    vim.cmd.colorscheme("vscode")
  end,
}
