vim.g.mapleader = " "

local opts = {noremap = true, silent = true}

-- directory exploration
vim.api.nvim_set_keymap('n', '<leader>ne', ':tabnew<CR>:Explore<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>se', ':Sexplore<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ve', ':Vexplore<CR>', opts)

-- window movement
vim.api.nvim_set_keymap('n', '<leader>j', '<C-W>j', opts)
vim.api.nvim_set_keymap('n', '<leader>k', '<C-W>k', opts)
vim.api.nvim_set_keymap('n', '<leader>l', '<C-W>l', opts)
vim.api.nvim_set_keymap('n', '<leader>h', '<C-W>h', opts)

-- window arrangement
vim.api.nvim_set_keymap('n', '<leader>J', '<C-W>J', opts)
vim.api.nvim_set_keymap('n', '<leader>K', '<C-W>K', opts)
vim.api.nvim_set_keymap('n', '<leader>L', '<C-W>L', opts)
vim.api.nvim_set_keymap('n', '<leader>H', '<C-W>H', opts)

-- window focus
vim.api.nvim_set_keymap('n', '<leader>i', '<C-W>_<C-W>|', opts)
vim.api.nvim_set_keymap('n', '<leader>o', '<C-W>=', opts)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opts)

-- terminal control
vim.api.nvim_set_keymap('t', '<leader><Esc>', '<C-\\><C-n>', opts)
vim.api.nvim_set_keymap('n', '<leader>nt', ':tabnew<CR>:term<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>st', ':split<CR>:term<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>vt', ':vsplit<CR>:term<CR>', opts)

-- git branch status
vim.api.nvim_set_keymap('n', '<leader>b', ':G<CR>', opts)

-- command palatte
vim.api.nvim_set_keymap('n', '<Leader>P', ':Commands<CR>', opts)

-- search files
vim.api.nvim_set_keymap('n', '<Leader>/', ':Ag<CR>', opts)

-- correct errors
vim.api.nvim_set_keymap('n', '<leader>c', ':CocCommand eslint.executeAutofix<CR>', opts)

-- code navigation
vim.api.nvim_set_keymap('n', '<leader>p', ':Files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>t', ':GFiles<CR>', opts)
vim.api.nvim_set_keymap('n', '<silent>', '<leader>gd <Plug>(coc-definition)', opts)
vim.api.nvim_set_keymap('n', '<silent>', '<leader>gt <Plug>(coc-type-definition)', opts)
vim.api.nvim_set_keymap('n', '<silent>', '<leader>gi <Plug>(coc-implementation)', opts)
vim.api.nvim_set_keymap('n', '<silent>', '<leader>gr <Plug>(coc-references)', opts)
