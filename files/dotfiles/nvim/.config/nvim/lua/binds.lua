local binds = {
    -- directory exploration
    {'n', '<leader>ne', ':tabnew<CR>:Explore<CR>'},
    {'n', '<leader>se', ':Sexplore<CR>'},
    {'n', '<leader>ve', ':Vexplore<CR>'},

    -- theme control
    {'n', '<leader>[', ':set background=light<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>'},
    {'n', '<leader>]', ':set background=dark<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>'},

    -- window movement
    {'n', '<leader>j', '<C-W>j'},
    {'n', '<leader>k', '<C-W>k'},
    {'n', '<leader>l', '<C-W>l'},
    {'n', '<leader>h', '<C-W>h'},

    -- window arrangement
    {'n', '<leader>J', '<C-W>J'},
    {'n', '<leader>K', '<C-W>K'},
    {'n', '<leader>L', '<C-W>L'},
    {'n', '<leader>H', '<C-W>H'},

    -- window focus
    {'n', '<leader>i', '<C-W>_<C-W>|'},
    {'n', '<leader>o', '<C-W>='},
    {'n', '<leader>q', ':q<CR>'},

    -- terminal control
    {'t', '<leader><Esc>', '<C-\\><C-n>'},
    {'n', '<leader>nt', ':tabnew<CR>:term<CR>'},
    {'n', '<leader>st', ':split<CR>:term<CR>'},
    {'n', '<leader>vt', ':vsplit<CR>:term<CR>'},

    -- git branch status
    {'n', '<leader>b', ':G<CR>'},

    -- command palatte
    {'n', '<Leader>P', ':Telescope commands<CR>'},

    -- search files
    {'n', '<Leader>/', ':Telescope live_grep<CR>'},

    -- correct formatting and lint
    -- {'n', '<leader>c', ':ALEFix<CR>'},

    -- navigation
    {'n', '<leader>p', ':Telescope find_files<CR>'},
    {'n', '<leader>t', ':Telescope git_files<CR>'},

    -- lsp
    {'n', '<silent>gd', '<cmd>lua vim.lsp.buf.definition()<CR>'},
    {'n', '<silent>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>'},
    {'n', '<silent>gr', '<cmd>lua vim.lsp.buf.references()<CR>'},
    {'n', '<silent>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>'},
    {'n', '<silent>K', '<cmd>lua vim.lsp.buf.hover()<CR>'},
    {'n', '<silent><C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>'},
    {'n', '<silent><C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>'},
    {'n', '<silent><C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>'},
}

vim.g.mapleader = " "

local opts = {noremap = true, silent = true}

for i = 1, #binds do
    local mode = binds[i][1]
    local lhs = binds[i][2]
    local rhs = binds[i][3]

    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end
