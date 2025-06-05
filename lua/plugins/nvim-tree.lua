return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 40,
      },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
  end,
}
