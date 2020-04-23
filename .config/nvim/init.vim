let mapleader = " "

call plug#begin('~/.vim/plugged')

" core
Plug 'christoomey/vim-tmux-navigator'
Plug 'jelera/vim-javascript-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xolox/vim-misc' " required for xolox plugins
Plug 'xolox/vim-notes'
Plug 'xolox/vim-session'

" review if these are necessary
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'leafgarland/typescript-vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-sensible'
Plug 'dkprice/vim-easygrep'

" new
Plug 'brooth/far.vim'

" disabled
"Plug 'goldfeld/vim-seek'
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'machkann-vim-sandwich'

call plug#end()

source ~/.config/nvim/coc_config.vim

source ~/.config/nvim/set-options.vim
source ~/.config/nvim/plugin-settings.vim
source ~/.config/nvim/colors.vim
source ~/.config/nvim/functions.vim

source ~/.config/nvim/remappings.vim
