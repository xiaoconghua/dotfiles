set nocompatible
let g:mapleader=" "

call plug#begin('~/.config/nvim/plugged')

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"" ale verifies your files for syntax errors.
Plug 'w0rp/ale'

"" vim-sleuth auto-detects if files use space or tabs, and how many spaces each file should have.
Plug 'tpope/vim-sleuth'

"" vim-polyglot adds automatic language support for every language that Vim can support through 3rd party plugins.
Plug 'sheerun/vim-polyglot'

"" vim-airline (better status bar)
Plug 'vim-airline/vim-airline'

"" vim-airline themes (status bar themes)
Plug 'vim-airline/vim-airline-themes'

"" vim-evanesco (nicer search)
Plug 'pgdouyon/vim-evanesco'

"" vim-nerdtree for file management
Plug 'scrooloose/nerdtree'
let NERDTreeMinimaUI=1
let NERDTreeDirArrows=1

"" vim easymotion
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>'

"" fugitive Git wrapper
Plug 'tpope/vim-fugitive'

"" vim-surround (easily delete, change, and add surroundings in pairs)
Plug 'tpope/vim-surround'

"" vim-repeat (improved . command)
Plug 'tpope/vim-repeat'

"" vim-commentary (Comment stuff out...)
Plug 'tpope/vim-commentary'

""" YouCompleteMe (code completion)
""Plug 'Valloric/YouCompleteMe'
"""Youcompleteme fix
""let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"" vim-clang-format
Plug 'rhysd/vim-clang-format'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

let g:python_host_prog="/usr/bin/python"
let g:python3_host_prog="/usr/bin/python3"
let g:ycm_path_to_python_interpreter = "/usr/bin/python3"
let g:ycm_max_diagnostics_to_display = 0

:set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
:autocmd OptionSet guicursor noautocmd set guicursor=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""
"" vim-clang-format ""
""""""""""""""""""""""

  "" Set base style
  let g:clang_format#code_style = "google"

  "" Set extra style options
  let g:clang_format#style_options = {"ColumnLimit" : 120,
                                    \ "DerivePointerAlignment" : "false",
                                    \ "PointerAlignment" : "Left"}

  "" Manually select specific clang-format version
  let g:clang_format#command = "clang-format-7"

"" Turn on clang-format on buffer write by default
let g:clang_format#auto_format = 1

"" Toggle clang-format formatting on buffer write
nmap <Leader>C :ClangFormatAutoToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""
"" Ultisnips ""
"""""""""""""""

"" Set python snippit style to Google
let g:ultisnips_python_style = "google"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""
"" General ""
"""""""""""""

"" How many lines of history to remember
set history=500

"" Set to auto read when a file is changed externally
set autoread

"" Set the mapleader. If "mapleader" is not set or empty, a backslash is used instead.
let mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""
"" User interface ""
""""""""""""""""""""
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"" Set scrolloff (how many lines above and below cursor should be visible)
set so=10

"" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

"" Always show current position
set ruler

"" Set command bar height
set cmdheight=2

"" Hide a buffer when it is abandoned
set hid

"" Enable backspace to delete over line breaks
set backspace=eol,start,indent

"" Ignore case when searching
set ignorecase

"" Set match upper case if upper else match lower and upper
set smartcase

"" Don't redraw while running macros
set lazyredraw

"" Make regex characters have the same meaning as in grep
set magic

"" Show matching brackets (and blink timing in tenths of a second)
set showmatch
set mat=2

"" Add a small margin to the left
set foldcolumn=1

"" Toggle line numbers
nmap <C-l><C-l> :set invnumber<CR>

"" Add space to listchars
set listchars+=space:•

"" Toggle list
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""
"" Colors and fonts ""
""""""""""""""""""""""

"" Set color scheme
let g:solarized_use16 = 0
set background=dark
silent! colorscheme solarized8

"" Set vim-airline theme
let g:airline_theme='badwolf'

"" Set standard encoding to UTF-8
set encoding=utf8

"" Set standard file type to Unix
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""
"" Spell check ""
"""""""""""""""""

"" Set ss to toggle spell checking
map <leader>ss :setlocal spell!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""
"" Text, tab and indent ""
""""""""""""""""""""""""""

"" Spaces instead of tabs (sorry richard)
set expandtab

"" Enable smarttab (and settings)
set smarttab
set shiftwidth=2
set tabstop=2

"" Enable auto indenting
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""
"" Visual mode ""
"""""""""""""""""

"" Search for currently selected text using * or # (when in visual mode)
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move right a split
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split


"""""""""""""""""""""""
"" Files and backups ""
"""""""""""""""""""""""

"" Turn backups off (use git instead...)
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""
"" Misc ""
""""""""""

"" Delete trailing white space on save
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
