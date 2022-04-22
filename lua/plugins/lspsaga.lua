-- https://github.com/glepnir/lspsaga.nvim

require('lspsaga').init_lsp_saga {
    use_saga_diagnostic_sign = true,
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    dianostic_header_icon = '   ',
    code_action_icon = ' ',
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true,
    },
    finder_definition_icon = '  ',
    finder_reference_icon = '  ',
    -- preview lines of lsp_finder and definition preview
    max_preview_lines = 50,
    finder_action_keys = {
        open = 'o',
        vsplit = 'v',
        split = 's',
        quit = 'q',
        scroll_down = '<C-f>',
        scroll_up = '<C-b>',
    },
    code_action_keys = {
        quit = 'q',
        exec = '<CR>',
    },
    rename_action_keys = {
        quit = '<C-c>',
        exec = '<CR>',
    },
    definition_preview_icon = '  ',
    -- 'single' 'double' 'round' 'plus'
    border_style = 'single',
    rename_prompt_prefix = '➤',
}

local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Async Lsp Finder
nvim_set_keymap('n', 'gh', ':Lspsaga lsp_finder<CR>', opts)

-- Code Action
nvim_set_keymap('n', '<leader>ca', ':Lspsaga code_action<CR>', opts)
nvim_set_keymap('v', '<leader>ca', ':<C-U>Lspsaga range_code_action<CR>', opts)

-- Hover Doc
nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', opts)

-- Smart Scroll
nvim_set_keymap('n', '<C-f>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>', opts)
nvim_set_keymap('n', '<C-b>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>', opts)

-- SignatureHelp
nvim_set_keymap('n', 'gs', ':Lspsaga signature_help<CR>', opts)

-- Jump Diagnostic and Show Diagnostics
nvim_set_keymap('n', '<leader>cd', ':Lspsaga show_line_diagnostics<CR>', opts)
nvim_set_keymap('n', '<leader>cc', '<cmd>lua require\'lspsaga.diagnostic\'.show_cursor_diagnostics()<CR>', opts)
nvim_set_keymap('n', '[d', ':Lspsaga diagnostic_jump_prev<CR>', opts)
nvim_set_keymap('n', ']d', ':Lspsaga diagnostic_jump_next<CR>', opts)
