local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- disable annoying stuff
o.errorbells = false

-- disable backup and swp files
bo.swapfile = false
o.backup = false

-- line numbers
wo.number = true
wo.relativenumber = true
o.scrolloff = 8

-- display
wo.wrap = false
wo.signcolumn = 'yes'
vim.cmd('highlight clear SignColumn')
vim.cmd('highlight clear Folded')
vim.cmd('highlight VertSplit cterm=NONE')

-- searching
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

-- interface
o.showmatch = true
wo.cursorline = true

-- split behaviour
o.splitbelow = true
o.splitright = true

-- indentation behaviour
bo.expandtab = false
bo.smartindent = true
bo.preserveindent = true
bo.softtabstop = 0
bo.tabstop = 2
o.shiftwidth = 2
wo.foldmethod = 'indent'
o.foldlevel = 2

-- lsp
vim.cmd('hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red')
vim.cmd('hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow')
vim.cmd('hi LspDiagnosticsVirtualTextInformation guifg=White ctermfg=Blue')
vim.cmd('hi LspDiagnosticsVirtualTextHint guifg=White ctermfg=White')
vim.cmd('hi lspdiagnosticsunderlineerror guifg=none ctermfg=none cterm=underline gui=underline')
vim.cmd('hi lspdiagnosticsunderlinewarning guifg=none ctermfg=none cterm=underline gui=underline')
vim.cmd('hi lspdiagnosticsunderlineinformation guifg=none ctermfg=none cterm=underline gui=underline')
vim.cmd('hi lspdiagnosticsunderlinehint guifg=none ctermfg=none cterm=underline gui=underline')

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- options.lua...OK!')
