return {
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup({
        options = {
          mode = "buffers",
          themable = true,
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          persist_buffer_sort = true,
          separator_style = { "", "" },
          enforce_regular_tabs = true,
          always_show_bufferline = true,
          indicator = {
            icon = "▍",
            style = "icon",
          },
          offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },
        },
        highlights = {
          fill = {
            fg = "#ff0000",
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          background = {
            fg = { attribute = "fg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          buffer_visible = {
            fg = { attribute = "fg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
            bold = true,
          },
          buffer_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          tab = {
            fg = { attribute = "fg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          tab_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          tab_separator = {
            fg = { attribute = "bg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          tab_close = {
            fg = { attribute = "fg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "Normal" },
          },
          separator = {
            fg = { attribute = "bg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          separator_selected = {
            fg = { attribute = "fg", highlight = "TabLine" },
            bg = { attribute = "fg", highlight = "TabLine" },
          },
          --separator_visible = {
          --  fg = { attribute = "fg", highlight = "Question" },
          --  bg = { attribute = "fg", highlight = "Question" },
          --},
          close_button = {
            fg = { attribute = "fg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          --close_button_selected = {
          --  fg = { attribute = "fg", highlight = "Normal" },
          --  bg = { attribute = "bg", highlight = "Normal" },
          --},
          close_button_visible = {
            fg = { attribute = "fg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          modified = {
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          modified_visible = {
            bg = { attribute = "bg", highlight = "TabLine" },
          },
          modified_selected = {
            bg = { attribute = "bg", highlight = "TabLineSel" },
          },
        },
      })
      vim.schedule(function()
        vim.cmd([[
          hi! BufferLineIndicatorSelected guifg=#0a7aca
          hi! BufferLineIndicatorVisible guifg=#2d2d2d guibg=#2d2d2d
        ]])
      end)
    end,
  },
}
