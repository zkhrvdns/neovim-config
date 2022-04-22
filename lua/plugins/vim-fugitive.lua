-- https://github.com/tpope/vim-fugitive

local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

nvim_set_keymap('n', '<leader>gs', ':Git<CR>', opts)
nvim_set_keymap('n', '<leader>ga', ':Git add %<CR>', opts)
nvim_set_keymap('n', '<leader>gc', ':Git commit<CR>', opts)
