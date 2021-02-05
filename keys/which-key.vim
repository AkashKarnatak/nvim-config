" Leader Key Maps

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 200

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'                            , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
" let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
" let g:which_key_map['o'] = [ ':RnvimrToggle'                                   , 'open' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
let g:which_key_map['q'] = [ '<Plug>(coc-fix-current)'                         , 'quickfix' ]
" let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                 , 'treesitter highlight' ]
" let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
" let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
" let g:which_key_map['z'] = [ 'Goyo'                                            , 'zen' ]

" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':call CocAction("pickColor")'        , 'pick color'],
      \ 'e' : [':CocCommand explorer'    , 'explorer'],
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 't' : [':FloatermToggle'         , 'terminal'],
      \ 'u' : ["\<ESC>viwU"              , 'upper case'],
      \ 'U' : ["\<ESC>viwu"              , 'lower case'],
      \ 'v' : [':Codi'                   , 'virtual repl on'],
      \ 'V' : [':Codi!'                  , 'virtual repl off'],
      \ }
      " \ 'w' : [':StripWhitespace'        , 'strip whitespace'],  -> vim-better-whitespace

" b is for buffer
" need to install romgrk/barbar.nvim
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'b' : [':e #'                 , 'last used buffer'],
      \ 'd' : [':bd'                    , 'delete-buffer'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ }

" c is for cscope
" need to install cscope
" map <leader>cs :cs find s RTMP_SEM_EVENT_UP<CR>
let g:which_key_map.c = {
      \ 'name' : '+cscope' ,
      \ 's' : [":cs find s <C-R>=expand('<cword>')<CR><CR>"                         , 'symbol'],
      \ 'g' : [":cs find g \<C-R>=expand('<cword>')\<CR>\<CR>"                      , 'global'],
      \ 'c' : [":cs find c \<C-R>=expand('<cword>')\<CR>\<CR>"                      , 'calls'],
      \ 't' : [":cs find t \<C-R>=expand('<cword>')\<CR>\<CR>"                      , 'text'],
      \ 'e' : [":cs find e \<C-R>=expand('<cword>')\<CR>\<CR>"                      , 'egrep'],
      \ 'f' : [":cs find f \<C-R>=expand('<cfile>')\<CR>\<CR>"                      , 'file'],
      \ 'i' : [":cs find i \^\<C-R>=expand('<cfile>')\<CR>$\<CR>"                   , 'includes'],
      \ 'd' : [":cs find d \<C-R>=expand('<cword>')\<CR>\<CR>"                      , 'called'],
      \ }

" d is for debug
" need to install puremourning/vimspector
" let g:which_key_map.d = {
"       \ 'name' : '+debug' ,
"       \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
"       \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
"       \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
"       \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
"       \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
"       \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
"       \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
"       \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
"       \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
"       \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
"       \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
"       \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
"       \ }

" f is for find and replace
" need to install brooth/far.vim
" let g:which_key_map.f = {
"       \ 'name' : '+find & replace' ,
"       \ 'f' : [':Farr --source=vimgrep'    , 'file'],
"       \ 'p' : [':Farr --source=rgnvim'     , 'project'],
"       \ }

