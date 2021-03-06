call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'raimondi/delimitmate'
    " Themes
    Plug 'patstockwell/vim-monokai-tasty'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Lightline
    " Plug 'itchyny/lightline.vim'
    " Plug 'mengelbrecht/lightline-bufferline'
    " Add superuser support
    Plug 'lambdalisue/suda.vim'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Colorize parenthesis
    Plug 'junegunn/rainbow_parentheses.vim'
    " Icons for plugins
    Plug 'ryanoasis/vim-devicons'
    " Repeat.vim
    Plug 'tpope/vim-repeat'
    " Vim actions
    Plug 'tpope/vim-surround'
    " Vim verbs
    Plug 'tpope/vim-commentary'
    Plug 'vim-scripts/replacewithregister'
    " Vim nouns
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-entire'
    Plug 'vim-scripts/argtextobj.vim'
    " Mardown suport
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Cpp highlighting
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    " Startify
    Plug 'mhinz/vim-startify'
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Which key
    Plug 'liuchengxu/vim-which-key'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Live server
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    " Task system for project building
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Codi
    Plug 'metakirby5/codi.vim'

call plug#end()
