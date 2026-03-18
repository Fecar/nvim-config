return {
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0",
    lazy = false,
    opts = {
      auto_install = true,
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 'lua_ls', 'pyright', 'cmake', 'clangd', 'html', 'ts_ls', 'volar' },
        automatic_installation = true,
        -- automatic_enable = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      vim.diagnostic.config({
        virtual_text = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '',
          }
        }
      })

      vim.lsp.config('*', {
        cmd = { 'true' },
        root_markers = { '.git' },
        capabilities = {
          textDocument = {
            semanticTokens = {
              multilineTokenSupport = true,
            }
          }
        }
      })
      
      local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
      local vue_plugin_path = mason_packages .. "/vue-language-server/node_modules/@vue/language-server"
      
      vim.lsp.config('ts_ls', {
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = vue_plugin_path,
              languages = { "vue"},
            },
          },
        },
        filetypes = { "typescript", "javacript", "javascriptreact", "typescriptreact", "vue"}
      })

      vim.lsp.enable({ 'ts_ls' })
      vim.lsp.enable({ 'vue_ls' })

      local servers = { 'lua_ls', 'pyright', 'cmake', 'clangd', 'html' }

      for _, lsp in ipairs(servers) do
        vim.lsp.enable({ lsp })
      end
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "GoTo definition" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "GoTo References" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  },
}
