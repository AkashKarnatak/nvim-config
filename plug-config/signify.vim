set updatetime=100
" Change these if you want
let g:signify_sign_add               = '▋'
let g:signify_sign_delete            = '▋'
let g:signify_sign_delete_first_line = '▋'
let g:signify_sign_change            = '▋'

" I find the numbers disctracting
let g:signify_sign_show_count = 1
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

" Color schemes
" highlight SignifySignAdd    ctermfg=black guifg=black ctermbg=10  guibg=#80ff00
" highlight SignifySignDelete ctermfg=black guifg=black ctermbg=9   guibg=red
" highlight SignifySignChange ctermfg=black guifg=black ctermbg=208 guibg=#e6ac00

highlight SignifySignAdd             ctermbg=NONE guibg=NONE ctermfg=10 guifg=#80ff00
highlight SignifySignDelete          ctermbg=NONE guibg=NONE ctermfg=9   guifg=red
highlight SignifySignDeleteFirstLine ctermbg=NONE guibg=NONE ctermfg=9   guifg=red
highlight SignifySignChange          ctermbg=NONE guibg=NONE ctermfg=208 guifg=#e6ac00

highlight SignifyLineAdd             ctermfg=white guifg=white ctermbg=10  guibg=#127209
highlight SignifyLineDelete          ctermfg=white guifg=white ctermbg=9   guibg=#a80000
highlight SignifyLineDeleteFirstLine ctermfg=white guifg=white ctermbg=9   guibg=#a80000
highlight SignifyLineChange          ctermfg=white guifg=white ctermbg=208 guibg=#a87d00
