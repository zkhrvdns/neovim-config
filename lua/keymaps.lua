local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Esc
nvim_set_keymap('i', 'jk', '<Esc>', opts)
nvim_set_keymap('i', 'kj', '<Esc>', opts)

-- Window Movement
nvim_set_keymap('n', '<C-h>', '<C-w>h', opts)
nvim_set_keymap('n', '<C-j>', '<C-w>j', opts)
nvim_set_keymap('n', '<C-k>', '<C-w>k', opts)
nvim_set_keymap('n', '<C-l>', '<C-w>l', opts)

-- Window Resize
nvim_set_keymap('n', '<S-Up>', ':resize -2<CR>', opts)
nvim_set_keymap('n', '<S-Down>', ':resize +2<CR>', opts)
nvim_set_keymap('n', '<S-Left>', ':vertical resize -2<CR>', opts)
nvim_set_keymap('n', '<S-Right>', ':vertical resize +2<CR>', opts)

-- Toggle HighLight Search
nvim_set_keymap('n', '<leader>h', ':set nohlsearch!<CR>', opts)

-- Disable suspend
nvim_set_keymap('n', '<C-z>', '', opts)
nvim_set_keymap('v', '<C-z>', '', opts)

-- Cut, Copy and Paste
nvim_set_keymap('v', 'x', '"+x', opts)
nvim_set_keymap('v', 'y', '"+y', opts)
nvim_set_keymap('', 'p', '"+p', opts)
