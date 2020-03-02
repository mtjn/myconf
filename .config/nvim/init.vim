let mapleader = " "

" plugins
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'dkprice/vim-easygrep'
Plug 'easymotion/vim-easymotion'
Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'severin-lemaignan/vim-minimap'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-session'
Plug 'Yggdroot/indentLine'

Plug 'vim-scripts/accelerated-jk'
"Plug 'goldfeld/vim-seek'
Plug 'justinmk/vim-sneak'
"Plug 'machkann-vim-sandwich'

call plug#end()

source ~/.config/nvim/coc_config.vim

"" issues
" accelerated-jk doesn't seem to be working
" test vim-surround

"" general
syntax on
set cindent
set cursorline
set list listchars=tab:>·,extends:>,precedes:<,space:·
set magic " Set magic on, for regex
set mat=2 " how many tenths of a second to blink
set noswapfile
set number relativenumber
set showmatch " show matching braces
set suffixesadd=.js,.ts,.jsx,.tsx
set switchbuf=useopen
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set updatetime=100

" folding
set foldlevel=2
set foldmethod=indent
set foldnestmax=10
set nofoldenable

" search
set hlsearch
set ignorecase " case insensitive searching
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros
set smartcase " case-sensitive if expresson contains a capital letter

" color
highlight MatchParen ctermbg=0 ctermfg=5
highlight NonText ctermfg=8


"" remappings
nnoremap <leader>w :w<CR>
nnoremap <leader>q @q
xnoremap <leader>q @q
cmap w!! w !sudo tee > /dev/null %

" quick-open config files
nnoremap <leader>ev :e! ~/.config/nvim/init.vim<CR>
nnoremap <leader>ecc :e! ~/.config/nvim/coc_config.vim<CR>
nnoremap <leader>ecs :e! ~/.config/nvim/coc-settings.json<CR>

" copy to clipboard
nnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y

" paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" buffer commands
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>; :b#<CR>
nmap <leader>x :bp <BAR> bd #<CR>
nmap <leader>n :enew<CR>

" move between window splits
noremap <silent> <C-h> <C-w>h<CR>
noremap <silent> <C-j> <C-w>j<CR>
noremap <silent> <C-k> <C-w>k<CR>
noremap <silent> <C-l> <C-w>l<CR>

" disable arrow keys in insert mode
imap <Up> <nop>
imap <Left> <nop>
imap <Right> <nop>
imap <Down> <nop>

" delete to blackhole register
nnoremap <leader>d "_d
xnoremap <leader>d "_d

" abbreviations
nnoremap <leader>cll yiwoconsole.log("<C-r>"", <C-r>");<Esc>^
nnoremap <leader>clp yiw}Oconsole.log("<C-r>"", <C-r>");<Esc>^
nnoremap <leader>ue ouseEffect(() => {<CR><CR>}, [])<Esc>ki<TAB>
nnoremap <leader>imr Oimport React from "react";<Esc>j^
nnoremap <leader>ims Oimport styled from "styled-components";<Esc>j^
nnoremap <leader>jsk O"<Esc>pa": "",<Esc>F"i


"" plugins
" indentLine
let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = ['coc-explorer', 'json']
let g:indentLine_fileTypeInclude = ['js', 'jsx', 'ts', 'tsx']

" NERDCommenter
let g:NERDCreateDefaultMappings = 0

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" vim-session
let g:session_autosave = 'yes'
let g:session_autosave_periodic = '1'
let g:session_autosave_silent = '1'
let g:session_verbose_messages = '0'
let g:session_autoload = 'no'

" vim-notes
let g:notes_tab_indents = 0
let g:notes_conceal_url = 0

" accelrated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)


"" functions
" search from visual selection
function! s:getSelectedText()
  let l:old_reg = getreg('"')
  let l:old_regtype = getregtype('"')
  norm gvy
  let l:ret = getreg('"')
  call setreg('"', l:old_reg, l:old_regtype)
  exe "norm \<Esc>"
  return l:ret
endfunction

function! MoveLineUp()
  let l:old_reg = getreg('"')
  let l:old_regtype = getregtype('"')
  norm dd
  let l:ret = getreg('"')
  call setreg('"', l:old_reg, l:old_regtype)
  exe "norm \<Esc>"
  return l:ret
endfunction

vnoremap <silent> * :call setreg("/",
    \ substitute(<SID>getSelectedText(),
    \ '\_s\+',
    \ '\\_s\\+', 'g')
    \ )<Cr>n

vnoremap <silent> # :call setreg("?",
    \ substitute(<SID>getSelectedText(),
    \ '\_s\+',
    \ '\\_s\\+', 'g')
    \ )<Cr>n


" execute macros on each line of visual selection
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
