-- https://github.com/davidgranstrom/nvim-markdown-preview

local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

nvim_set_keymap('n', '<leader>p', ':MarkdownPreview<CR>', opts)
