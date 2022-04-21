local cmd = vim.cmd
local g = vim.g
local wo = vim.wo
local bo = vim.bo
local o = vim.o

g.mapleader = ' '
wo.number = true
o.hidden = true
wo.wrap = false
wo.cursorline = true
o.mouse = 'a'
o.splitbelow = true
o.splitright = true
o.timeoutlen = 1000
o.updatetime = 100
o.cmdheight = 2

-- Tab
o.tabstop = 2
o.shiftwidth = 2
o.smarttab = true
o.expandtab = true
o.smartindent = true
