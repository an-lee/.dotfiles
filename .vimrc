syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

" Immediately add a closing quote or brace in insert mode.
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i

" Set up persistent undo across all files.
set undofile
if !isdirectory("$HOME/.vim/undodir")  
    call mkdir("$HOME/.vim/undodir", "p")
endif
set undodir="$HOME/.vim/undodir"

packloadall                " Load all plugins.
silent! helptags ALL       " Load help files for all plugins.

set number                 " Enable line number
set hls                    " Enable hightlight search

" Fast split navigation with <Ctrl> + hjkl
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" make Vim dynamically move you to the first match as soon as you type.
set incsearch

let g:plug_timeout = 300
" Manage plugins with vim-plug.
call plug#begin()

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'plasticboy/vim-markdown'

call plug#end()

" use Ag via ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
