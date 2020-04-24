highlight ColorColumn ctermbg=235 guibg=#2c2d27
highlight CursorLineNr ctermfg=2
highlight MatchParen ctermbg=0 ctermfg=5
highlight NonText ctermfg=8

" highlight columns >= 120
let &colorcolumn=join(range(120,999),",")

" highlight inactive window splits
highlight InactiveWindow ctermbg=233
set winhighlight=NormalNC:InactiveWindow

" coc.nvim
highlight CocErrorFloat ctermbg=1


" 0: darkgrey; 1: red; 2: lime: 3: yellow; 4: darkblue;
" 5: purple; 6: lightblue; 7: white; 8: lightgrey;
