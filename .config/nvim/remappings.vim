" general
" write
nnoremap <leader>w :w<CR>

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

" config file
nnoremap <leader>ev :e! ~/.config/nvim/init.vim<CR>
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
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>; :b#<CR>
nnoremap <leader>x :bp <BAR> bd #<CR>
nnoremap <leader>n :enew<CR>

" disable arrow keys in insert mode
"imap <Up> <nop>
"imap <Left> <nop>
"imap <Right> <nop>
"imap <Down> <nop>

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
nnoremap <silent> <A-k> :call SwapLinesUp()<CR>
nnoremap <silent> <A-j> :call SwapLinesDown()<CR>

" execute macros on each line of visual selection
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

" search from visual selection
" don't move to next result when initiating search
nnoremap * *N 
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


" plugin remappings
" vim-notes - open todo
nnoremap <leader>td :Note todo<CR>

" nerdcommenter - toggle comment
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" vim-session - quick open session
nnoremap <silent> <leader>r :OpenSession<CR>

" vim-tmux-navigator - move between window splits
nnoremap <silent> <C-h> <C-w>h<CR>
nnoremap <silent> <C-j> <C-w>j<CR>
nnoremap <silent> <C-k> <C-w>k<CR>
nnoremap <silent> <C-l> <C-w>l<CR>

" coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CocCheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> <leader>K :call CocShowDocumentation()<CR>

" Remap for rename current word
nnoremap <leader>rn <Plug>(coc-rename)

" Other
nnoremap ge :CocCommand explorer --no-toggle<CR>

" coc-lists
nnoremap <leader>8 :CocList files<CR>
nnoremap <leader>9 :CocList mru<CR>
nnoremap <leader>0 :CocList buffers<CR>
nnoremap <leader>- :CocList grep<CR>
nnoremap <leader>= :CocListResume<CR>
