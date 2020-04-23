" general
" disable ex mode
nnoremap Q <nop>
" remove search highlights
nnoremap <silent> <leader>, :noh<CR>
" remove splits
nnoremap <silent> <leader>o :only<CR>
" execute last run macro
nnoremap <leader>q @q
xnoremap <leader>q @q
" run command as sudo
cmap w!! w !sudo tee > /dev/null %

" config files
nnoremap <leader>ev :e! ~/.config/nvim/init.vim<CR>
nnoremap <leader>ecc :e! ~/.config/nvim/coc_config.vim<CR>
nnoremap <leader>ecs :e! ~/.config/nvim/coc-settings.json<CR>
" re-source config file
nnoremap <leader>sev :source ~/.config/nvim/init.vim<CR>

" copy to system clipboard
nnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y

" paste
" from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
" from yank buffer
nnoremap <leader>[ "0p

" buffers commands
nmap <leader>; :b#<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>l :bnext<CR>
nmap <leader>n :enew<CR>
nmap <leader>x :bp <BAR> bd #<CR>
nnoremap <leader>w :w<CR>

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
nnoremap <leader>ctf ^ciwconst<Esc>f(i = <Esc>$i=><Esc>
nnoremap <leader>imr ggOimport React from "react";<Esc><C-o>
nnoremap <leader>ims ggOimport styled from "styled-components";<Esc><C-o>
nnoremap <leader>ue ouseEffect(() => {<CR><CR>}, [])<Esc>ki<TAB>


" function calls
" swap lines
noremap <silent> <A-k> :call SwapLinesUp()<CR>
noremap <silent> <A-j> :call SwapLinesDown()<CR>

" execute macros on each line of visual selection
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

" replicated in functions.vim because an error occurs when calling
" getSelectedText() from this function
"
" search from visual selection
vnoremap <silent> * :call setreg("/",
    \ substitute(GetSelectedText(),
    \ '\_s\+',
    \ '\\_s\\+', 'g')
    \ )<Cr>nN

vnoremap <silent> # :call setreg("/",
    \ substitute(GetSelectedText(),
    \ '\_s\+',
    \ '\\_s\\+', 'g')
    \ )<Cr>nN

" don't move to next result when initiating search
nmap * *N 


" plugin remappings
" vim-notes - open todo
nnoremap <leader>td :Note todo<CR>

" NERDCommenter - toggle comment
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" vim-session - quick open session
nnoremap <silent> <leader>r :OpenSession<CR>

" tmux-navigator - move between window splits
noremap <silent> <C-h> <C-w>h<CR>
noremap <silent> <C-j> <C-w>j<CR>
noremap <silent> <C-k> <C-w>k<CR>
noremap <silent> <C-l> <C-w>l<CR>
