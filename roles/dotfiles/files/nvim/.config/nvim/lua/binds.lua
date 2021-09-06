local binds = {
    -- INTERFACE = `i`
    {'n', '<leader>il', ':set background=light<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>'}, -- set theme to light
    {'n', '<leader>id', ':set background=dark<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>'}, -- set theme to dark

    -- CURSOR MOVEMENT = `h` + `j` + `k` + `l`
    {'n', '<leader>h', '<C-W>h'}, -- move cursor to left window
    {'n', '<leader>j', '<C-W>j'}, -- move cursor to bottom window
    {'n', '<leader>k', '<C-W>k'}, -- move cursor to top window
    {'n', '<leader>l', '<C-W>l'}, -- move cursor to right window

    -- WINDOWS = `w`
    {'n', '<leader>wm', '<C-W>_<C-W>|'}, -- maximise window
    {'n', '<leader>we', '<C-W>='}, -- equalise widows
    {'n', '<leader>wq', ':q<CR>'}, -- quit window
    {'n', '<leader>wo', '<C-W>o'}, -- close all other windows
    {'n', '<leader>wh', '<C-W>H'}, -- move window to left
    {'n', '<leader>wj', '<C-W>J'}, -- move window to bottom
    {'n', '<leader>wk', '<C-W>K'}, -- move window to top
    {'n', '<leader>wl', '<C-W>L'}, -- move window to right

    -- TERMINAL = `t`
    {'n', '<leader>tt', ':tabnew<CR>:term<CR>:startinsert<CR>'}, -- open tabbed terminal window
    {'n', '<leader>th', ':split<CR>:term<CR>:startinsert<CR>'}, -- open horizontal terminal window
    {'n', '<leader>tv', ':vsplit<CR>:term<CR>:startinsert<CR>'}, -- open vertical terminal window
    {'t', '<leader><Esc>', '<C-\\><C-n>'}, -- normal mode within terminal window

    -- EXPLORER = `e`
    {'n', '<leader>ee', ':Ex<CR>'}, -- open explorer
    {'n', '<leader>eh', ':Sex<CR>'}, -- open horizontal explorer
    {'n', '<leader>ev', ':Vex<CR>'}, -- open vertical explorer

    -- FILES = `f`
    {'n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>'}, -- open file finder
    {'n', '<leader>fg', '<cmd>lua require("telescope.builtin").git_files()<CR>'}, -- open git file finder
    {'n', '<leader>fb', '<cmd>lua require("telescope.builtin").file_browser()<CR>'}, -- open file browser
    {'n', '<Leader>f/', '<cmd>lua require("plugins.telescope-config").live_grep()<CR>'}, -- open fuzzy find accross current working directory

    -- BUFFERS = `b`
    {'n', '<leader>bw', ':w<CR>'}, -- write buffer
    {'n', '<leader>bf', ':Format<CR>'}, -- runs formatter/linter on current buffer
    {'n', '<Leader>bs', ':setlocal spell! spelllang=en_gb,en_us<CR>'}, -- toggle spellcheck on current buffer
    {'n', '<Leader>b/', '<cmd>lua require("plugins.telescope-config").current_buffer_fuzzy_find()<CR>'}, -- open fuzzy find within current buffer

    -- FUZZY SEARCHING = `/`
    {'n', '<Leader>/f', '<cmd>lua require("plugins.telescope-config").live_grep()<CR>'}, -- open fuzzy find accross current working directory
    {'n', '<Leader>/b', '<cmd>lua require("plugins.telescope-config").current_buffer_fuzzy_find()<CR>'}, -- open fuzzy find within current buffer

    -- GIT = `g`
    {'n', '<leader>gf', '<cmd>lua require("telescope.builtin").git_files(require("telescope.themes").get_ivy())<CR>'}, -- browse git files
    {'n', '<leader>gb', '<cmd>lua require("telescope.builtin").git_branches(require("telescope.themes").get_ivy())<CR>'}, -- browse git branches
    {'n', '<leader>gs', '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_ivy())<CR>'}, -- browse git status
    {'n', '<leader>gg', ':tabnew<CR>:term lazygit<CR>:startinsert<CR>'}, -- open tabbed git client
    {'n', '<leader>gh', ':split<CR>:term lazygit<CR>:startinsert<CR>'}, -- open horizontal git client
    {'n', '<leader>gv', ':vsplit<CR>:term lazygit<CR>:startinsert<CR>'}, -- open vertical git client

    -- TELESCOPE PICKERS = `p`
    {'n', '<Leader>p', '<cmd>lua require("telescope.builtin").builtin(require("telescope.themes").get_dropdown())<CR>'}, -- opens list of Telescope pickers

    -- LANGUAGE SERVER PROTOCOL = `s`
    {'n', '<Leader>sd', '<cmd>lua vim.lsp.buf.definition()<CR>'}, -- go to definition
    {'n', '<Leader>st', '<cmd>lua vim.lsp.buf.type_definition()<CR>'}, -- go to type definition
    {'n', '<Leader>si', '<cmd>lua vim.lsp.buf.implementation()<CR>'}, -- go to implementation
    {'n', '<Leader>sr', '<cmd>lua vim.lsp.buf.references()<CR>'}, -- show references
    {'n', '<leader>sa', '<cmd>lua vim.lsp.buf.code_action()<CR>'}, -- show code actions
    {'n', '<Leader>sh', '<cmd>lua vim.lsp.buf.hover()<CR>'}, -- cursor hover
    {'n', '<leader>sn', '<cmd>lua vim.lsp.buf.rename()<CR>'}, -- rename symbol
    {'n', '<leader>sj', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>'}, -- go to next diagnostic
    {'n', '<leader>sk', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>'}, -- go to previous diagnostic

    -- QUICKFIX LIST = `c`
    {'n', '<Leader>cj', ':cn<CR>'}, -- go to next item in list
    {'n', '<Leader>ck', ':cp<CR>'}, -- go to previous item in list
}

-- <leader> = space
vim.g.mapleader = " "

local opts = {noremap = true, silent = true}

for i = 1, #binds do
    local mode = binds[i][1]
    local lhs = binds[i][2]
    local rhs = binds[i][3]

    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- binds.lua...OK!')
