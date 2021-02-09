local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- indentation behaviour
bo.expandtab = false
bo.smartindent = true
bo.preserveindent = true
bo.softtabstop = 0
bo.tabstop = 2
o.shiftwidth = 2
wo.foldmethod = 'indent'
o.foldlevel = 1
