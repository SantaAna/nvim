-- global settings and options
vim.g.mapleader = ' '
vim.o.relativenumber = true
vim.o.scrolloff = 10


-- Tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.swapfile = false

-- Load plugins
require('plugins')
require("nvim-lsp-installer").setup {}

-- Key mappings
local keymap = vim.api.nvim_set_keymap
local nore = { noremap = true }
-- VIM mappings
keymap('i', '<C-e>', '<ESC>', nore)
keymap('n', '<C-l>', '<C-w>l', nore)
keymap('n', '<C-h>', '<C-w>h', nore)
keymap('n', '<C-q>', '<C-w>q', nore)
keymap('n', '<C-d>', '<C-d>zz', nore)
keymap('n', '<C-u>', '<C-u>zz', nore)

-- Plugin mappings
-- Nvim Tree
keymap('n', '<leader>t', '<cmd>NvimTreeToggle<cr>', nore)
-- Barbar
keymap('n', '<leader>bp', '<cmd>BufferPick<cr>', nore)
keymap('n', '<leader>bb', '<cmd>BufferNext<cr>', nore)
keymap('n', '<leader>bx', '<cmd>bd<cr>', nore)
