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
Plugin 'fatih/vim-go'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'uarun/vim-protobuf'
Plugin 'hashivim/vim-terraform'

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
"colorscheme zenburn
colorscheme molokai

" Golang specific
" Copied from https://hackernoon.com/my-neovim-setup-for-go-7f7b6e805876
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1

let g:go_fmt_command = "goimports"
" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

let g:go_auto_type_info = 1
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <F12> <Plug>(go-def)

if has('nvim')
    " Enable deoplete on startup
    let g:deoplete#enable_at_startup = 1
endif
" Disable deoplete when in multi cursor mode
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction
function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction
let g:go_snippet_engine = "neosnippet"

