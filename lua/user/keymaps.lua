-- LEADER
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>")
-- QUIT SAVING
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Q>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- MANAGE WINDOWS PANES AND TABS
vim.keymap.set("n", "<leader>nv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>nh", ":split<CR>")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")


-- VISUAL MODE

-- REPLACE
vim.keymap.set("v", "<leader>r", ":s/")
-- Yank selection to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
