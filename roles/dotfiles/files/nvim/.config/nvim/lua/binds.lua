-- <leader> = space
vim.g.mapleader = " "

local opts = {noremap = true, silent = true}

-- # GLOBAL BINDS
vim.api.nvim_set_keymap('n', ']q', ':cn<CR>', opts) -- go to next item in list
vim.api.nvim_set_keymap('n', '[q', ':cp<CR>', opts) -- go to previous item in list

-- # LEADER BINDS
-- COMMAND PALLETTE = `p`
vim.api.nvim_set_keymap('n', '<Leader>p', '<cmd>lua require("telescope.builtin").commands()<CR>', opts) -- opens the command pallette

-- CURSOR MOVEMENT = `h` + `j` + `k` + `l`
vim.api.nvim_set_keymap('n', '<leader>h', ':FocusSplitLeft<CR>', opts) -- move cursor to left window
vim.api.nvim_set_keymap('n', '<leader>j', ':FocusSplitDown<CR>', opts) -- move cursor to bottom window
vim.api.nvim_set_keymap('n', '<leader>k', ':FocusSplitUp<CR>', opts) -- move cursor to top window
vim.api.nvim_set_keymap('n', '<leader>l', ':FocusSplitRight<CR>', opts) -- move cursor to right window

-- # GROUPED BINDS
-- BUFFERS = `b`
vim.api.nvim_set_keymap('n', '<leader>bw', ':w<CR>', opts) -- write buffer
vim.api.nvim_set_keymap('n', '<leader>br', ':e<CR>', opts) -- reload buffer
vim.api.nvim_set_keymap('n', '<leader>bf', ':Format<CR>', opts) -- runs formatter/linter on current buffer
vim.api.nvim_set_keymap('n', '<Leader>bs', ':setlocal spell! spelllang=en_gb,en_us<CR>', opts) -- toggle spellcheck on current buffer
vim.api.nvim_set_keymap('n', '<Leader>b/', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>', opts) -- open fuzzy find within current buffer

-- EXPLORER = `e`
vim.api.nvim_set_keymap('n', '<leader>ee', ':Explore<CR>', opts) -- open explorer in current window
vim.api.nvim_set_keymap('n', '<leader>et', ':Texplore<CR>', opts) -- open explorer in new tab

-- FILES = `f`
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts) -- open file finder
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").git_files()<CR>', opts) -- open git file finder
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>', opts) -- open file browser on current working directory
vim.api.nvim_set_keymap('n', '<leader>fd', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ cwd = require("telescope.utils").buffer_dir() })<CR>', opts) -- open file browser on buffer directory
vim.api.nvim_set_keymap('n', '<Leader>f/', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts) -- open fuzzy find accross current working directory

