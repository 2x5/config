
map f :n
map g :e#
"map > :set number
"map < :set nonumber
map T :AirlineTheme 

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

color slate
" color railscast

syntax on
set ignorecase
set smartcase
filetype plugin indent on
set tabstop=4
set expandtab         " tabs are spaces
set shiftwidth=4
set cursorline        " highlight current line
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
set showmatch         " highlight matching [{()}]
set splitbelow
set splitright
set relativenumber
set number

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'gioele/vim-autoswap'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-peekaboo'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'moll/vim-node'
Plug 'numkil/ag.nvim'
Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'ervandew/supertab'
call plug#end()

set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swp//

" let g:deoplete#enable_at_startup = 1


" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](node_modules)',
  \ }

" ale
let g:ale_fixers = {
  \   'javascript': [
  \       'eslint',
  \   ],
  \}

let g:airline#extensions#ale#enabled = 1

" air-line
let g:airline_powerline_fonts = 1
set laststatus=2
let g:bufferline_echo = 0

"let g:airline_theme='term'
let g:airline_theme='molokai'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


set signcolumn=yes
set updatetime=250
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed= '▎'

let mapleader = ','
let g:ackprg = 'ag --nogroup --nocolor --column'
:nmap <leader>, :Ag 
:nmap <leader>. :NERDTree<CR>

let g:gutentags_ctags_exclude=['node_modules','*min.js']
