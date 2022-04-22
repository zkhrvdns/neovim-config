-- https://github.com/mhartington/formatter.nvim

local prettier_formatter = function()
    return {
        exe = 'prettier',
        args = {
            '--stdin-filepath',
            vim.api.nvim_buf_get_name(0),
            '--single-quote',
        },
        stdin = true,
    }
end

require'formatter'.setup {
    logging = false,
    filetype = {
        javascript = {prettier_formatter},
        javascriptreact = {prettier_formatter},
        typescript = {prettier_formatter},
        typescriptreact = {prettier_formatter},
        html = {prettier_formatter},
        css = {prettier_formatter},
    },
}

local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

nvim_set_keymap('n', '<leader>f', '<cmd>Format<CR>', opts)
