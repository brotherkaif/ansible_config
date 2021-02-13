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

    -- code navigation
    {'n', '<leader>p', ':Files<CR>'},
    {'n', '<leader>t', ':GFiles<CR>'},
    {'n', '<silent>', '<leader>gd <Plug>(coc-definition)'},
    {'n', '<silent>', '<leader>gt <Plug>(coc-type-definition)'},
    {'n', '<silent>', '<leader>gi <Plug>(coc-implementation)'},
    {'n', '<silent>', '<leader>gr <Plug>(coc-references)'},


    -- lsp
    {'n', '<silent>gd', '<cmd>lua vim.lsp.buf.definition()<CR>'},
    {'n', '<silent>gh', '<cmd>lua vim.lsp.buf.hover()<CR>'},
    {'n', '<silent>gD', '<cmd>lua vim.lsp.buf.implementation()<CR>'},
    -- {'n', '<silent><c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>'},
    -- {'n', '<silent>1gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>'},
    {'n', '<silent>gr', '<cmd>lua vim.lsp.buf.references()<CR>'},
    -- {'n', '<silent>g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>'},
    -- {'n', '<silent>gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>'},
}

local opts = {noremap = true, silent = true}

vim.g.mapleader = " "

for i = 1, #binds do
    local mode = binds[i][1]
    local lhs = binds[i][2]
    local rhs = binds[i][3]

    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end
