return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("nvim-tree").setup({})
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})
  end,
}
