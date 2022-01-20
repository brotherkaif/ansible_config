-- TODO: look at requiring in setup from here instead
local wk = require('which-key')
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

-- TODO: top level cursor movement keybinds from binds.lua
-- TODO: top level telescope pickers keybinds from binds.lua
-- TODO: top level quickfix keybinds from binds.lua

wk.register({
  i = {
    name = 'interface',
    l = { ':set background=light<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>', 'set theme to light'},
    d = { ':set background=dark<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>', 'set theme to dark'},
    n = { ':set relativenumber!<CR>', 'toggle relative line numbers'},
    c = { ':set list!<CR>', 'toggle display unprintable chars'},
  },

  w = {
    name = 'windows',
    m = { '<C-W>_<C-W>|', 'maximise window' },
    e = { '<C-W>=', 'equalise windows' },
    q = { ':q<CR>', 'quit window' },
    o = { '<C-W>o', 'close all other windows' },
    h = { '<C-W>H', 'move window to left' },
    j = { '<C-W>J', 'move window to bottom' },
    k = { '<C-W>K', 'move window to top' },
    l = { '<C-W>L', 'move window to right' },
    z = { ':ZenMode<CR>', 'toggle zen mode' },
  },

  t = {
    name = 'tabs',
    t = { ':tabnew<CR>', 'open new tab' },
    c = { ':tabnew<CR>:term<CR>:startinsert<CR>', 'open new tab with terminal console' },
    e = { ':tabnew<CR>:Ex<CR>', 'open new tab with explorer' },
    g = { ':tabnew<CR>:term lazygit<CR>:startinsert<CR>', 'open new tab with git client' },
  },

  c = {
    name = 'console',
    c = { ':term<CR>:startinsert<CR>', 'open terminal console in current window' },
    t = { ':tabnew<CR>:term<CR>:startinsert<CR>', 'open terminal console in new tab' },
    -- TODO: fix this
    -- {'t', '<Esc><Esc>', '<C-\\><C-n>'}, -- normal mode within terminal window
  },

  e = {
    name = 'explorer',
    e = { ':Explore<CR>', 'open explorer in current window' },
    t = { ':Texplore<CR>', 'open explorer in new tab' },
  },

  g = {
    name = 'git',
    g = { ':term lazygit<CR>:startinsert<CR>', 'open git client in current window' },
    h = { ':!gh', 'open a github cli statement' },
    c = { ':!git', 'open a git cli statement' },
    t = { ':tabnew<CR>:term lazygit<CR>:startinsert<CR>', 'open git client in new tab' },
    f = { '<cmd>lua require("telescope.builtin").git_files()<CR>', 'browse git files' },
    b = { '<cmd>lua require("telescope.builtin").git_branches()<CR>', 'browse git branches' },
    s = { '<cmd>lua require("telescope.builtin").git_status()<CR>', 'browse git status' },
  },

  f = {
    name = 'file',
    f = { '<cmd>lua require("telescope.builtin").find_files()<CR>', 'Find File' },
    g = { '<cmd>lua require("telescope.builtin").git_files()<CR>', 'Find Git File' },
    b = { '<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>', 'File Browser (project directory)' },
    d = { '<cmd>lua require("telescope").extensions.file_browser.file_browser({ cwd = require("telescope.utils").buffer_dir() })<CR>', 'File Browser (current directory)' },
    -- TODO: fix this
    -- / = { '<cmd>lua require("plugins.telescope-config").live_grep()<CR>', 'Grep Files' },
  },

  b = {
    name = 'buffer',
    w = { ':w<CR>', 'write buffer' },
    r = { ':e<CR>', 'reload buffer' },
    f = { ':Format<CR>', 'runs formatter/linter on current buffer' },
    s = { ':setlocal spell! spelllang=en_gb,en_us<CR>', 'toggle spellcheck on current buffer' },
    -- TODO: fix this
    -- / = { '<cmd>lua require("plugins.telescope-config").current_buffer_fuzzy_find()<CR>', 'open fuzzy find within current buffer' },
  },

-- TODO: migrate fuzzy keybinds from binds.lua

  s = {
    name = 'language server',
    s = { '<cmd>lua vim.diagnostic.open_float()<CR>', 'show diagnostics' },
    -- TODO: update telescope diagnostic lists (potentially requires new bind namespace?)
    -- s = { '<cmd>lua require("telescope.builtin").lsp_document_diagnostics()<CR>', 'show diagnostics' },
    d = { '<cmd>lua require("telescope.builtin").lsp_definitions()<CR>', 'go to definition' },
    t = { '<cmd>lua require("telescope.builtin").lsp_type_definitions()<CR>', 'go to type definition' },
    i = { '<cmd>lua require("telescope.builtin").lsp_implementations()<CR>', 'go to implementation' },
    r = { '<cmd>lua require("telescope.builtin").lsp_references()<CR>', 'show references' },
    a = { '<cmd>lua require("telescope.builtin").lsp_code_actions()<CR>', 'show code actions' },
    h = { '<cmd>lua vim.lsp.buf.hover()<CR>', 'cursor hover' },
    n = { '<cmd>lua vim.lsp.buf.rename()<CR>', 'rename symbol' },
    j = { '<cmd>lua vim.diagnostic.goto_next()<CR>', 'go to next diagnostic' },
    k = { '<cmd>lua vim.diagnostic.goto_prev()<CR>', 'go to previous diagnostic' },
  },
}, { prefix = '<leader>' })
