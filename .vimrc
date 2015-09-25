call plug#begin('~/vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'fatih/molokai'
Plug 'tomtom/tcomment_vim'

Plug 'altercation/vim-colors-solarized'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NerdTreeToggle'}
Plug 'fatih/vim-go'
call plug#end()

set autoindent
let mapleader= ','
filetype plugin indent on
syntax on
augroup myfiles
	autocmd!
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

syntax enable
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme solarized

set nu

set wildmenu
" Vroom does not use default keys to launch rspec
 let g:vroom_map_keys = 0
" " I prefer to use tmux in conjuction with dispatch plugin
 let g:vroom_use_dispatch = 1
" " Runs tests with zeus, if zeus is not active, switches back to bundle exec
 let g:vroom_use_zeus = 1
"
" " \c to tunn specs under the cursor
 map <Leader>c :call vroom#RunTestFile()<CR>
" " \s to tunn specs under the line
 map <Leader>s :call vroom#RunNearestTest()<CR>
 map <leader>t :A<CR> " \t to jump to test file
 map <leader>_ :split " split the windown vertically
"
" " Airlinebar config
let g:airline_theme='luna'
let g:airline_powerline_fonts=1
set laststatus=2
" Get rid of arrow keys
 inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
"
" " Storing the backup files
if isdirectory($HOME . '/.vim/backup') == 0
 :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" " If you have .vim-swap in the current directory, it'll use that.
" " Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
 :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo
