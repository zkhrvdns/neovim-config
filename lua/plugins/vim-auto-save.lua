-- https://github.com/907th/vim-auto-save

local g = vim.g

g.auto_save = 1                                      -- Enable AutoSave on Vim startup
g.auto_save_silent = 1                               -- Do not display the auto-save notification
g.auto_save_events = {'InsertLeave', 'TextChanged'}  -- Will save on every change in normal mode and every time you leave insert mode.
g.auto_save_write_all_buffers = 1                    -- Write all open buffers as if you would use :wa
