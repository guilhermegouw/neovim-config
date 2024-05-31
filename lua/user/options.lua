vim.opt.shortmess:append("I") --Remove intro screen

-- Enable cursorline
vim.opt.cursorline = true 

-- Line numbers Configs
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable line wrap
vim.opt.wrap = false

-- AutoComplete Settings
vim.opt.complete = "."
vim.opt.completeopt = {"menuone", "noselect", "noinsert", "preview"}
vim.opt.pumheight = 10 --Maximum number of items to show in popup menu
vim.opt.undofile = true

-- Split Configs
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"
