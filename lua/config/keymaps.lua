-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- INSERT MODE
-- Key MAPPINGS
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- NORMAL MODE
map("n", "<C-q>", ":q<CR>", opts)
map("n", "<C-Q>", ":q!<CR>", opts)
map("n", "<C-s>", ":w<CR>", opts)

-- INSERT MODE
map("i", "jj", "<Esc>")
