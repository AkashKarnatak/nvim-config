" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
map ;; <Esc>
xmap ;; <Esc>
smap ;; <Esc>
map! ;; <Esc>
lmap ;; <Esc>
cmap ;; <C-u><BS>
tmap ;; <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remap 0, $, ^
nnoremap 0 $
nnoremap $ ^
nnoremap ^ 0
vnoremap 0 $h
vnoremap $ ^
vnoremap ^ 0
onoremap 0 $
onoremap $ ^
onoremap ^ 0

" Enter normal mode in terminal
tmap ;; <C-\><C-n>

" Open terminal
nmap <expr> <space>t ManageTerminal()

function ManageTerminal()
  if bufname('terminal') ==# 'terminal'
    if expand('%:t') ==# "terminal" 
      return "\<C-\>\<C-N>\<C-w>q"
    else
      let size = winheight(0)/3
      return ":sb terminal\<CR>:resize ".size."\<CR>i"
    endif
  else
    let size = winheight(0)/3
    return ":".size."split\<CR>:te\<CR>:file terminal\<CR>i"
  endif
endfunction

" ;; for no highlight
nmap ;; :noh<CR>

" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-h> <C-W>

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
