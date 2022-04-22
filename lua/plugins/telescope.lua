-- https://github.com/nvim-telescope/telescope.nvim
-- https://github.com/nvim-telescope/telescope-media-files.nvim
-- https://github.com/nvim-telescope/telescope-symbols.nvim

require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
        },
        prompt_prefix = '> ',
        selection_caret = '> ',
        entry_prefix = '  ',
        initial_mode = 'insert',
        selection_strategy = 'reset',
        sorting_strategy = 'descending',
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                mirror = false,
            },
            vertical = {
                mirror = false,
            },
        },
        file_sorter =  require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
        path_display = {
            'shorten',
        },
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
    },
    extensions = {
        media_files = {
            -- filetypes whitelist
            -- defaults to {'png', 'jpg', 'mp4', 'webm', 'pdf'}
            filetypes = {'png', 'webp', 'jpg', 'jpeg'},
            find_cmd = 'rg' -- find command (defaults to `fd`)
        },
    },
}

require('telescope').load_extension('media_files')
require('telescope').load_extension('fzf')

local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- File Pickers
nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
nvim_set_keymap('n', '<leader>fs', ':Telescope grep_string<CR>', opts)

-- Vim Pickers
nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
nvim_set_keymap('n', '<leader>fo', ':Telescope oldfiles<CR>', opts)
nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- Extensions Pickers
nvim_set_keymap('n', '<leader>fm', ':Telescope media_files<CR>', opts)
nvim_set_keymap('n', '<leader>fS', ':Telescope symbols<CR>', opts)
