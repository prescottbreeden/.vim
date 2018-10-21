""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Prescott's vimrc                               "
"                                                                              "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =================
" general settings:
" =================

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
set number " Turn on line numbering 
set nowrap " Turn off line wrapping
"set backup " Turn on file backups
let g:netrw_dirhistmax = 0  " turn off history


" airline theme
let g:airline_theme='base16'

" =========================
" Don't line wrap mid-word:
" =========================
" set lbr
" set breakindent

" =================
" indents and tabs:
" =================

set colorcolumn=80 " column width 80 char default
set expandtab " Make sure that every file uses real tabs, not spaces
set shiftround " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent " copy indent from current line, over to the new line

" Enable smart tabs
set smarttab

" Make a tab equal to 4 spaces
let s:tabwidth=2
exec 'set tabstop='     .s:tabwidth
exec 'set shiftwidth='  .s:tabwidth
exec 'set softtabstop=' .s:tabwidth

autocmd FileType py setlocal shiftwidth=4 tabstop=4 softtabstop=4

" ================
" colors / themes:
" ================

set bg=dark " tell vim using a dark background

" ========================
" autocorrect basic typos:
" ========================

iabbrev waht what
iabbrev tehn then
iabbrev taht that
iabbrev adn and
iabbrev ot to
iabbrev aling align

" ========================
" plugins / pathogen load:
" ========================
filetype off

call pathogen#infect()
call pathogen#helptags()

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
call plug#end()

filetype plugin indent on

" emmet settings
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" color scheme
syntax on
syntax enable
colorscheme Iosvkem

" " Theme
" syntax enable
" " for vim 7
" set t_Co=256

" " for vim 8
" if (has("termguicolors"))
" 	set termguicolors
" endif

" colorscheme OceanicNext


let g:pymode_python = 'python3'
let g:pymode_lint_ignore = ["W605",] 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Key Mapping Modifications												"
"                                                                       "
"                                                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =================
" general settings: 
" =================

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" =====================
" normal-mode settings: 
" =====================
nmap io o<ESC>
nnoremap <C-n> :nohl <return>
nnoremap Q @q
vnoremap Q :norm @q<cr>
noremap cp yap<S-}>p

" =====================
" insert-mode settings: 
" =====================
inoremap jk <esc>

" ======================
" leader commands
" ======================
map <space> <leader>

" noremap <leader>w = :w
" noremap <leader>q = :q
noremap <leader>a =ip
noremap <silent> <leader>s :set spell!<cr>

" ]s  Next spelling mistake
" [s  Previous spelling mistake
" z=  Give suggestions (prepent 1, use first suggestions automatically)
" zg  Add mispelled to spellfile
" zug Remove word from spellfile



"""""""""""""""""""""""""""""
