local lspconfig = require('lspconfig')

-- language: JavaScript/TypeScript
-- requirements: 'npm', 'typescript', 'typescript-language-server'
-- command: npm install -g typescript typescript-language-server
lspconfig.tsserver.setup{}

-- language: YAML
-- requirements: 'npm', 'yaml-language-server'
-- command: npm install -g yaml-language-server
lspconfig.yamlls.setup{}

-- language: BASH
-- requirements: 'npm', 'bash-language-server'
-- command: npm i -g bash-language-server
lspconfig.bashls.setup{}

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

print('- lsp.lua...OK!')
