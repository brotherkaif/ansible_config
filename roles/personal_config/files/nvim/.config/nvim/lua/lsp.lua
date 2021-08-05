local lspconfig = require('lspconfig')
local util = require ('lspconfig').util

-- language: JavaScript/TypeScript
-- requirements: 'npm', 'typescript', 'typescript-language-server'
-- command: npm install -g typescript typescript-language-server
lspconfig.tsserver.setup{}

lspconfig.diagnosticls.setup{
    filetypes = {"javascript", "typescript"},
    root_dir = function(fname)
	return util.root_pattern("tsconfig.json")(fname) or
	util.root_pattern(".eslintrc.js")(fname);
    end,
    init_options = {
	linters = {
	    eslint = {
		command = "./node_modules/.bin/eslint",
		rootPatterns = {".eslintrc.js", ".git"},
	  	debounce = 100,
	  	args = {
		    "--stdin",
	  	    "--stdin-filename",
	  	    "%filepath",
	  	    "--format",
	  	    "json"
	  	},
		sourceName = "eslint",
		parseJson = {
		    errorsRoot = "[0].messages",
	    	    line = "line",
	    	    column = "column",
	    	    endLine = "endLine",
	    	    endColumn = "endColumn",
	    	    message = "[eslint] ${message} [${ruleId}]",
	    	    security = "severity"
		},
		securities = {
		    [2] = "error",
	    	    [1] = "warning"
		}
	    },
	},
	filetypes = {
	    javascript = "eslint",
	    typescript = "eslint"
	}
    }
}

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

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- lsp.lua...OK!')
