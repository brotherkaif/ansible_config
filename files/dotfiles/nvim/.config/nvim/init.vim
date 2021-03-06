" _       _ _         _
"(_)_ __ (_) |___   _(_)_ __ ___
"| | '_ \| | __\ \ / / | '_ ` _ \
"| | | | | | |_ \ V /| | | | | | |
"|_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"=================================
" VIM-PLUG AUTO-LOAD
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUG-IN CONFIG
" completetion-nvim
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c

" ale
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
let g:ale_fixers = {
	\    'javascript': ['eslint'],
	\    'typescriptreact': ['eslint'],
	\    'typescript': ['eslint'],
	\    'json': ['eslint'],
	\}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_set_highlights = 0
let g:ale_disable_lsp = 1 
let g:ale_completion_enabled = 0

" PLUG-IN LIST
call plug#begin()
    " interface
    Plug 'tpope/vim-vinegar'
    Plug 'millermedeiros/vim-statline'

    " helpers
    Plug 'rhlobo/vim-super-retab'
    Plug 'tpope/vim-commentary'

    " tools
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'

    " linting
    Plug 'dense-analysis/ale'
call plug#end()

lua require 'init'
