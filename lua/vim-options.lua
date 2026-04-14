vim.g.mapleader = " "
vim.o.showmode = false
-- buffer and aplist navigation
local function set_mappings()
	local opts = { noremap = true }
	local mappings = {
		{ "n", "<C-h>", "<Cmd>wincmd h<CR>", opts },
		{ "n", "<C-j>", "<Cmd>wincmd j<CR>", opts },
		{ "n", "<C-k>", "<Cmd>wincmd k<CR>", opts },
		{ "n", "<C-l>", "<Cmd>wincmd l<CR>", opts },
		-- { "n", "<leader>q", "<Cmd>bdelete<CR>",                   opts },
		{ "t", "<C-h>", "<Cmd>wincmd h<CR>", opts },
		{ "t", "<C-j>", "<Cmd>wincmd j<CR>", opts },
		{ "t", "<C-k>", "<Cmd>wincmd k<CR>", opts },
		{ "t", "<C-l>", "<Cmd>wincmd l<CR>", opts },
		{ "n", "<S-h>", "<Cmd>bprevious<CR>", opts },
		{ "n", "<S-l>", "<Cmd>bNext<CR>", opts },
		{ "n", "<C-s>", "<Cmd>w<CR>", opts },
		{ "v", "<C-s>", "<Cmd>w<CR>", opts },
		{ "n", "<C-q>", "<Cmd>qa!<CR>", opts },
		{ "v", "<C-q>", "<Cmd>qa!<CR>", opts },
		-- { "n", "<C-a>",     "ggVG",               opts },
		{ "n", "<leader>v", "<C-v>", { noremap = true, desc = "Visual Block" } },
		{ "n", "<leader>|", "<Cmd>vsplit<CR>", { noremap = true, desc = "Vertical Split" } },

		{ "n", "<leader>,", "<Cmd>BufferPrevious<CR>", { noremap = true, desc = "Buffer Previous" } },
		{ "n", "<leader>.", "<Cmd>BufferNext<CR>", { noremap = true, desc = "Buffer Next" } },

		-- Re-order to previous/next
		{ "n", "<leader>>", "<Cmd>BufferMoveNext<CR>", { noremap = true, desc = "Buffer Move Next" } },

		-- Goto buffer in position...
		{ "n", "<leader>1", "<Cmd>BufferGoto 1<CR>", { noremap = true, desc = "Buffer Goto 1" } },
		{ "n", "<leader>2", "<Cmd>BufferGoto 2<CR>", { noremap = true, desc = "Buffer Goto 2" } },
		{ "n", "<leader>3", "<Cmd>BufferGoto 3<CR>", { noremap = true, desc = "Buffer Goto 3" } },
		{ "n", "<leader>4", "<Cmd>BufferGoto 4<CR>", { noremap = true, desc = "Buffer Goto 4" } },
		{ "n", "<leader>5", "<Cmd>BufferGoto 5<CR>", { noremap = true, desc = "Buffer Goto 5" } },
		{ "n", "<leader>6", "<Cmd>BufferGoto 6<CR>", { noremap = true, desc = "Buffer Goto 6" } },
		{ "n", "<leader>7", "<Cmd>BufferGoto 7<CR>", { noremap = true, desc = "Buffer Goto 7" } },
		{ "n", "<leader>8", "<Cmd>BufferGoto 8<CR>", { noremap = true, desc = "Buffer Goto 8" } },
		{ "n", "<leader>9", "<Cmd>BufferGoto 9<CR>", { noremap = true, desc = "Buffer Goto 9" } },
		{ "n", "<leader>0", "<Cmd>BufferLast<CR>", { noremap = true, desc = "Buffer Goto Last" } },

		-- Pin/unpin buffer
		{ "n", "<A-p>", "<Cmd>BufferPin<CR>", { noremap = true, desc = "Buffer Pin/Unpin" } },
		{ "n", "<A-c>", "<Cmd>BufferClose<CR>", { noremap = true, desc = "Buffer Close" } },

		-- { "n", "<C-p>",     "<Cmd>BufferPick<CR>",                { noremap = true, desc = "Buffer Pick" } },
		-- { "n", "<C-s-p>",   "<Cmd>BufferPickDelete<CR>",          { noremap = true, desc = "Buffer Pick Delete" } },

		-- Sort automatically by...
		{
			"n",
			"<leader>bb",
			"<Cmd>BufferOrderByBufferNumber<CR>",
			{ noremap = true, desc = "Buffer Order by Number" },
		},
		{ "n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", { noremap = true, desc = "Buffer Order by Name" } },
		{
			"n",
			"<leader>bd",
			"<Cmd>BufferOrderByDirectory<CR>",
			{ noremap = true, desc = "Buffer Order by Directory" },
		},
		{
			"n",
			"<leader>bl",
			"<Cmd>BufferOrderByLanguage<CR>",
			{ noremap = true, desc = "Buffer Order by Language" },
		},
		{
			"n",
			"<leader>bw",
			"<Cmd>BufferOrderByWindowNumber<CR>",
			{ noremap = true, desc = "Buffer Order by Windows Number" },
		},
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
		-- foldmethod = "indent",
		-- foldlevel = 99,
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

		foldmethod = "expr",
		foldexpr = "v:lua.vim.treesitter.foldexpr()",
		-- foldexpr = "nvim_treesitter#foldexpr()",
		-- foldcolumn = "1",
		foldlevel = 99,
		foldtext = "",
	}
	for key, val in pairs(options) do
		vim.opt[key] = val
	end
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		-- vim.api.nvim_set_hl(0, 'BufferCurrent', { fg = '#A0A8B7', bold = true })
		-- vim.api.nvim_set_hl(0, 'BufferInactive', { fg = '#535965' })
		--
		-- vim.api.nvim_set_hl(0, 'BufferInactiveIcon', { fg = '#535965' })
		-- vim.api.nvim_set_hl(0, 'lualine_a_normal', { fg = '#FFFFFF',bg = '#FFFFFF' })
	end,
})

set_mappings()
set_options()
