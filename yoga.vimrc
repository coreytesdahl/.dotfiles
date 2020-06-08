"************** Start of vundle *****************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Bracey plugin that I noticed Professor James Moen had used to generate
" homework
Plugin 'turbio/bracey.vim'

" simpylfold plugin for folding code segments such as classes definitions
" functions etc.
"Plugin 'tmhedberg/simpylfold'

" fastFold plugin for folding code segments fast by only using auto fold
" mode. Improves performance when in insert mode using simplyfold
Plugin 'Konfekt/FastFold'

" vim-anyfold
Plugin 'pseewald/vim-anyfold'

" All of your Plugins must be added before the following line
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
"************** End of vundle *****************

set fileencodings=utf-8
set expandtab

autocmd FileType html setlocal shiftwidth=2 tabstop=2

autocmd FileType py setlocal shiftwidth=2 tabstop=2

autocmd FileType clj setlocal shiftwidth=2

autocmd FileType make setlocal noexpandtab

set tabstop=4

set shiftwidth=4

set cursorline

" remap tab movement left and right
nnoremap H gT
nnoremap L gt
nnoremap <A-O> zo
nnoremap <A-C> zc



"************** Start of programming paste bindings *****************


