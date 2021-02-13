local lspconfig = require('lspconfig')

-- JavaScript/TypeScript
-- currently requires typescript and typescript-language-server to be installed
-- npm install -g typescript typescript-language-server
lspconfig.tsserver.setup{}
