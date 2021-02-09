local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- disable annoying stuff
o.errorbells = false

-- disable backup and swp files
bo.swapfile = false
o.backup = false

-- line numbers
vim.cmd('set number')
wo.relativenumber = true
o.scrolloff = 8

-- display
wo.wrap = false
wo.signcolumn = 'yes'
vim.cmd('highlight clear SignColumn')
-- vim.cmd('colorscheme nord')

-- searching
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

-- interface
o.showmatch = true
wo.cursorline = true

-- indentation behaviour
bo.expandtab = false
bo.smartindent = true
bo.preserveindent = true
bo.softtabstop = 0
bo.tabstop = 4
o.shiftwidth = 4
wo.foldmethod = 'indent'
o.foldlevel = 1
