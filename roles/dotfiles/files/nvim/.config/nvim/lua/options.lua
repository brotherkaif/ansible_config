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
vim.cmd('highlight VertSplit cterm=NONE gui=NONE')
vim.cmd('highlight Pmenu ctermbg=White guibg=White ctermfg=Black guifg=Black')
vim.cmd('highlight PmenuSel ctermbg=Black guibg=Black ctermfg=White guifg=White')
vim.cmd('highlight PmenuSbar ctermbg=White guibg=White')
vim.cmd('highlight PmenuThumb ctermbg=Black guibg=Black')
vim.cmd('highlight PmenuThumb ctermbg=Black guibg=Black')
vim.cmd('highlight CursorLine cterm=NONE ctermbg=Black guibg=Black ctermfg=White guifg=White')

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
vim.cmd('highlight LspDiagnosticsVirtualTextError ctermfg=Red guifg=Red ')
vim.cmd('highlight LspDiagnosticsVirtualTextWarning ctermfg=Yellow guifg=Yellow')
vim.cmd('highlight LspDiagnosticsVirtualTextHint ctermfg=Blue guifg=Blue')
vim.cmd('highlight LspDiagnosticsVirtualTextInformation ctermfg=DarkGrey guifg=DarkGrey')
vim.cmd('highlight LspDiagnosticsUnderlineError ctermfg=none guifg=none cterm=underline gui=underline')
vim.cmd('highlight LspDiagnosticsUnderlineWarning ctermfg=none guifg=none cterm=underline gui=underline')
vim.cmd('highlight LspDiagnosticsUnderlineInformation ctermfg=none guifg=none cterm=underline gui=underline')
vim.cmd('highlight LspDiagnosticsUnderlineHint ctermfg=none guifg=none cterm=underline gui=underline')

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- options.lua...OK!')
