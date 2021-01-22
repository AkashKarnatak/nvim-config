let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_rows = winheight(0)*10/25      " set height for the horizontal terminal split
" let g:asynctasks_term_cols = winheight(0)*10/25    " set width for vertical terminal split
let g:asynctasks_system = 'linux'
let g:asynctasks_extra_config = [
    \ '~/.config/nvim/utils/tasks.ini',
    \ ]
