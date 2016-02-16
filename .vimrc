set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" source insight style for vim
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/vim-scripts/taglist.vim.git'
Plugin 'https://github.com/wesleyche/Trinity.git'
Plugin 'https://github.com/wesleyche/SrcExpl.git'

"vim snipmate
Plugin 'https://github.com/msanders/snipmate.vim.git'

"Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
"Plugin 'https://github.com/tomtom/tlib_vim.git'
"Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nu
set tabstop=4
set mouse=nv
syntax on

map <f7> :Tlist<CR>

" Open and close all the three plugins on the same time
nmap <F8> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
"nmap <F9> :SrcExplToggle<CR>
nmap <F9> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <F10> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <F11> :TrinityToggleNERDTree<CR>
"nmap <F11> :NERDTreeToggle<CR>
