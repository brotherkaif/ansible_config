local binds = {
    -- directory exploration
    {'n', '<leader>ne', ':tabnew<CR>:Explore<CR>'},
    {'n', '<leader>se', ':Sexplore<CR>'},
    {'n', '<leader>ve', ':Vexplore<CR>'},

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
    {'n', '<Leader>P', ':Commands<CR>'},

    -- search files
    {'n', '<Leader>/', ':Ag<CR>'},

    -- correct errors
    {'n', '<leader>c', ':CocCommand eslint.executeAutofix<CR>'},

    -- navigation
    {'n', '<leader>p', ':Files<CR>'},
    {'n', '<leader>t', ':GFiles<CR>'},

    -- lsp
    {'n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>'},
    {'n', '<leader>gh', ':lua vim.lsp.buf.hover()<CR>'},
    {'n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>'},
    -- {'n', '<leader>gm', ':lua vim.lsp.buf.implementation()<CR>'},
    -- {'n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>'},
    -- {'n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>'},
    -- {'n', '<leader>gy', '<cmd>lua vim.lsp.buf.document_symbol()<CR>'},
    -- {'n', '<silent>gu', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>'},
}

local opts = {noremap = true, silent = true}

vim.g.mapleader = " "

for i = 1, #binds do
    local mode = binds[i][1]
    local lhs = binds[i][2]
    local rhs = binds[i][3]

    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end
