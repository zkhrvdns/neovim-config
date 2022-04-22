-- https://github.com/neovim/nvim-lspconfig

local nvim_command = vim.api.nvim_command

nvim_command('sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsDefaultError')
nvim_command('sign define LspDiagnosticsSignWarning text=ﰣ texthl=LspDiagnosticsDefaultWarning')
nvim_command('sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsDefaultInformation')
nvim_command('sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsDefaultHint')

local common = {}

common.on_attach = function(client, bufnr)
    ------------------------------------------------------------------------------
    -- nvim-lspconfig

    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local opts = {noremap = true, silent = true}

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- <C-o> - Undo Go Definition
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

    ------------------------------------------------------------------------------
end

return common
