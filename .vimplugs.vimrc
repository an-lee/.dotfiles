if &compatible
  set nocompatible
end

let g:has_async = v:version >= 800 || has('nvim')

call plug#begin('~/.vim/plugged')

" Define bundles via Github repos
Plug 'christoomey/vim-run-interactive'

" If fzf has already been installed via Homebrew, use the existing fzf
" Otherwise, install fzf. The `--all` flag makes fzf accessible outside of vim
if isdirectory("/usr/local/opt/fzf")
  Plug '/usr/local/opt/fzf'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif

" Language
Plug 'leshill/vim-json'
Plug 'fatih/vim-go'
Plug 'vim-ruby/vim-ruby'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'slim-template/vim-slim'

" Completion
Plug 'tpope/vim-endwise'

" Integration
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mileszs/ack.vim'
Plug 'janko-m/vim-test'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rhubarb'

" Code display
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nanotech/jellybeans.vim'

" Command
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/tComment'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'

if g:has_async
  Plug 'dense-analysis/ale'
endif

call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
