syntax on

" coc compatibility
set cmdheight=2 " Better display for messages
set hidden " prevent TextEdit issues 
set nobackup nowritebackup " prevent server issues with backups, c.f. coc.nvim issue#649
set shortmess+=c " don't give |ins-completion-menu| messages.
set signcolumn=yes
set updatetime=300 " prevent issues with diagnostic messages

" other
set cindent
set cursorline
set expandtab
set list
set listchars=tab:>·,extends:>,precedes:<,space:·
set magic " Set magic on, for regex
set mat=2 " how many tenths of a second to blink
set noswapfile
set number
set relativenumber
set shiftwidth=2
set showmatch " show matching braces
set smarttab
set softtabstop=0
set suffixesadd=.js,.ts,.jsx,.tsx
set switchbuf=useopen
set tabstop=4

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

" other
let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/bin/python3'
