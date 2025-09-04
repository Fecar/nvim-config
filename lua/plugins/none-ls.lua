return {
  "jay-babu/mason-null-ls.nvim",
  dependencies = { "williamboman/mason.nvim" },
  opts ={
      ensure_installed = {
        "stylua",
        "black",
        "isort",
        "clang_format",
      },
      automatic_installation = true,
  },

  config = function()
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {desc = "format buffer"})
  end,
}
