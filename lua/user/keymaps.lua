-- LEADER
vim.g.mapleader = " "

-- KEY MAPPINGS
local map = vim.keymap.set
local opts = { noremap = true, silent = true }



-- NORMAL MODE
-- MANAGE WINDOWS PANES AND TABS
vim.keymap.set("n", "<leader>nv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>nh", ":split<CR>")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- QUIT SAVING
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Q>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- FILE EXPLORER
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)



-- INSERT MODE
vim.keymap.set("i", "jj", "<Esc>")



-- VISUAL MODE
vim.keymap.set("v", "<leader>r", ":s/") -- REPLACE
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true }) -- Yank selection to clipboard
