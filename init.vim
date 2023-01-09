call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'chiendo97/intellij.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'ayu-theme/ayu-vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'Ardakilic/vim-tomorrow-night-theme'
Plug 'https://github.com/rhysd/vim-clang-format'
call plug#end()

"-----------------------------------------"
let mapleader=" "
"let g:lightline = {'colorscheme': 'gruvbox'}
let g:lightline = {'colorscheme': 'nightfly'}
"colorscheme gruvbox
colorscheme intellij
let g:clang_format#code_style="google"
let g:clang_format#auto_format_on_insert_leave=0
let g:clang_format#auto_format=1
let g:clang_format#style_options={"AllowShortIfStatementsOnASingleLine" : "true"}
let g:clang_format#detect_style_file=1
set termguicolors

syntax on
filetype plugin indent on
set splitright
set splitbelow
set number
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set laststatus=2
set t_Co=256
" Automatically change the local current directory to the open file's
" autocmd BufEnter * silent! lcd %:p:h
"
"highlight statement (bold, italic, none)"

"hi Statement gui=none 

"hi Comment gui=none

"hi Type gui=none

"--------------------- Key Maps ----------------"

nnoremap <C-p> :Files<CR>
nnoremap <F29> :w <CR>:split<CR>:resize 13<CR>:execute 'terminal gcc -Wall % -o %< && ./%<'<CR>:startinsert<CR>
tnoremap <Esc> <C-\><C-n>
tmap <S-Up> <Esc><S-Up>
noremap <C-_> :norm ^i// <CR>
inoremap {<CR> {<CR>}<Esc><S-O>
noremap <S-Down> <C-E>
noremap <S-Up> <C-Y>
vnoremap <tab> <S->><S-V>
vnoremap <S-tab> <S-<><S-V>
nnoremap <leader>` :sp<CR>:term<CR>:resize 13<CR>:startinsert<CR>
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap n nzz  
nnoremap p pzz
"---------------- Navigation "
nnoremap <leader>n :tabnew <CR>
nnoremap <leader><Down> <C-W><Down>
nnoremap <leader><Up> <C-W><Up>
nnoremap <leader><Right> <C-W><Right>
nnoremap <leader><Left> <C-W><Left>
"nnoremap <leader><Left> :tabprevious<CR>
"nnoremap <leader><Right> :tabnext<CR>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 1gt
nnoremap <leader>7 2gt
nnoremap <leader>8 3gt
nnoremap <leader>9 4gt
nnoremap <leader>0 10gt
