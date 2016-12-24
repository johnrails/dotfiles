set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'MarcWeber/vim-addon-mw-utils'
" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" Good looking bottom :)
Plug 'bling/vim-airline'
" Rails :/
Plug 'tpope/vim-rails'
Plug 'garbas/vim-snipmate'
" Commenting and uncommenting stuff
Plug 'tomtom/tcomment_vim'
" Beutiful solarized theme
Plug 'altercation/vim-colors-solarized'
" Molokai theme
Plug 'fatih/vim-go'


" Vim Ruby
Plug 'vim-ruby/vim-ruby'
" Surround your code :)
Plug 'tpope/vim-surround'
" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'
" Tab completions
Plug 'ervandew/supertab'
" CoffeeScript syntax
Plug 'kchmck/vim-coffee-script'
" Fuzzu finder for vim (CTRL+P)
Plug 'kien/ctrlp.vim'
" Ruby Tests
Plug 'skalnik/vim-vroom'
" Easy motion for easy motion
Plug 'Lokaltog/vim-easymotion'
" Running tests in tmux session
Plug 'tpope/vim-dispatch'
" Gist pasting
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
call plug#end()

" Ruby stuff: Thanks Ben :)
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
augroup myfiletypes
" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END
set runtimepath+=$GOROOT/misc/vim
syntax on                 " Enable syntax highlighting
" Syntax highlighting and theme
syntax enable
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" Lovely linenumbers
set nu

" This should provide autocomplete out of the box
set wildmode=longest,list,full
set wildmenu

" Buffer switching
map <leader>p :bp<CR> " \p previous buffer
map <leader>n :bn<CR> " \n next buffer
map <leader>d :bd<CR> " \d delete buffer

" Vroom does not use default keys to launch rspec
let g:vroom_map_keys = 0
" I prefer to use tmux in conjuction with dispatch plugin
let g:vroom_use_dispatch = 1
" Runs tests with zeus, if zeus is not active, switches back to bundle exec
let g:vroom_use_zeus = 1

"	 \c to tunn specs under the cursor
map <Leader>c :call vroom#RunTestFile()<CR>
" \s to tunn specs under the line
map <Leader>s :call vroom#RunNearestTest()<CR>
map <leader>t :A<CR> " \t to jump to test file

" Airlinebar config
let g:airline_theme='luna'
let g:airline_powerline_fonts=1
set laststatus=2

set cursorline
set tabstop=2
set number
set noswapfile

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
