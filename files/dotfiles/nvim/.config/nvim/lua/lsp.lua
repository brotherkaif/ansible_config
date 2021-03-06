local lspconfig = require('lspconfig')

-- language: JavaScript/TypeScript
-- requirements: 'typescript', 'typescript-language-server'
-- command: npm install -g typescript typescript-language-server
lspconfig.tsserver.setup{on_attach=require'completion'.on_attach}

-- language: YAML
-- requirements: 'yaml-language-server'
-- command: npm install -g yaml-language-server
lspconfig.yamlls.setup{on_attach=require'completion'.on_attach}

-- options
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--  vim.lsp.diagnostic.on_publish_diagnostics, {
--    -- enable underline, use default values
--    underline = true,
--    -- enable virtual text only on Warning or above, override spacing to 2
--    virtual_text = {
--      spacing = 2,
--      severity_limit = "Warning",
--    },
--  }
-- )
