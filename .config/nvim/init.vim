" not compatible with Vi
set nocompatible

" load compatible syntax
syntax enable

" show line numbers relative to the selected one while showing the actual number value for the selected line
set number
set relativenumber

" set tabs to 2 spaces
set expandtab
set tabstop=2
set shiftwidth=2
set scrolloff=4

" set rule colum as 120 chars
set colorcolumn=120

" don't consider _ as a part of a word
set iskeyword-=_

" turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" will search for runtime files
set runtimepath+=/usr/local/opt/fzf

runtime ./plug.vim
runtime ./macos.vim
runtime ./maps.vim

runtime ./colors/NeoSolarized.vim
colorscheme NeoSolarized
