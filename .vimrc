" ================
" Prescott's vimrc
" ================

set encoding=utf-8
scriptencoding utf-8

call pathogen#infect()
call pathogen#helptags()

call plug#begin('~/.vim/plugged')
Plug 'OmniSharp/omnisharp-vim'
Plug 'w0rp/ale'
call plug#end()

syntax on
syntax enable
colorscheme Iosvkem
" colorscheme distinguished

filetype on
filetype plugin indent on
" filetype indent plugin on

" Use the stdio OmniSharp-roslyn server
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_timeout = 5
set completeopt=longest,menuone,preview
set previewheight=5
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_highlight_types = 0

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Files, backups and undo
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set runtimepath^=~/.vim/bundle/ctrlp.vim " ctrl-p
set bg=dark                 " tell vim using a dark background
set updatetime=100
set history=1000            " Save 1,000 items in history
set ruler                   " Show the line and column number of the cursor position
set showcmd                 " Display the incomplete commands in the bottom of your screen
set wildmenu                " Display completion matches on your status line
set scrolloff=5             " Show a few lines of context around the cursor
set hlsearch                " Highlight search matches
set incsearch               " Enable incremental searching
set ignorecase              " Ignore case when searching
set smartcase               " Override 'ignorecase' if search pattern has upper characters
set smarttab
set number                  " Turn on line numbering
set nowrap                  " Turn off line wrapping
set colorcolumn=80          " column width 80 char default
set expandtab               " Make sure that every file uses real tabs, not spaces
set shiftround              " Round indent to multiple of 'shiftwidth'
set smartindent             " Do smart indenting when starting a new line
set autoindent              " copy indent from current line, over to the new line
set t_Co=256                " Explicityly tell vim that the terminal supoprts 256 colors
set list                    " Show invisible characters
set listchars=tab:>\ ,eol:¬,trail:⋅,extends:>,precedes:<
let g:netrw_dirhistmax = 0  " turn off history
let g:netrw_banner = 0
let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

autocmd FileType cshtml EmmetInstall

let g:airline_theme='dark' " airline theme
let g:pymode_python = 'python3' " pymode settings

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

" =========================
" Key Mapping Modifications
" =========================

" Disable arrow key cursor motion
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" normal-mode settings:
map <space> :
nnoremap <C-n> :nohl <return>
noremap cp yap<S-}>p

" change window size
noremap <C-up> <C-w>+
noremap <C-down> <C-w>-
noremap <C-left> <C-w><
noremap <C-right> <C-w>>

" switch between windows
no <C-j> <C-w>j| "switching to below window 
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window 
no <C-h> <C-w>h| "switching to left window


" insert-mode settings:
inoremap jk <esc>

" leader commands
noremap <leader>a =ip
map <leader>` :NERDTreeToggle<CR>

" set spellcheck with commands
noremap <silent> <leader>s :set spell!<cr>
" ]s  Next spelling mistake
" [s  Previous spelling mistake
" z=  Give suggestions (prepent 1, use first suggestions automatically)
" zg  Add mispelled to spellfile
" zug Remove word from spellfile
