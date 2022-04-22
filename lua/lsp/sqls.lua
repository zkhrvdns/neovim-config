-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/lighttiger2505/sqls
-- https://github.com/nanotee/sqls.nvim

require'lspconfig'.sqls.setup {
    cmd = {'/home/bear/go/bin/sqls'},
    filetypes = {'sql'},
    on_attach = function(client)
        client.resolved_capabilities.execute_command = true
        require('sqls').setup {}
    end
}
