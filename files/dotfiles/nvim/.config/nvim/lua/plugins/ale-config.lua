vim.api.nvim_set_var('ale_linter_aliases', {typescriptreact = 'typescript'})
vim.api.nvim_set_var('ale_fixers', {
    javascript = {'eslint'},
    typescriptreact = {'eslint'},
    typescript = {'eslint'},
    json = {'eslint'},
})
vim.api.nvim_set_var('ale_javascript_prettier_use_local_config', 1)
vim.api.nvim_set_var('ale_set_highlights', 0)
vim.api.nvim_set_var('ale_disable_lsp', 1 )
vim.api.nvim_set_var('ale_completion_enabled', 0)

print('- plugins/ale-config.lua loaded!')
