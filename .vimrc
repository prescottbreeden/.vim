""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Prescott's vimrc                               "
"                                                                              "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =================
" general settings:
" =================

set history=1000 " Save 1,000 items in history
set ruler  " Show the line and column number of the cursor position
set showcmd " Display the incomplete commands in the bottom right-hand side of your screen.  
set wildmenu " Display completion matches on your status line
set scrolloff=5 " Show a few lines of context around the cursor
set hlsearch " Highlight search matches
set incsearch " Enable incremental searching
set ignorecase " Ignore case when searching
set smartcase " Override the 'ignorecase' option if the search pattern contains upper case characters.
set number " Turn on line numbering 
""set backup " Turn on file backups

" =========================
" Don't line wrap mid-word:
" =========================

set lbr
set breakindent

" =================
" indents and tabs:
" =================

set noexpandtab " Make sure that every file uses real tabs, not spaces
set shiftround " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent " copy indent from current line, over ot the new line

" Enable smart tabs
set smarttab

" Make a tab equal to 4 spaces
let s:tabwidth=4
exec 'set tabstop='     .s:tabwidth
exec 'set shiftwidth='  .s:tabwidth
exec 'set softtabstop=' .s:tabwidth

" ================
" colors / themes:
" ================

set bg=dark " tell vim using a dark background

" color scheme
syntax on
colorscheme Iosvkem

" ========================
" autocorrect basic typos:
" ========================

iabbrev waht what
iabbrev tehn then
iabbrev taht that
iabbrev adn and

" ========
" plugins:
" ========
execute pathogen#infect()
filetype plugin indent on

" let g:used_javascript_libs = 'underscore,backbone,angularjs,angularui,jquery'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Key Mapping Modifications						"
"                                                                       "
"                                                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =================
" general settings: 
" =================


" Don't use arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" =====================
" normal-mode settings: 
" =====================

" insert carriage return
" nmap <S-Enter> O<ESC>
" nmap <CR> o<ESC>
nmap <C-ENTER> i<CR><ESC>kA<ESC>

" insert space
nmap <C-l> i<SPACE><ESC>

" disable current search highlights
nnoremap <C-n> :nohl <return>

" =====================
" insert-mode settings: 
" =====================

" alternate command to return to normal mode
inoremap jk <esc>

" Automatically add closing ( { [ ' " `
inoremap {<cr> {<cr>}<ESC>kA<CR>
inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap '' ''<ESC>i
inoremap "" ""<ESC>i

" create code block indent when hitting return after opening bracket
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

" ======================
" command-mode settings: 
" ======================

" Spacebar enters command-mode
map <space> :








"""""""""""""""""""""""""""""
