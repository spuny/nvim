set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
" set noshowmode
set signcolumn=yes
set isfname+=@-@
" set ls=0

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let &colorcolumn="80,".join(range(120,120),",")
"set colorcolumn=80
"highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
highlight ColorColumn ctermbg=grey guibg=#353130
" highlight ColorColumn ctermbg=grey guibg=#353130

" highlight line wich cursor is on
set cursorline
