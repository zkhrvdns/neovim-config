-- https://github.com/jiangmiao/auto-pairs

local g = vim.g

g.AutoPairs = {
    ['('] = ')',
    ['['] = ']',
    ['{'] = '}',
    ["'"] = "'",
    ['"'] = '"',
    ["`"] = "`",
    ['```'] = '```',
    ['"""'] = '"""',
    ["'''"] = "'''",
}
g.AutoPairsFlyMode = 1
g.AutoPairsMoveCharacter = "()[]{}\"'"
g.AutoPairsShortcutToggle = '<M-p>'
g.AutoPairsShortcutFastWrap = '<M-e>'
g.AutoPairsShortcutJump = '<M-n>'
g.AutoPairsShortcutBackInsert = '<M-b>'
g.AutoPairsMapBS = 1
g.AutoPairsMapCh = 1
g.AutoPairsMapCR = 1
g.AutoPairsMapSpace = 1
g.AutoPairsCenterLine = 1
g.AutoPairsMultilineClose = 1
