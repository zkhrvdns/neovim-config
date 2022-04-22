-- https://github.com/b3nj5m1n/kommentary

-- Defualt mappings:
-- gcc - comment/uncomment current line in normal mode
-- gc - comment/uncomment current line in visual mode
-- gcip - comment/uncomment a paragraph
-- gc4w - comment/uncomment current line
-- gc{motion} - comment/uncomment selection defined by a motion

local nvim_set_keymap = vim.api.nvim_set_keymap

nvim_set_keymap("n", "gcc", "<Plug>kommentary_line_default", {})
nvim_set_keymap("n", "gc", "<Plug>kommentary_motion_default", {})
nvim_set_keymap("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})
