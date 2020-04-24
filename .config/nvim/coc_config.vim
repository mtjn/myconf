"" DISABLED
"nnoremap <leader>_ yiw:CocList grep<CR>"<C-r>

" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

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
