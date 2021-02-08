" _       _ _         _
"(_)_ __ (_) |___   _(_)_ __ ___
"| | '_ \| | __\ \ / / | '_ ` _ \
"| | | | | | |_ \ V /| | | | | | |
"|_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"=================================
lua require 'init'

" VIM-PLUG AUTO-LOAD
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUG-IN CONFIG
" coc.nvim
let g:coc_global_extensions = ['coc-snippets', 'coc-git', 'coc-tsserver', 'coc-eslint', 'coc-json', 'coc-prettier']

" PLUG-IN LIST
call plug#begin()
	Plug 'tpope/vim-vinegar'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot'
	Plug 'rhlobo/vim-super-retab'
	Plug 'millermedeiros/vim-statline'
	" Plug 'arcticicestudio/nord-vim'
call plug#end()

" VIM CUSTOMISATION
" disable annoying stuff
set noerrorbells

" disable backup and swp files
set noswapfile
set nobackup

" line numbers
set number
set relativenumber
set scrolloff=8

" display
set nowrap
set signcolumn=yes
highlight clear SignColumn
" colorscheme nord

"searching
set ignorecase
set smartcase
set nohlsearch

" interface
set showmatch
set cursorline

" indentation behaviour
set noexpandtab
set smartindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2

" TEMP MACROS
" c = create const object from input
nnoremap <leader>mc 0f{v%lyggOconst INPUT = <esc>p%o<esc>
" p = set const input param string
nnoremap <leader>mp 0wveyf'asome <esc>pvb~0j
" u = make const input param upcase
nnoremap <leader>mu 0wve~j
" i = fix input param ref
nnoremap <leader>mi 0wywf:a INPUT.<esc>pvb~elc$,<esc>0j
" o = fix output param ref
nnoremap <leader>mo 0f{xxf}xxxF'xiINPUT.<esc>ebve~0j
" s = replace endpoint ref with string template literal
nnoremap <leader>ms 0f'r`f'r`F{;r$f}xbve~iINPUT.<esc>0
