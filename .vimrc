syntax enable
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css, *.xml
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set expandtab |
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set number
let mapleader=","

set encoding=utf-8
" Enable folding
"set foldenable
"set foldmethod=marker
"set foldcolumn=4
"set foldlevel=0
"set foldlevel=99
" Enable folding with spacebar
noremap <space> za
filetype indent on
set autoindent
let python_highlight_all = 1

map <C-n> <ESC>:NERDTreeToggle<CR>
map <F2> <ESC>:lclose<CR>
map <F3> <ESC>:Errors<CR>
map <F5> <ESC>:tabp<CR>
map <F6> <ESC>:tabn<CR>

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Add plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'herrbischoff/cobalt2.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
" Install UltiSnips
Plugin 'SirVer/ultisnips'

" Install Odoo snippet
Plugin 'akretion/vim-odoo-snippets'
Plugin 'mechatroner/rainbow_csv'
call vundle#end()
filetype plugin indent on
filetype plugin on

" colors zenburn
colors cobalt2
let g:SimpylFold_fold_import = 1
highlight OverLength ctermbg=red ctermfg=white guibg=#592929

" ruler at 80 chars
" match OverLength /\%81v.\+/


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:virtualenv_directory='/odoo12/.venvs'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERD Comments
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

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
set termguicolors

if &term =~ '256color'
    set t_ut=
endif
