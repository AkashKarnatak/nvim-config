" Make Ranger replace netrw and NERDTree as the file explorer
let g:NERDTreeHijackNetrw = 0
let g:rnvimr_ex_enable = 1

let g:rnvimr_draw_border = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_pick_enable = 1

" Make Neovim to wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_bw_enable = 1

nmap <space>r :RnvimrToggle<CR>

let g:rnvimr_presets = [
            \ {'width': 0.900, 'height': 0.800}]
