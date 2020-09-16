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
Plug 'gabrielelana/vim-markdown'
Plug 'previm/previm'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

syntax on
colorscheme gruvbox
set background=dark

let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:previm_open_cmd = 'open -a "Google Chrome"'
let g:vim_markdown_conceal = 0
