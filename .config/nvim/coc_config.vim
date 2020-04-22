highlight CocErrorFloat ctermbg=1

let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-tsserver',
  "\ 'coc-css',
  "\ 'coc-eslint',
  "\ 'coc-json', 
  "\ 'coc-prettier', 
  "\ 'coc-snippets',
  \ ]

" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


"" FUNCTIONS
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"" REMAPPINGS
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
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
nnoremap <silent> <leader>K :call <SID>show_documentation()<CR>


" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Other
nmap ge :CocCommand explorer --no-toggle<CR>

" coc-lists
nnoremap <leader>8 :CocList files<CR>
nnoremap <leader>9 :CocList buffers<CR>
nnoremap <leader>0 :CocList mru<CR>
nnoremap <leader>- :CocList grep<CR>
nnoremap <leader>= :CocListResume<CR>
"nnoremap <leader>_ yiw:CocList grep<CR>"<C-r>


"" DISABLED
"augroup mygroup
  "autocmd!
  "" Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  "" Update signature help on jump placeholder
  "autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')

" open coc-list by default if directory opened
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | bd 1 | wincmd p | ene | exe 'cd '.argv()[0] | exe 'CocList files' | endif

" Using CocList
" Show all diagnostics
"nnoremap <silent> \a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> \e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> \c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> \o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> \s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> \j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> \k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> \p  :<C-u>CocListResume<CR>

" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
"command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
