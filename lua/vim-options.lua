vim.g.mapleader = " "
vim.o.showmode = false
-- buffer and aplist navigation
local function set_mappings()
  local opts = { noremap = true }
  local mappings = {
    { "n", "<C-h>",     "<Cmd>wincmd h<CR>",  opts },
    { "n", "<C-j>",     "<Cmd>wincmd j<CR>",  opts },
    { "n", "<C-k>",     "<Cmd>wincmd k<CR>",  opts },
    { "n", "<C-l>",     "<Cmd>wincmd l<CR>",  opts },
    { "n", "<leader>q", "<Cmd>bdelete<CR>",   opts },
    { "t", "<C-h>",     "<Cmd>wincmd h<CR>",  opts },
    { "t", "<C-j>",     "<Cmd>wincmd j<CR>",  opts },
    { "t", "<C-k>",     "<Cmd>wincmd k<CR>",  opts },
    { "t", "<C-l>",     "<Cmd>wincmd l<CR>",  opts },
    { "n", "<S-h>",     "<Cmd>bprevious<CR>", opts },
    { "n", "<S-l>",     "<Cmd>bNext<CR>",     opts },
    { "n", "<C-s>",     "<Cmd>wa<CR>",        opts },
    { "v", "<C-s>",     "<Cmd>wa<CR>",        opts },
    { "n", "<C-q>",     "<Cmd>qa!<CR>",       opts },
    { "v", "<C-q>",     "<Cmd>qa!<CR>",       opts },
    { "n", "<C-a>",     "ggVG",               opts },
  }

  for _, val in pairs(mappings) do
    vim.api.nvim_set_keymap(unpack(val))
  end
end

local function set_options()
  local options = {
    ruler = true,
    number = true,
    relativenumber = true,
    foldmethod = "indent",
    foldlevel = 20,
    encoding = "utf-8",
    fileencoding = "utf-8",
    fileencodings = "utf-8",
    backspace = "indent,eol,start",
    smartindent = true,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    expandtab = true,
    smarttab = true,
    clipboard = "unnamedplus",
    wrap = true,
    wm = 2,
    textwidth = 180,
    updatetime = 300,
    termguicolors = true,
  }
  for key, val in pairs(options) do
    vim.opt[key] = val
  end
end

set_mappings()
set_options()
