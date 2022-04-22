-- https://github.com/neovim/nvim-lspconfig

-- vscode-html-languageserver only provides completions when snippet support is enabled
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
    capabilities = capabilities,
}