-- FUZZY SEARCHING = `/`
vim.api.nvim_set_keymap('n', '<Leader>/f', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts) -- open fuzzy find accross current working directory
vim.api.nvim_set_keymap('n', '<Leader>/b', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>', opts) -- open fuzzy find within current buffer

-- GIT = `g`
vim.api.nvim_set_keymap('n', '<leader>gg', ':term lazygit<CR>:startinsert<CR>', opts) -- open git client in current window
vim.api.nvim_set_keymap('n', '<leader>gh', ':!gh', opts) -- open a github cli statement
vim.api.nvim_set_keymap('n', '<leader>gc', ':!git', opts) -- open a git cli statement
vim.api.nvim_set_keymap('n', '<leader>gt', ':tabnew<CR>:term lazygit<CR>:startinsert<CR>', opts) -- open git client in new tab
vim.api.nvim_set_keymap('n', '<leader>gf', '<cmd>lua require("telescope.builtin").git_files()<CR>', opts) -- browse git files
vim.api.nvim_set_keymap('n', '<leader>gb', '<cmd>lua require("telescope.builtin").git_branches()<CR>', opts) -- browse git branches
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>lua require("telescope.builtin").git_status()<CR>', opts) -- browse git status

-- INTERFACE = `i`
vim.api.nvim_set_keymap('n', '<leader>il', ':set background=light<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>', opts) -- set theme to light
vim.api.nvim_set_keymap('n', '<leader>id', ':set background=dark<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>', opts) -- set theme to dark
vim.api.nvim_set_keymap('n', '<leader>in', ':set relativenumber!<CR>', opts) -- toggle relative line numbers
vim.api.nvim_set_keymap('n', '<leader>ic', ':set list!<CR>', opts) -- toggle display unprintable chars

-- LANGUAGE SERVER PROTOCOL = `s`
-- vim.api.nvim_set_keymap('n', '<leader>ss', '<cmd>lua require("telescope.builtin").lsp_document_diagnostics()<CR>', opts) -- show diagnostics
-- vim.api.nvim_set_keymap('n', '<Leader>sd', '<cmd>lua require("telescope.builtin").lsp_definitions()<CR>', opts) -- go to definition
-- vim.api.nvim_set_keymap('n', '<Leader>st', '<cmd>lua require("telescope.builtin").lsp_type_definitions()<CR>', opts) -- go to type definition
-- vim.api.nvim_set_keymap('n', '<Leader>si', '<cmd>lua require("telescope.builtin").lsp_implementations()<CR>', opts) -- go to implementation
-- vim.api.nvim_set_keymap('n', '<Leader>sr', '<cmd>lua require("telescope.builtin").lsp_references()<CR>', opts) -- show references
-- vim.api.nvim_set_keymap('n', '<leader>sa', '<cmd>lua require("telescope.builtin").lsp_code_actions()<CR>', opts) -- show code actions
-- vim.api.nvim_set_keymap('n', '<Leader>sh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts) -- cursor hover
-- vim.api.nvim_set_keymap('n', '<leader>sn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts) -- rename symbol
-- vim.api.nvim_set_keymap('n', '<leader>sj', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts) -- go to next diagnostic
-- vim.api.nvim_set_keymap('n', '<leader>sk', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts) -- go to previous diagnostic

-- TABS = `t`
vim.api.nvim_set_keymap('n', '<leader>tt', ':tabnew<CR>', opts) -- open new tab
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabnew<CR>:term<CR>:startinsert<CR>', opts) -- open new tab with terminal console
vim.api.nvim_set_keymap('n', '<leader>te', ':tabnew<CR>:Ex<CR>', opts) -- open new tab with explorer
vim.api.nvim_set_keymap('n', '<leader>tg', ':tabnew<CR>:term lazygit<CR>:startinsert<CR>', opts) -- open new tab with git client

-- TERMINAL CONSOLE = `c`
vim.api.nvim_set_keymap('n', '<leader>cc', ':term<CR>:startinsert<CR>', opts) -- open terminal console in current window
vim.api.nvim_set_keymap('n', '<leader>ct', ':tabnew<CR>:term<CR>:startinsert<CR>', opts) -- open terminal console in new tab
vim.api.nvim_set_keymap('t', '<Esc><Esc>', '<C-\\><C-n>', opts) -- normal mode within terminal window

-- WINDOWS = `w`
vim.api.nvim_set_keymap('n', '<leader>wm', '<C-W>_<C-W>|', opts) -- maximise window
vim.api.nvim_set_keymap('n', '<leader>we', '<C-W>=', opts) -- equalise windows
vim.api.nvim_set_keymap('n', '<leader>wq', ':q<CR>', opts) -- quit window
vim.api.nvim_set_keymap('n', '<leader>wo', '<C-W>o', opts) -- close all other windows
vim.api.nvim_set_keymap('n', '<leader>wh', '<C-W>H', opts) -- move window to left
vim.api.nvim_set_keymap('n', '<leader>wj', '<C-W>J', opts) -- move window to bottom
vim.api.nvim_set_keymap('n', '<leader>wk', '<C-W>K', opts) -- move window to top
vim.api.nvim_set_keymap('n', '<leader>wl', '<C-W>L', opts) -- move window to right

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- binds.lua...OK!')
