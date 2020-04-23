" NERDCommenter
let g:NERDCreateDefaultMappings = 0

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''

" vim-session
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = '1'
let g:session_autosave_silent = '1'
let g:session_verbose_messages = '0'

" vim-notes
let g:notes_conceal_bold = 0
let g:notes_conceal_code = 0
let g:notes_conceal_italic = 0
let g:notes_conceal_url = 0
let g:notes_smart_quotes = 0
let g:notes_tab_indents = 0
let g:notes_unicode_enabled = 0

" far.vim
let g:far#source = 'rgnvim'
let g:far#ignore_files = ['~/.ignore']
let g:far#window_layout = 'current'
let g:far#file_mask_favorites = ['%', '/src/**', '**/*.*', '**/*.html', '**/*.js', '**/*.css']
