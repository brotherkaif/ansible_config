local lspconfig = require('lspconfig')

-- language: JavaScript/TypeScript
-- requirements: 'typescript', 'typescript-language-server'
-- command: npm install -g typescript typescript-language-server
lspconfig.tsserver.setup{on_attach=require'completion'.on_attach}

-- language: YAML
-- requirements: 'yaml-language-server'
-- command: npm install -g yaml-language-server
lspconfig.yamlls.setup{on_attach=require'completion'.on_attach}

-- message styling
-- errors: red
vim.cmd('hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red')
-- warnings: yellow
vim.cmd('hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow')
-- info + hints: white
vim.cmd('hi LspDiagnosticsVirtualTextInformation guifg=White ctermfg=White')
vim.cmd('hi LspDiagnosticsVirtualTextHint guifg=White ctermfg=White')
-- Underline the offending code
vim.cmd('hi LspDiagnosticsUnderlineError guifg=NONE ctermfg=NONE cterm=underline gui=underline')
vim.cmd('hi LspDiagnosticsUnderlineWarning guifg=NONE ctermfg=NONE cterm=underline gui=underline')
vim.cmd('hi LspDiagnosticsUnderlineInformation guifg=NONE ctermfg=NONE cterm=underline gui=underline')
vim.cmd('hi LspDiagnosticsUnderlineHint guifg=NONE ctermfg=NONE cterm=underline gui=underline')

-- message options
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
 vim.lsp.diagnostic.on_publish_diagnostics, {
   -- enable underline, use default values
   underline = true,
   -- enable virtual text only on Warning or above, override spacing to 2
   virtual_text = {
     spacing = 2,
     severity_limit = "Warning",
   },
 }
)
