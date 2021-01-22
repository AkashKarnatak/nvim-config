let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction


highlight StartifyHeader ctermfg=10 guifg=#73d900

let g:nvim_skull = startify#pad([
                 \ "                                                    .                                                      .",
                  \ "                                                  .n                   .                 .                  n.",
                  \ "                                            .   .dP                  dP                   9b                 9b.    .",
                  \ "                                           4    qXb         .       dX                     Xb       .        dXp     t",
                  \ "                                          dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb",
                  \ "                                          9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP",
                  \ " __    __  __     __  __                   9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP",
                  \ "|  \\  |  \\|  \\   |  \\|  \\                   `9XXXXXXXXXXXXXXXXXXXXX`~   ~`OOO8b   d8OOO`~   ~`XXXXXXXXXXXXXXXXXXXXXP`",
                  \ "| $$\\ | $$| $$   | $$ \\$$ ______ ____         `9XXXXXXXXXXXP` `9XX`   DIE    `98v8P`  HUMAN   `XXP` `9XXXXXXXXXXXP`",
                  \ "| $$$\\| $$| $$   | $$|  \\|      \\    \\            ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~",
                  \ "| $$$$\\ $$ \\$$\\ /  $$| $$| $$$$$$\\$$$$\\                           )b.  .dbo.dP``v``9b.odb.  .dX(",
                  \ "| $$\\$$ $$  \\$$\\  $$ | $$| $$ | $$ | $$                         ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.",
                  \ "| $$ \\$$$$   \\$$ $$  | $$| $$ | $$ | $$                        dXXXXXXXXXXXP`   .   `9XXXXXXXXXXXb",
                  \ "| $$  \\$$$    \\$$$   | $$| $$ | $$ | $$                       dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb",
                  \ " \\$$   \\$$     \\$     \\$$ \\$$  \\$$  \\$$                       9XXb`   `XXXXXb.dX|Xb.dXXXXX`   `dXXP",
                  \ "                                                               ``      9XXXXXX(   )XXXXXXP      ``",
                  \ "                                                                        XXXX X.`v`.X XXXX",
                  \ "                                                                        XP^X``b   d``X^XX",
                  \ "                                                                        X. 9  `   `  P )X",
                  \ "                                                                        `b  `       `  d`",
                  \ "                                                                         `             ` "])

let g:nvim_simple = startify#pad([
      \ "    _   __ _    __ _          ",
      \ "   / | / /| |  / /(_)____ ___ ",
      \ "  /  |/ / | | / // // __ `__ \\",
      \ " / /|  /  | |/ // // / / / / /",
      \ "/_/ |_/   |___//_//_/ /_/ /_/"])

let g:startify_custom_header = '(winheight(0) < 19) || (winwidth(0) < 33) ? [] : (winheight(0) < 35) || (winwidth(0) < 122) ? g:nvim_simple : g:nvim_skull'

