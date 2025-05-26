set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
"set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set scrolloff=10            " set borders on screen scrolling
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set noswapfile            " disable creating swap file
set termguicolors
set wrap!
set splitright
set updatetime=0
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 " set html to have 2 space tab
autocmd FileType py setlocal tabstop=4 shiftwidth=4 softtabstop=4 " set python to have 4 space tab
autocmd FileType css setlocal tabstop=4 shiftwidth=4 softtabstop=4 " set css to have 4 space tab
"set cc=100                  " set an 80 column border for good coding style
"set backupdir=~/.cache/vim " Directory to store backup files.
"set relativenumber

" load all plugins using vim-plug
call plug#begin("~/.vim/plugged")
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdcommenter'
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
    Plug 'windwp/nvim-autopairs'
    Plug 'nvim-neo-tree/neo-tree.nvim'
    Plug 'MunifTanjim/nui.nvim'
    Plug 'hedyhli/outline.nvim'
    Plug 'uga-rosa/ccc.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    "Plug 'linux-cultist/venv-selector.nvim'
    "Plug 'tell-k/vim-autopep8'
    "Plug 'github/copilot.vim'
    Plug 'mechatroner/rainbow_csv' 
    Plug 'kylechui/nvim-surround'
    Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
    Plug 'folke/todo-comments.nvim'
    Plug 'hat0uma/csvview.nvim'
    Plug 'akinsho/toggleterm.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'petertriho/nvim-scrollbar'
    Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

lua require('init')
colorscheme catppuccin 

" toggle neotree
nmap <C-e> :Neotree toggle<CR>
nmap tt :ToggleTerm<CR>
nmap td :lua vim.diagnostic.open_float()<CR>
"nmap <C-b> :Neotree buffers<CR>

" make it easier to move to splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" open telescope
nmap <C-f> :Telescope find_files<CR>
nmap td :Telescope grep_string<CR>
nmap tl :Telescope live_grep<CR>
nmap tb :Telescope buffers<CR>
nmap tm :Telescope marks<CR>
nmap <C-t> :TodoTelescope<CR>

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

 "nmap <C-u> <C-u>zz
 "nmap <C-d> <C-d>zz
 nmap J J_
 "noremap gn :bn<CR>
 "noremap gp :bp<CR>
 nmap n nzz
 nmap * *zz
 
 noremap to :Outline<CR>

 nmap cd :cd %:h<CR>

" load vim config
nmap tev :vs ~/.config/nvim/init.vim<CR>
nmap tet :vs ~/.config/foot/foot.ini<CR>
