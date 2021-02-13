local lspconfig = require('lspconfig')

-- language: JavaScript/TypeScript
-- requirements: 'typescript', 'typescript-language-server'
-- command: npm install -g typescript typescript-language-server
lspconfig.tsserver.setup{on_attach=require'completion'.on_attach}

-- language: YAML
-- requirements: 'yaml-language-server'
-- command: npm install -g yaml-language-server
lspconfig.yamlls.setup{on_attach=require'completion'.on_attach}
