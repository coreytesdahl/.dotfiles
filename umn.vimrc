set expandtab

autocmd FileType py setlocal shiftwidth=2

autocmd FileType clj setlocal shiftwidth=2

autocmd FileType make setlocal noexpandtab

set tabstop=4

set shiftwidth=4

set number

set statusline+=%f

set laststatus=2

nnoremap H gT
nnoremap L gt

set cursorline

source ~/cscope_maps.vim
