  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                           Prescott's vimrc												    "
  "                                                                       "
  "                                                                       "
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call pathogen#infect()
call pathogen#helptags()

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
call plug#end()

filetype off
filetype plugin indent on
syntax on
syntax enable
colorscheme Iosvkem

set bg=dark " tell vim using a dark background
set updatetime=100
set history=1000 " Save 1,000 items in history
set ruler  " Show the line and column number of the cursor position
set showcmd " Display the incomplete commands in the bottom of your screen.  
set wildmenu " Display completion matches on your status line
set scrolloff=5 " Show a few lines of context around the cursor
set hlsearch " Highlight search matches
set incsearch " Enable incremental searching
set ignorecase " Ignore case when searching
set smartcase " Override 'ignorecase' if search pattern has upper characters.
set smarttab
set number " Turn on line numbering 
set nowrap " Turn off line wrapping
set colorcolumn=80 " column width 80 char default
set expandtab " Make sure that every file uses real tabs, not spaces
set shiftround " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent " copy indent from current line, over to the new line

"set backup " Turn on file backups

autocmd FileType cshtml EmmetInstall

let g:netrw_dirhistmax = 0  " turn off history
let g:airline_theme='base16' " airline theme

" emmet settings
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Make a tab equal to x spaces
let s:tabwidth=2
exec 'set tabstop='     .s:tabwidth
exec 'set shiftwidth='  .s:tabwidth
exec 'set softtabstop=' .s:tabwidth


" ========================
" autocorrect basic typos:
" ========================

iabbrev waht what
iabbrev tehn then
iabbrev taht that
iabbrev adn and
iabbrev ot to
iabbrev aling align
iabbrev accross across
iabbrev hte the

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                       Key Mapping Modifications												"
  "                                                                       "
  "                                                                       "
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =================
" general settings: 
" =================
" Disable arrow key cursor motion
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" =====================
" normal-mode settings: 
" =====================
map <space> :
nnoremap <C-n> :nohl <return>
noremap cp yap<S-}>p
noremap <C-up> <C-w>+
noremap <C-down> <C-w>-
noremap <C-left> <C-w><
noremap <C-right> <C-w>>

" =====================
" insert-mode settings: 
" =====================
inoremap jk <esc>

" ======================
" leader commands
" ======================
noremap <leader>a =ip

noremap <silent> <leader>s :set spell!<cr>
" ]s  Next spelling mistake
" [s  Previous spelling mistake
" z=  Give suggestions (prepent 1, use first suggestions automatically)
" zg  Add mispelled to spellfile
" zug Remove word from spellfile



"""""""""""""""""""""""""""""
