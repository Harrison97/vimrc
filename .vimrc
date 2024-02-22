call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'xuyuanp/nerdtree-git-plugin' "git status' for nerdtree
    Plug 'itchyny/vim-cursorword' "underline the word in cursor
    Plug 'liuchengxu/vim-better-default'
    Plug 'haya14busa/incsearch.vim' "incremental search highlighting
    Plug 'ntpeters/vim-better-whitespace' "causes trailing on extra whitespace
    Plug 'ervandew/supertab' " AutoComplete
    Plug 'kien/ctrlp.vim' "Fuzzy file serach
    "Plug 'gabrielelana/vim-markdown'
    "Plug 'bfrg/vim-cpp-modern'
    Plug 'leafgarland/typescript-vim'
call plug#end()

runtime! plugin/default.vim " runs default.vim before .vimrc

nmap gx <Plug>(openbrowser-smart-search)

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Open NERDtree on ctl+n DELETE LATER
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusPorcelainVersion=1
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set tags=./tags,tags;$HOME
