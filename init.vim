set path+=**
" Dont forget to check already mapped keys:
"" :verbose imap <key>
" enable syntax highlighting
syntax enable

" autoinstall vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')
" Autoformating for python code
" Plug 'ambv/black'

" Plebvim lsp Plugins
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'
" Plug 'nvim-lua/completion-nvim'
" Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'tjdevries/nlua.nvim'
" Plug 'tjdevries/lsp_extensions.nvim'

Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
" Plug 'git@github.com:kien/ctrlp.vim.git'
" Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'

" netrw upgrade
Plug 'tpope/vim-vinegar'
" git plugins
Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/git-worktree.nvim'

" Lua plugins
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'


" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'colepeters/spacemacs-theme.vim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'


" add the best colorscheme
Plug 'gruvbox-community/gruvbox'

" should I try another status bar???
Plug 'hoob3rt/lualine.nvim'

" BATS - absh automated testing system
Plug 'aliou/bats.vim'
" Plug 'towolf/vim-helm'
call plug#end()

set background=dark
colorscheme gruvbox
" gruvbox settings

if !has("gui_running")
   let g:gruvbox_italic=0
endif



" Coc config
" By default it uses TAB to autocomplete

" for coc plugin, path to node command
let g:coc_node_path = '/Users/jakubspunar/.nvm/versions/node/v15.14.0/bin/node'

lua require("theprimeagen")
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }


if executable('rg')
  let g:rg_derive_root='true'
endif

" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

" let g:ctrlp_use_caching = 0

" behave vim
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap : :<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
" nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" nnoremap <leader>rs :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" netrw settings (EX,SEX,VEX)
" display style with upped dir
" let g:netrw_liststyle = 3
" " remove banner
" let g:netrw_browse_split = 2
" let g:netrw_banner = 0
" let g:netrw_winsize = 25

" YCM
" the best part
nmap <leader>gd <plug>(coc-definition)
nmap <leader>gf <plug>(coc-references)

" yank to clipboard
nnoremap <leader>y "*y
vnoremap <leader>y "*y
" yank whole file
nnoremap <leader>Y gg"*yG

" useful func
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" get rid of pesky blank chars
function TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfunction

