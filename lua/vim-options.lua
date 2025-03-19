vim.g.mapleader = " "
vim.o.showmode = false
-- buffer and aplist navigation
local function set_mappings()
	local opts = { noremap = true }
	local mappings = {
		{ "n", "<leader>h", "<C-w>h<CR>", opts },
		{ "n", "<leader>j", "<C-w>j<CR>", opts },
		{ "n", "<leader>k", "<C-w>k<CR>", opts },
		{ "n", "<leader>l", "<C-w>l<CR>", opts },
		{ "n", "<leader>Q", "<C-w>c<CR>", opts },
		{ "n", "<leader>z", "<Cmd>bp<CR>", opts },
		{ "n", "<leader>x", "<Cmd>bn<CR>", opts },
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

-- Other configs
vim.opt.guicursor = "n-v-c:block,o:hor50,i-ci:ver25,r-cr:hor20,a:blinkwait700-blinkon400-blinkoff250,sm:block-iCursor"
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1c1f2b" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#ffffff" })

-- keymaps
vim.keymap.set("n", "<C-s>", ":wa<CR>", {})
vim.keymap.set("v", "<C-s>", ":wa<CR>", {})
vim.keymap.set("n", "<C-q>", ":qa!<CR>", {})
vim.keymap.set("v", "<C-q>", ":qa!<CR>", {})
