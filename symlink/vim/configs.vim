set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.dotfiles/_vendor/vundle
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
all vundle#begin('~/.vim_runtime/plugins')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" enabel transparency on vim
Plugin 'https://github.com/miyakogi/seiya.vim.git'

"  All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
