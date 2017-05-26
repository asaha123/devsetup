set nu
set showmatch
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set laststatus=2
set hlsearch
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au BufNewFile,BufRead *.py
    \ set tabstop=4 | 
    \ set softtabstop=4 | 
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'mv/mv-vim-puppet'
Plugin 'mileszs/ack.vim'
Plugin 'rhysd/vim-crystal'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'mhinz/vim-grepper'
Plugin 'chase/vim-ansible-yaml'



call vundle#end()            " required


let python_highlight_all=1
syntax on
filetype indent plugin on    " required

" Nerd tree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" key bindings
map <C-n> :NERDTreeToggle<CR>
imap jk <Esc>
" vv to generate new vertical split
nnoremap <silent> vv <C-w>v
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" For markdown
let vim_markdown_preview_use_xdg_open=1

set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

" color scheme
colorscheme zenburn

