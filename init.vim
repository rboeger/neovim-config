set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber
set wildmode=longest,list   " get bash-like tab completions
set scrolloff=8
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set termguicolors
set wrap!
set splitright
set updatetime=0
"let g:NERDTreeDirArrows = 0 

" load all plugins using vim-plug
call plug#begin("~/.vim/plugged")
 " Plugin Section
 Plug 'ryanoasis/vim-devicons'
 "Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 "Plug 'mhinz/vim-startify'
"" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" Plug 'davidhalter/jedi'
 Plug 'catppuccin/nvim'
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 Plug 'aurum77/live-server.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'rmagatti/auto-session'
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
  Plug 'simrat39/symbols-outline.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'nvim-neo-tree/neo-tree.nvim'
  Plug 'MunifTanjim/nui.nvim'
call plug#end()

lua require('init')
colorscheme catppuccin 


" remapping keys
" go to definition using coc
"nmap <silent> gd <Plug>(coc-definition)

" toggle NERDTree
"nmap <C-t> :NERDTreeToggle<CR>

" toggle neotree
nmap <C-t> :Neotree toggle<CR>
nmap <C-b> :Neotree buffers<CR>

" make it easier to move to splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" open telescope
nmap ff :Telescope find_files<CR>
nmap fd :Telescope grep_string<CR>

" create new tab
nmap tn :tabnew<CR>

" open curent split in new tab
nmap tw <C-w>T

" close current tab
nmap tc :tabclose<CR>

" set esc to exit terminal input mode
tnoremap <Esc> <C-\><C-n>

" set esc to stop highlighting search
 noremap <esc> :noh<CR>

 nmap <C-u> <C-u>zz
 nmap <C-d> <C-d>zz
 nmap J J_
 noremap gn :bn<CR>
 noremap gp :bp<CR>
 "noremap gd :vs<CR>*zz
 nmap n nzz
 nmap * *zz
 
 noremap to :SymbolsOutline<CR>
 nmap fl :Telescope live_grep<CR>

 nmap cd :cd %:h<CR>
