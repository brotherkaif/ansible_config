"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"============================
" VIM CUSTOMISATION
" disable annoying stuff
set noerrorbells

" disable backup and swp files
set noswapfile
set nobackup

" line numbers
set number
set relativenumber

" display
syntax enable
set background=dark
set nowrap

" force cursor underline
set cursorline

" searching
set incsearch
" set hlsearch
set showmatch

" indentation behaviour
set noexpandtab
set smartindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set foldmethod=indent

" KEYBINDINGS 
let mapleader = "\<Space>"
" explore
nnoremap <leader>ne :tabnew<CR>:Explore<CR>
nnoremap <leader>se :Sexplore<CR>
nnoremap <leader>ve :Vexplore<CR>
" terminal
nnoremap <leader>nt :tabnew<CR>:term<CR><C-W>N:wincmd j<CR>:q<CR><insert>
nnoremap <leader>st :term<CR>
nnoremap <leader>vt :vert term<CR>
" git branch status
nnoremap <leader>b :G<CR>
" command palatte
nnoremap <Leader>P :Commands<CR>
" search files
nnoremap <Leader>/ :Ag<CR>
" correct errors
nnoremap <leader>c :CocCommand eslint.executeAutofix<CR>
" navigation
nnoremap <leader>p :Files<CR>
nnoremap <leader>t :GFiles<CR>
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
" non-flush paste
vnoremap <leader>p "_dP
