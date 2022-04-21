-- https://github.com/akinsho/nvim-bufferline.lua

require('bufferline').setup {
    options = {
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match('error') and ' ' or ' '
            return ' ' .. icon .. count
        end,
    },
}

local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap=true, silent=true}

-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)
nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
nvim_set_keymap('n', '<A-,>', ':BufferLineCyclePrev<CR>', opts)
nvim_set_keymap('n', '<A-.>', ':BufferLineCycleNext<CR>', opts)

-- These commands will move the current buffer backwards or forwards in the bufferline
nvim_set_keymap('n', '<', ':BufferLineMovePrev<CR>', opts)
nvim_set_keymap('n', '>', ':BufferLineMoveNext<CR>', opts)

-- These commands will sort buffers by directory, language, or a custom criteria
nvim_set_keymap('n', 'be', ':BufferLineSortByExtension<CR>', opts)
nvim_set_keymap('n', 'bd', ':BufferLineSortByDirectory<CR>', opts)

-- Pick a buffer by typing the character
nvim_set_keymap('n', 'bs', ':BufferLinePick<CR>', opts)

-- Close a buffer
nvim_set_keymap('n', 'bc', ':bdelete<CR>', opts)