" k is for task
let g:which_key_map.k = {
      \ 'name' : '+task' ,
      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'r' : [':AsyncTask file-run'          , 'run file'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }
      " \ 'p' : [':AsyncTask project-run'       , 'run project'],
      " \ 'l' : [':CocList tasks'               , 'list tasks'],
      " \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      " \ 'b' : [':AsyncTask project-build'     , 'build project'],
      " \ 'l' : [':AsyncTaskList'               , 'list tasks'],

" m is for mark
let g:which_key_map.m = {
      \ 'name' : '+mark' ,
      \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
      \ 'C' : [':CocCommand bookmark.clearForAllFiles', 'clear project'],
      \ 'j' : [':CocCommand bookmark.next', 'next bookmark'],
      \ 'k' : [':CocCommand bookmark.prev', 'prev bookmark'],
      \ 't' : [':CocCommand bookmark.toggle', 'toggle bookmark'],
      \ }
      " CoC throws an error
      " \ 'a' : [':CocCommand bookmark.annotate', 'annotate bookmark'],

" " s is for search
" let g:which_key_map.s = {
"       \ 'name' : '+search' ,
"       \ '/' : [':History/'              , 'history'],
"       \ ';' : [':Commands'              , 'commands'],
"       \ 'a' : [':Ag'                    , 'text Ag'],
"       \ 'b' : [':BLines'                , 'current buffer'],
"       \ 'B' : [':Buffers'               , 'open buffers'],
"       \ 'c' : [':Commits'               , 'commits'],
"       \ 'C' : [':BCommits'              , 'buffer commits'],
"       \ 'f' : [':Files'                 , 'files'],
"       \ 'g' : [':GFiles'                , 'git files'],
"       \ 'G' : [':GFiles?'               , 'modified git files'],
"       \ 'h' : [':History'               , 'file history'],
"       \ 'H' : [':History:'              , 'command history'],
"       \ 'l' : [':Lines'                 , 'lines'] ,
"       \ 'm' : [':Marks'                 , 'marks'] ,
"       \ 'M' : [':Maps'                  , 'normal maps'] ,
"       \ 'p' : [':Helptags'              , 'help tags'] ,
"       \ 'P' : [':Tags'                  , 'project tags'],
"       \ 's' : [':CocList snippets'      , 'snippets'],
"       \ 'S' : [':Colors'                , 'color schemes'],
"       \ 't' : [':Rg'                    , 'text Rg'],
"       \ 'T' : [':BTags'                 , 'buffer tags'],
"       \ 'w' : [':Windows'               , 'search windows'],
"       \ 'y' : [':Filetypes'             , 'file types'],
"       \ 'z' : [':FZF'                   , 'FZF'],
"       \ }
      " \ 's' : [':Snippets'     , 'snippets'],

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':FzfPreviewCommandPalette'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':CocCommand fzf-preview.BufferLines'                , 'current buffer'],
      \ 'B' : [':CocCommand fzf-preview.Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'd' : [':CocCommand fzf-preview.DirectoryFiles'              , 'directories'],
      \ 'f' : [':CocCommand fzf-preview.ProjectFiles'                 , 'files'],
      \ 'g' : [':CocCommand fzf-preview.GitFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':CocCommand fzf-preview.Marks', 'list marks'],
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'q' : [':CocCommand fzf-preview.QuickFix'                  , 'quickfix list'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }
" 
" :CocCommand fzf-preview.AllBuffers
" :CocCommand fzf-preview.Changes
" :CocCommand fzf-preview.Yankround
" :CocCommand fzf-preview.CocReferences
" :CocCommand fzf-preview.CocDiagnostics
" :CocCommand fzf-preview.CocCurrentDiagnostics
" :CocCommand fzf-preview.CocTypeDefinitions
" \ 'l' : [':CocCommand fzf-preview.Bookmarks', 'list bookmarks'],
" $FZF_PREVIEW_PREVIEW_BAT_THEME = 'ansi-dark'
" 

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':SignifyToggleHighlight'           , 'highlight hunks'],
      \ 'H' : [':SignifyHunkDiff'                  , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(signify-next-hunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(signify-prev-hunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
      \ 'u' : [':SignifyHunkUndo'                  , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
      " \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      " \ 'A' : [':Git add %'                        , 'add current'],
      " \ 'S' : [':!git status'                      , 'status'],
" 
" 
" 

" let g:which_key_map.G = {
"       \ 'name' : '+gist' ,
"       \ 'a' : [':Gist -a'                          , 'post gist anon'],
"       \ 'b' : [':Gist -b'                          , 'post gist browser'],
"       \ 'd' : [':Gist -d'                          , 'delete gist'],
"       \ 'e' : [':Gist -e'                          , 'edit gist'],
"       \ 'l' : [':Gist -l'                          , 'list public gists'],
"       \ 's' : [':Gist -ls'                         , 'list starred gists'],
"       \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
"       \ 'p' : [':Gist -P'                          , 'post public gist '],
"       \ 'P' : [':Gist -p'                          , 'post private gist '],
"       \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }
      " \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=winheight(0)*10/27'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                                                 , 'fzf'],
      \ 'n' : [':FloatermNew node'                                                , 'node'],
      \ 'p' : [':FloatermNew ipython3'                                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                                              , 'ranger'],
      \ 't' : [':FloatermToggle'                                                  , 'toggle'],
      \ 's' : [':FloatermNew ncdu'                                                , 'ncdu'],
      \ }
      " \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      " \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      " \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      " \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      " \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],

" w is for wiki
" let g:which_key_map.w = {
"       \ 'name' : '+wiki' ,
"       \ 'w' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
"       \ 'n' : ['<plug>(wiki-open)'                              , 'ncdu'],
"       \ 'j' : ['<plug>(wiki-journal)'                              , 'ncdu'],
"       \ 'R' : ['<plug>(wiki-reload)'                              , 'ncdu'],
"       \ 'c' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
"       \ 'b' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
"       \ 'g' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
"       \ 'G' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
"       \ 'l' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
"       \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
"       \ 'r' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
"       \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
"       \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
"       \ 'e' : ['<plug>(wiki-export)'                              , 'ncdu'],
"       \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
"       \ 'U' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
"       \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote
"
" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
