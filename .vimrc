
" line numbers
set number

" show cursor position
set ruler

" show incomplete commands
set showcmd

" show a menu when using tab completion
set wildmenu

" scroll options
set scrolloff=5

" search options
set hlsearch

" set backup

" linewrap on word not char
set lbr

" auto indent
set ai
set tabstop=4
set shiftwidth=4

" tell vim using a dark background
set bg=dark

" color scheme
syntax on
colorscheme Iosvkem

inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O
