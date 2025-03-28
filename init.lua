local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

-- Other configs
vim.opt.guicursor = "n-v-c:block,o:hor50,i-ci:ver25,r-cr:hor20,a:blinkwait700-blinkon400-blinkoff250,sm:block-iCursor"
vim.opt.cursorline = true
--vim.api.nvim_set_hl(0, "CursorLine", { bg = "#363654" })
--vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff" })
