-- https://github.com/neovim/nvim-lspconfig

local common = require'lsp/common'

require'lspconfig'.jdtls.setup {
    on_attach = function(client, bufnr)
        ------------------------------------------------------------------------------
        -- nvim-lspconfig

        common.on_attach(client, bufnr)

        ------------------------------------------------------------------------------
    end
}
