" set leader key
let g:mapleader = "\<Space>"
let g:coc_node_path = exepath('node')
 
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set relativenumber                      " Set relative line number
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro     " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory
"set noautochdir                         " Prevent vim from automatically changing your directory
set winminheight=0                      " Set minimum height of a window to zero
set scrolloff=10                        " Set scrolloff

au! BufWritePost $MYVIMRC source %                " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" au TermOpen *:$SHELL,*:\$SHELL set scrolloff=0    " set scrollof for shell terminal to 0
" au FileType help only                         " always open help in vertical split

" w! can now be used to write to a read only file
cmap w!! w !sudo tee %
