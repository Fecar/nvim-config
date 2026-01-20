return {
  'romgrk/barbar.nvim',
  version = '^1.0.0',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.g.barbar_auto_setup = false
    require("barbar").setup {
      animation = false,
      highlight_visible = false,
      highlight_alternate = false,
      buffer_number = true,
    }
  end
}
