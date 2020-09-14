set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set nolist

set number
set cursorline
set cursorcolumn
set virtualedit=onemore

set visualbell t_vb=
set showmatch
set laststatus=2

set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

set autoindent
set smartindent

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'gabrielelana/vim-markdown'
Plug 'previm/previm'
Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:previm_open_cmd = 'open -a "Google Chrome"'
let g:vim_markdown_conceal = 0

