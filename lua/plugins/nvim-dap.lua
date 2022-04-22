-- https://github.com/mfussenegger/nvim-dap

local dap = require'dap'

dap.adapters.node2 = {
    type = 'executable',
    command = 'node',
    args = {os.getenv('HOME') .. '/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
    {
        type = 'node2',
        request = 'launch',
        program = '${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        console = 'integratedTerminal',
    },
}

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})

local nvim_set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

nvim_set_keymap('n', '<F5>', ':lua require\'dap\'.continue()<CR>', opts)
nvim_set_keymap('n', '<F10>', ':lua require\'dap\'.step_over()<CR>', opts)
nvim_set_keymap('n', '<F11>', ':lua require\'dap\'.step_into()<CR>', opts)
nvim_set_keymap('n', '<F12>', ':lua require\'dap\'.step_out()<CR>', opts)
nvim_set_keymap('n', '<leader>b', ':lua require\'dap\'.toggle_breakpoint()<CR>', opts)
nvim_set_keymap('n', '<leader>B', ':lua require\'dap\'.set_breakpoint(vim.fn.input(\'Breakpoint condition: \'))<CR>', opts)
nvim_set_keymap('n', '<leader>lp', ':lua require\'dap\'.set_breakpoint(nil, nil, vim.fn.input(\'Log point message: \'))<CR>', opts)
nvim_set_keymap('n', '<leader>dr', ':lua require\'dap\'.repl.open()<CR>', opts)
nvim_set_keymap('n', '<leader>dl', ':lua require\'dap\'.run_last()<CR>', opts)
