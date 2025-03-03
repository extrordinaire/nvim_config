-- lua/config/keybindings.lua

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Options for key mappings
local opts = { noremap = true, silent = true }

-- Function to set key mappings
local keymap = vim.api.nvim_set_keymap

-- Normal Mode Keybindings
keymap("n", "<leader>w", ":w<CR>", opts)          -- Save file
keymap("n", "<leader>q", ":q<CR>", opts)          -- Quit
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Toggle file explorer
keymap("n", "<C-d>", "<C-d>zz", opts)             -- Scroll down half-page and center
keymap("n", "<C-u>", "<C-u>zz", opts)             -- Scroll up half-page and center

keymap("n", "<Tab>", ":tabnext<CR>", { noremap = true, silent = true })
keymap("n", "<S-Tab>", ":tabprev<CR>", { noremap = true, silent = true })
keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true, silent = true }) -- Close tab
keymap("n", "<leader>tn", ":tabnew<CR>", { noremap = true, silent = true }) -- New tab


-- Visual Mode Keybindings
keymap("v", "$", "g_", opts)                      -- Move to end of line (non-blank)
keymap("v", "g_", "$", opts)                      -- Move to end of line

-- Command Mode Keybindings
keymap("c", "<C-j>", "<C-n>", { noremap = false }) -- Next item in command-line completion
keymap("c", "<C-k>", "<C-p>", { noremap = false }) -- Previous item in command-line completion

vim.keymap.set('n', '<leader><Right>', 
	function() 
		vim.cmd('NvimTreeFocus')
	end, 
	{ noremap = true, silent = true })

