local binds = {
    -- THEME CONTROL = `[` + `]`
    {'n', '<leader>[', ':set background=light<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>'}, -- set theme to light
    {'n', '<leader>]', ':set background=dark<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>'}, -- set theme to dark

    -- CURSOR MOVEMENT = `h` + `j` + `k` + `l`
    {'n', '<leader>h', '<C-W>h'}, -- move cursor to left window
    {'n', '<leader>j', '<C-W>j'}, -- move cursor to bottom window
    {'n', '<leader>k', '<C-W>k'}, -- move cursor to top window
    {'n', '<leader>l', '<C-W>l'}, -- move cursor to right window

    -- WINDOW CONTROL = `w`
    {'n', '<leader>wz', ':ZenMode<CR>'}, -- zen mode toggle
    {'n', '<leader>wq', ':q<CR>'}, -- quit window
    {'n', '<leader>wh', '<C-W>H'}, -- move window to left
    {'n', '<leader>wj', '<C-W>J'}, -- move window to bottom
    {'n', '<leader>wk', '<C-W>K'}, -- move window to top
    {'n', '<leader>wl', '<C-W>L'}, -- move window to right

    -- TERMINAL CONTROL = `t`
    {'n', '<leader>th', ':split<CR>:term<CR>'}, -- open horizontal terminal window
    {'n', '<leader>tv', ':vsplit<CR>:term<CR>'}, -- open vertical terminal window
    {'t', '<leader><Esc>', '<C-\\><C-n>'}, -- normal mode within terminal window

    -- FILES = `f`
    {'n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>'}, -- open file finder
    {'n', '<leader>fg', '<cmd>lua require("telescope.builtin").git_files()<CR>'}, -- open git file finder
    {'n', '<leader>fb', '<cmd>lua require("telescope.builtin").file_browser()<CR>'}, -- open file browser

    -- SEARCHING = `/`
    {'n', '<Leader>/f', '<cmd>lua require("plugins.telescope-config").live_grep()<CR>'}, -- open fuzzy find accross current working directory
    {'n', '<Leader>/b', '<cmd>lua require("plugins.telescope-config").current_buffer_fuzzy_find()<CR>'}, -- open fuzzy find within current buffer

    -- GIT CONTROL = `g`
    {'n', '<leader>gf', '<cmd>lua require("telescope.builtin").git_files(require("telescope.themes").get_ivy())<CR>'}, -- browse git files
    {'n', '<leader>gb', '<cmd>lua require("telescope.builtin").git_branches(require("telescope.themes").get_ivy())<CR>'}, -- browse git branches
    {'n', '<leader>gs', '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_ivy())<CR>'}, -- browse git status
    {'n', '<leader>gg', ':Git<CR>'}, -- open git commit manager

    -- TELESCOPE PICKERS = `p`
    {'n', '<Leader>p', '<cmd>lua require("telescope.builtin").builtin(require("telescope.themes").get_dropdown())<CR>'}, -- opens list of Telescope pickers

    -- CORRECT FILE WITH LINTER = `c`
    {'n', '<leader>c', ':ALEFix<CR>'}, -- runs linter on current buffer
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
