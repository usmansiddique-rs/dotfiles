" ============================================================================= 
" =================================================================== Settings
" =============================================================================

set encoding=UTF-8
set termguicolors   " enable true colors support
set nocompatible    " disable compatibility with vi 

filetype on         " enable type file detection.
filetype plugin on  " enable and load plugins for any file type.
filetype indent on  " load an indented file for any file type.
syntax on           " turn syntax highlighting on.
set showmatch       " highlight matching brace.

set number          " add absolute line numbers.
set cursorline      " highlight current line.
" set cursorcolumn    " highlight current cursor column.

set autoindent      " auto-indent new lines
set expandtab       " use spaces instead of tabs
set smartindent	    " enable smart-indent
set smarttab	    " enable smart-tabs
set softtabstop=4	" number of spaces per Tab
set shiftwidth=4    " set shift width to N spaces.
set tabstop=4       " set tab width to N columns.

set nobackup        " dont save backup files.
set scrolloff=10    " scroll line limit.
set nowrap          " disable wrapping lines.

set incsearch       " incrementally highlight matching characters while searching.
set ignorecase      " ignore capital letters during search.
set smartcase       " override the ignorecase option if searching for capital letters.
set showmatch       " show matching words during a search.
set hlsearch        " use highlighting when doing a search.

set showcmd         " show partial command you type in the last line of the screen.
set showmode        " show curent mode on the last line.
set history=10000   " set commands to save in history (default=20).

set wildmenu        " enable auto completion menu after pressing TAB.
set wildmode=list:longest   " Make wildmenu behave like similar to Bash completion.
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ============================================================================= 
" =================================================================== Plugins
" =============================================================================
" Using vim-plug as a plugin-manager: https://github.com/junegunn/vim-plug

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" ============================== List of plugins start

" Collection of language packs for Vim for syntax highlighting and indentation
Plug 'sheerun/vim-polyglot'
" Tree explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Delete/change/add parentheses/quotes/XML-tags/much more with ease
Plug 'tpope/vim-surround'
" Remove trailing whitespaces
Plug 'bronson/vim-trailing-whitespace'
" Indent lines
Plug 'Yggdroot/indentLine'

" Integrates Git and shows git diff in sign column
" Plug 'airblade/vim-gitgutter'
" Code commenting
" Plug 'tpope/vim-commentary'








" asynchronous lint engine
" Plug 'dense-analysis/ale'
" colorschemes
Plug 'ayu-theme/ayu-vim'

" ============================== List of plugins end

" try this as well: https://www.makeuseof.com/best-vim-plugins/
" colorschemes: https://vimcolorschemes.com/dark/top

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Set the color scheme
" colorscheme molokai
" colorscheme monokai
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" ============================================================================= 
" =================================================================== Keymappings
" =============================================================================

" mapping syntax: map_mode <what_you_type> <what_is_executed>
" nnoremap - map keys in normal mode
" inoremap - map keys in insert mode
" vnoremap - map keys in visual mode

let mapleader = " "     " map leader key to spacebar

inoremap jk <esc>       " map Esc key to jk

" Pane creation 
nnoremap <leader>sv <C-w>v      " split window vertically
nnoremap <leader>sh <C-w>s      " split window horizontally
nnoremap <leader>se <C-w>=      " make split window width equal 
nnoremap <leader>sx :close<CR>  " close current split window

" Navigate the split view using CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-up> <C-w>k
nnoremap <C-down> <C-w>j
nnoremap <C-left> <C-w>h
nnoremap <C-right> <C-w>l

" Resize split windows using CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <C-j> <c-w>-
noremap <C-k> <c-w>+
noremap <C-h> <c-w><
noremap <C-l> <c-w>>

" Tab creation
noremap <leader>to :tabnew<CR>      " open new tab
noremap <leader>tx :tabclose<CR>    " close current tab

" Navigate between tabs
noremap <leader>tn :tabn<CR>        " go to next tab 
noremap <leader>tp :tabp<CR>        " go to previous tab
noremap <leader>t0 :tabfirst<CR>    " go to first tab 
noremap <leader>t$ :tablast<CR>     " go to last tab

nnoremap <leader>e :NERDTreeToggle<CR>  " toggle nerdtree

" ============================================================================= 
" =================================================================== Vimscript
" =============================================================================

" This will enable code folding. Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif


" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" ============================================================================= 
" =================================================================== Status Line
" =============================================================================

" Status line theme
let g:airline_theme='powerlineish'
" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 0
" Separators can be configured independently for the tabline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" How file paths are displayed in each individual tab
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ============================================================================= 
" =================================================================== Indent Line
" =============================================================================

" IndentLine will overwrite 'conceal' color with grey by default
let g:indentLine_setColors = 1
" Use the same colors as another highlight group.
let g:indentLine_defaultGroup = 'SpecialKey'
" Indent char
let g:indentLine_char = '▏'