-- https://github.com/hrsh7th/nvim-compe

vim.o.completeopt = 'menuone,noselect'

require('compe').setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;
    source = {
        path = true;
        buffer = true;
        calc = true;
        nvim_lsp = true;
        nvim_lua = true;
        vsnip = true;
        ultisnips = true;
        luasnip = true;
    };
}

-- Mappings
local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true, expr = true}

nvim_set_keymap('i', '<C-Space>', 'compe#complete()', opts)
nvim_set_keymap('i', '<CR>', 'compe#confirm("<CR>")', opts)
nvim_set_keymap('i', '<C-e>', 'compe#close("<C-e>")', opts)
nvim_set_keymap('i', '<C-f>', 'compe#scroll({ "delta": +4 })', opts)
nvim_set_keymap('i', '<C-d>', 'compe#scroll({ "delta": -4 })', opts)
nvim_set_keymap('i', '<TAB>', 'pumvisible() ? "<C-n>" : "<TAB>"', opts)
nvim_set_keymap('i', '<S-TAB>', 'pumvisible() ? "<C-p>" : "<C-h>"', opts)
