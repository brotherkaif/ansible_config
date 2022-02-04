local wk = require('which-key')

wk.register({
  -- # LEADER BINDS
  ['<leader>'] = {
    name = 'LEADER BINDS',
    -- COMMAND PALLETTE = `p`
    p = {'command pallette'},

    -- CURSOR MOVEMENT = `h` + `j` + `k` + `l`
    h = {'cursor left'},
    j = {'cursor down'},
    k = {'cursor up'},
    l = {'cursor right'},

    -- # GROUPED BINDS
    -- BUFFERS = `b`
    b = {
      name = 'BUFFERS',
      w = { 'write buffer' },
      r = { 'reload buffer' },
      f = { 'runs formatter/linter on current buffer' },
      s = { 'toggle spellcheck on current buffer' },
      ['/'] = { 'grep buffer' },
    },

    -- EXPLORER = `e`
    e = {
      name = 'EXPLORER',
      e = { 'open explorer in current window' },
      t = { 'open explorer in new tab' },
    },

    -- FILES = `f`
    f = {
      name = 'FILES',
      f = { 'find file' },
      g = { 'find git file' },
      b = { 'file browser (project directory)' },
      d = { 'file browser (current directory)' },
      ['/'] = { 'Grep Files' },
    },

    -- FUZZY SEARCHING = `/`
    ['/'] = {
      name = 'FUZZY SEARCHING',
      f = { 'grep files' },
      b = { 'grep buffer' },
    },

    -- GIT = `g`
    g = {
      name = 'GIT',
      g = { 'open git client in current window' },
      h = { 'open a github cli statement' },
      c = { 'open a git cli statement' },
      t = { 'open git client in new tab' },
      f = { 'browse git files' },
      b = { 'browse git branches' },
      s = { 'browse git status' },
    },

    -- INTERFACE = `i`
    i = {
      name = 'INTERFACE',
      l = { 'set theme to light'},
      d = { 'set theme to dark'},
      n = { 'toggle relative line numbers'},
      c = { 'toggle display unprintable chars'},
    },

    -- LANGUAGE SERVER PROTOCOL = `s`
    -- s = {
    --   name = 'language server',
    --   s = { 'show diagnostics' },
    --   -- TODO: update telescope diagnostic lists (potentially requires new bind namespace?)
    --   -- s = { '<cmd>lua require("telescope.builtin").lsp_document_diagnostics()<CR>', 'show diagnostics' },
    --   d = { 'go to definition' },
    --   t = { 'go to type definition' },
    --   i = { 'go to implementation' },
    --   r = { 'show references' },
    --   a = { 'show code actions' },
    --   h = { 'cursor hover' },
    --   n = { 'rename symbol' },
    --   j = { 'go to next diagnostic' },
    --   k = { 'go to previous diagnostic' },
    -- },

    -- TABS = `t`
    t = {
      name = 'TABS',
      t = { 'open new tab' },
      c = { 'open new tab with terminal console' },
      e = { 'open new tab with explorer' },
      g = { 'open new tab with git client' },
    },

    -- TERMINAL CONSOLE = `c`
    c = {
      name = 'CONSOLE',
      c = { 'open terminal console in current window' },
      t = { 'open terminal console in new tab' },
    },

    -- WINDOWS = `w`
    w = {
      name = 'WINDOWS',
      m = { 'maximise window' },
      e = { 'equalise windows' },
      q = { 'quit window' },
      o = { 'close all other windows' },
      h = { 'move window to left' },
      j = { 'move window to bottom' },
      k = { 'move window to top' },
      l = { 'move window to right' },
      z = { 'toggle zen mode' },
    },
  },
})

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- plugins/which-key-config.lua ...OK!')
