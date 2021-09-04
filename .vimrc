set nocompatible
filetype off
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" " Add plugins here
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'jnurmine/Zenburn'
" Plugin 'scrooloose/nerdtree'
" Plugin 'herrbischoff/cobalt2.vim'
" Plugin 'lifepillar/vim-solarized8'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'kien/ctrlp.vim'
" " Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plugin 'vim-airline/vim-airline'
" Plugin 'jmcantrell/vim-virtualenv'
" Plugin 'mattn/emmet-vim'
" Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'hiqsol/pgsql.vim'
" Plugin 'vim-scripts/dbext.vim'
" " Install UltiSnips
" Plugin 'SirVer/ultisnips'
" Plugin 'vim-python/python-syntax'
"
" " Install Odoo snippet
" Plugin 'akretion/vim-odoo-snippets'
" Plugin 'mechatroner/rainbow_csv'
" Plugin 'mileszs/ack.vim'
" Plugin 'mhinz/vim-startify'
" Plugin 'bkad/CamelCaseMotion'
" Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'taiansu/nerdtree-ag'
"
" " Helper text object
" Plugin 'kana/vim-textobj-user'
" Plugin 'lucapette/vim-textobj-underscore'
" call vundle#end()

call plug#begin('~/.vim/plugged')

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'jnurmine/Zenburn'
Plug 'scrooloose/nerdtree'
Plug 'herrbischoff/cobalt2.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'vim-syntastic/syntastic'
" Plugin 'kien/ctrlp.vim'
" " Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'vim-airline/vim-airline'
Plug 'jmcantrell/vim-virtualenv'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
" Plugin 'hiqsol/pgsql.vim'
" Plugin 'vim-scripts/dbext.vim'
" " Install UltiSnips
Plug 'SirVer/ultisnips'
" Plugin 'vim-python/python-syntax'
"
" " Install Odoo snippet
Plug 'marcelomora/vim-odoo-snippets'
Plug 'mechatroner/rainbow_csv'
Plug 'mileszs/ack.vim'
Plug 'mhinz/vim-startify'
Plug 'bkad/CamelCaseMotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'taiansu/nerdtree-ag'
"
" Helper text object
Plug 'kana/vim-textobj-user'
Plug 'lucapette/vim-textobj-underscore'
call plug#end()

filetype plugin indent on
filetype plugin on
syntax enable
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
" au BufNewFile,BufRead *.js, *.html, *.css, *.xml
"     \ set tabstop=2
"     \ set softtabstop=2
"     \ set shiftwidth=2
"     \ set expandtab |
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
set number
set expandtab
set fileformat=unix
let mapleader=","

set encoding=utf-8
noremap <space> za
filetype indent on
set autoindent
let python_highlight_all = 1

map <C-n> <ESC>:NERDTreeToggle<CR>
map <F2> <ESC>:lclose<CR>
map <F3> <ESC>:Errors<CR>
map <F6> <ESC>:tabp<CR>
map <F7> <ESC>:tabn<CR>


" set Vim-specific sequences for RGB colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
" colorscheme solarized8
" colors zenburn
colors cobalt2
let g:SimpylFold_fold_import = 1
highlight OverLength ctermbg=red ctermfg=white guibg=#592929

" ruler at 80 chars
" match OverLength /\%81v.\+/


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:virtualenv_directory='/home/marcelo/.venvs'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive',
                            \ 'active_filetypes': ['xml'],
                            \ 'passive_filetypes': ['html', 'javascript'] }

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
let g:sql_type_default = 'pgsql'

set termguicolors

if &term =~ '256color'
    set t_ut=
endif

set t_Co=256
set laststatus=2
" set rtp+=/usr/share/powerline/bindings/vim/
let g:Powerline_symbols = "fancy"

set splitbelow

let g:camelcasemotion_key = '<leader>'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

