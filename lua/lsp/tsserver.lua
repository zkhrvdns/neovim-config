-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils

local common = require'lsp/common'

-- Enable null-ls integration (optional)
require'null-ls'.setup {}

require'lspconfig'.tsserver.setup {
    on_attach = function(client, bufnr)
        ------------------------------------------------------------------------------
        -- nvim-lspconfig

        common.on_attach(client, bufnr)

        ------------------------------------------------------------------------------
        -- nvim-lsp-ts-utils

        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local opts = {noremap = true, silent = true}

        -- Disable tsserver formatting if you plan on formatting via null-ls
        client.resolved_capabilities.document_formatting = false

        local ts_utils = require'nvim-lsp-ts-utils'

        ts_utils.setup {
            debug = false,
            disable_commands = false,
            enable_import_on_completion = false,
            import_all_timeout = 5000,

            -- ESLint
            eslint_bin = 'eslint_d',
            eslint_config_fallback = nil,
            -- ESLint code actions
            eslint_enable_code_actions = true,
            eslint_enable_disable_comments = true,
            -- ESLint diagnostics
            eslint_enable_diagnostics = true,

            -- Formatting
            enable_formatting = false,
            formatter = 'prettier',
            formatter_config_fallback = nil,

            -- Parentheses completion
            complete_parens = false,
            signature_help_in_parens = false,

            -- Update imports on file move
            update_imports_on_move = true,
            require_confirmation_on_move = true,
            watch_dir = nil,
        }

        -- Required to fix code action ranges
        ts_utils.setup_client(client)

        buf_set_keymap('n', 'gi', ':TSLspImportAll<CR>', opts)
        buf_set_keymap('n', 'go', ':TSLspOrganize<CR>', opts)
        buf_set_keymap('n', 'qq', ':TSLspFixCurrent<CR>', opts)
        buf_set_keymap('n', 'gR', ':TSLspRenameFile<CR>', opts)

        ------------------------------------------------------------------------------
    end
}
