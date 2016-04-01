set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Good looking bottom :)
Plugin 'bling/vim-airline'
" Rails :/
Plugin 'tpope/vim-rails'
Plugin 'garbas/vim-snipmate'
" Commenting and uncommenting stuff
Plugin 'tomtom/tcomment_vim'
" Beutiful solarized theme
Plugin 'altercation/vim-colors-solarized'
" Molokai theme
Plugin 'fatih/vim-go'


" Vim Ruby
Plugin 'vim-ruby/vim-ruby'
" Surround your code :)
Plugin 'tpope/vim-surround'
" Every one should have a pair (Autogenerate pairs for "{[( )
Plugin 'jiangmiao/auto-pairs'
" Tab completions
Plugin 'ervandew/supertab'
" CoffeeScript syntax
Plugin 'kchmck/vim-coffee-script'
" Fuzzu finder for vim (CTRL+P)
Plugin 'kien/ctrlp.vim'
" Ruby Tests
Plugin 'skalnik/vim-vroom'
" Easy motion for easy motion
Plugin 'Lokaltog/vim-easymotion'
" Running tests in tmux session
Plugin 'tpope/vim-dispatch'
" Gist pasting
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

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
