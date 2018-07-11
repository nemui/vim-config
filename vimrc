filetype on
syntax on
colorscheme Tomorrow-Night
set colorcolumn=90
set number
set hidden
set history=100
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
set showmatch
:nmap <C-N><C-N> :set invnumber<CR>

let g:ale_linters = {
\   'javascript': ['standard'],
\}

autocmd bufwritepost *.js silent !standard --fix %
set autoread
