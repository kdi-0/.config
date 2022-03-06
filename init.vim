syntax on
set rnu
set nu
set tabstop=2 softtabstop=2
set shiftwidth=2
set nohlsearch
set hidden
set noerrorbells
set nowrap
set incsearch
set signcolumn=yes
set scrolloff=8
set undodir=~/.vim/undodir
set undofile
set nobackup
set noswapfile
set undofile
set termguicolors


" Give more space for displaying messages.
set cmdheight=2

" enable filetype plugins, for nerd commenter
filetype plugin on

"fix coloring
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"


call plug#begin()

Plug 'luochen1990/rainbow'

Plug 'ayu-theme/ayu-vim'

Plug 'preservim/nerdcommenter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'raimondi/delimitmate'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neovim/nvim-lspconfig'
call plug#end()

" Config matching brack behaviour
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
au FileType tcl let b:delimitMate_expand_space = 1

" Leader remap
let mapleader = " "

"Language Server

" leader functions

" Search for string in current directory
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

" open nerd tree : FIX FILE ICONS
nnoremap <leader>t :NERDTree<CR>

" open coc diagnostics
nnoremap <leader>a :CocList diagnostics<CR>

" Toggle Matching Colors 
let g:rainbow_active=0
nnoremap <leader>mt :RainbowToggle<CR>


let ayucolor="dark"
colorscheme ayu


