" Leader Key Maps

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
map <leader>/ :call Comment()<cr>
let g:which_key_map['/'] = 'comment'

map <leader>; :Commands<cr>
let g:which_key_map[';'] = 'commands'

map <leader>= <C-W>=
let g:which_key_map['='] = 'balance windows'

map <leader>d :Bdelete<cr>
let g:which_key_map['d'] = 'delete buffer'

map <leader>e :CocCommand explorer --preset side<cr>
let g:which_key_map['e'] = 'explorer'

map <leader>h <C-W>s
let g:which_key_map['h'] = 'split below'

map <leader>m :call WindowSwap#EasyWindowSwap()<cr>
let g:which_key_map['m'] = 'move window'

map <leader>n :let @/ = ""<cr>
let g:which_key_map['n'] = 'no highlight'

map <leader>p :Files<cr>
let g:which_key_map['p'] = 'search files'

map <leader>r :RnvimrToggle<cr>
let g:which_key_map['r'] = 'ranger'

map <leader>v <C-W>v
let g:which_key_map['v'] = 'split right'

map <leader>W :w<cr>
let g:which_key_map['W'] = 'write'

" Group mappings

" a is for actions
if !empty(maparg('<leader>a', 'n'))
  unmap <leader>a
endif
let g:which_key_map.a = { 'name' : '+actions' }
map <leader>ac :ColorizerToggle<cr>
let g:which_key_map.a['c'] = 'colorizer'
map <leader>ae :CocCommand explorer<cr>
let g:which_key_map.a['e'] = 'explorer'
map <leader>al :Bracey<cr>
let g:which_key_map.a['l'] = 'start live server'
map <leader>aL :BraceyStop<cr>
let g:which_key_map.a['L'] = 'stop live server'
map <leader>am :MarkdownPreview<cr>
let g:which_key_map.a['m'] = 'markdown preview'
map <leader>aM :MarkdownPreviewStop<cr>
let g:which_key_map.a['M'] = 'markdown preview stop'
map <leader>an :set nonumber!<cr>
let g:which_key_map.a['n'] = 'line-numbers'
map <leader>ar :set norelativenumber!<cr>
let g:which_key_map.a['r'] = 'relative line nums'
map <leader>as :let @/ = ""<cr>
let g:which_key_map.a['s'] = 'remove search highlight'
map <leader>at :FloatermToggle<cr>
let g:which_key_map.a['t'] = 'terminal'
map <leader>av :Codi<cr>
let g:which_key_map.a['v'] = 'virtual repl on'
map <leader>aV :Codi!<cr>
let g:which_key_map.a['V'] = 'virtual repl off'
map <leader>aw :StripWhitespace<cr>
let g:which_key_map.a['w'] = 'strip whitespace'

" f is for find and replace
if !empty(maparg('<leader>f', 'n'))
  unmap <leader>f
endif
let g:which_key_map.f = { 'name' : '+find & replace' }
map <leader>fb :Farr --source=vimgrep<cr>
let g:which_key_map.f['b'] = 'buffer'
map <leader>fp :Farr --source=rgnvim<cr>
let g:which_key_map.f['p'] = 'project'

" s is for search
if !empty(maparg('<leader>s', 'n'))
  unmap <leader>s
endif
let g:which_key_map.s = { 'name' : '+search' }
map <leader>s/ :History/<cr>
let g:which_key_map.s['/'] = 'history'
map <leader>s; :Commands<cr>
let g:which_key_map.s[';'] = 'commands'
map <leader>sa :Ag<cr>
let g:which_key_map.s['a'] = 'text Ag'
map <leader>sb :BLines<cr>
let g:which_key_map.s['b'] = 'current buffer'
map <leader>sB :Buffers<cr>
let g:which_key_map.s['B'] = 'open buffers'
map <leader>sc :Commits<cr>
let g:which_key_map.s['c'] = 'commits'
map <leader>sC :BCommits<cr>
let g:which_key_map.s['C'] = 'buffer commits'
map <leader>sf :Files<cr>
let g:which_key_map.s['f'] = 'files'
map <leader>sg :GFiles<cr>
let g:which_key_map.s['g'] = 'git files'
map <leader>sG :GFiles?<cr>
let g:which_key_map.s['G'] = 'modified git files'
map <leader>sh :History<cr>
let g:which_key_map.s['h'] = 'file history'
map <leader>sH :History:<cr>
let g:which_key_map.s['H'] = 'command history'
map <leader>sl :Lines<cr>
let g:which_key_map.s['l'] = 'lines'
map <leader>sm :Marks<cr>
let g:which_key_map.s['m'] = 'marks'
map <leader>sM :Maps<cr>
let g:which_key_map.s['M'] = 'normal maps'
map <leader>sp :Helptags<cr>
let g:which_key_map.s['p'] = 'help tags'
map <leader>sP :Tags<cr>
let g:which_key_map.s['P'] = 'project tags'
map <leader>ss :CocList snippets<cr>
let g:which_key_map.s['s'] = 'snippets'
map <leader>sS :Colors<cr>
let g:which_key_map.s['S'] = 'color schemes'
map <leader>st :Rg<cr>
let g:which_key_map.s['t'] = 'text Rg'
map <leader>sT :BTags<cr>
let g:which_key_map.s['T'] = 'buffer tags'
map <leader>sw :Windows<cr>
let g:which_key_map.s['w'] = 'search windows'
map <leader>sy :Filetypes<cr>
let g:which_key_map.s['y'] = 'file types'
map <leader>sz :FZF<cr>
let g:which_key_map.s['z'] = 'FZF'

if !empty(maparg('<leader>S', 'n'))
  unmap <leader>S
endif
let g:which_key_map.S = { 'name' : '+Session' }
map <leader>Sc :SClose<cr>
let g:which_key_map.S['c'] = 'Close Session'
map <leader>Sd :SDelete<cr>
let g:which_key_map.S['d'] = 'Delete Session'
map <leader>Sl :SLoad<cr>
let g:which_key_map.S['l'] = 'Load Session'
map <leader>Ss :Startify<cr>
let g:which_key_map.S['s'] = 'Start Page'
map <leader>SS :SSave<cr>
let g:which_key_map.S['S'] = 'Save Session'

" g is for git
if !empty(maparg('<leader>g', 'n'))
  unmap <leader>g
endif
let g:which_key_map.g = { 'name' : '+git' }
map <leader>ga :Git add .<cr>
let g:which_key_map.g['g'] = 'gdd all'
map <leader>gA :Git add %<cr>
let g:which_key_map.g['A'] = 'gdd current'
map <leader>gb :Git blame<cr>
let g:which_key_map.g['b'] = 'blgme'
map <leader>gB :GBrowse<cr>
let g:which_key_map.g['B'] = 'browse'
map <leader>gc :Git commit<cr>
let g:which_key_map.g['c'] = 'commit'
map <leader>gd :Git diff<cr>
let g:which_key_map.g['d'] = 'diff'
map <leader>gD :Gdiffsplit<cr>
let g:which_key_map.g['D'] = 'diff split'
map <leader>gg :GGrep<cr>
let g:which_key_map.g['g'] = 'git grep'
map <leader>gG :Gstatus<cr>
let g:which_key_map.g['G'] = 'status'
map <leader>gh :GitGutterLineHighlightsToggle<cr>
let g:which_key_map.g['h'] = 'highlight hunks'
map <leader>gH <Plug>(GitGutterPreviewHunk)<cr>
let g:which_key_map.g['H'] = 'preview hunk'
map <leader>gi :Gist -b<cr>
let g:which_key_map.g['i'] = 'post gist'
map <leader>gj <Plug>(GitGutterNextHunk)<cr>
let g:which_key_map.g['j'] = 'next hunk'
map <leader>gk <Plug>(GitGutterPrevHunk)<cr>
let g:which_key_map.g['k'] = 'prev hunk'
map <leader>gl :Git log<cr>
let g:which_key_map.g['l'] = 'log'
map <leader>gm <Plug>(git-messenger)<cr>
let g:which_key_map.g['m'] = 'message'
map <leader>gp :Git push<cr>
let g:which_key_map.g['p'] = 'push'
map <leader>gP :Git pull<cr>
let g:which_key_map.g['P'] = 'pull'
map <leader>gr :GRemove<cr>
let g:which_key_map.g['r'] = 'remove'
map <leader>gs <Plug>(GitGutterStageHunk)<cr>
let g:which_key_map.g['s'] = 'stage hunk'
map <leader>gS :!git status<cr>
let g:which_key_map.g['S'] = 'status'
map <leader>gt :GitGutterSignsToggle<cr>
let g:which_key_map.g['t'] = 'toggle signs'
map <leader>gu <Plug>(GitGutterUndoHunk)<cr>
let g:which_key_map.g['u'] = 'undo hunk'
map <leader>gv :GV<cr>
let g:which_key_map.g['v'] = 'view commits'
map <leader>gV :GV!<cr>
let g:which_key_map.g['V'] = 'view buffer commits'

if !empty(maparg('<leader>G', 'n'))
  unmap <leader>G
endif
let g:which_key_map.G = { 'name' : '+gist' }
map <leader>Ga :Gist -a<cr>
let g:which_key_map.G['a'] = 'post gist anon'
map <leader>Gb :Gist -b<cr>
let g:which_key_map.G['b'] = 'post gist browser'
map <leader>Gd :Gist -d<cr>
let g:which_key_map.G['d'] = 'delete gist'
map <leader>Ge :Gist -e<cr>
let g:which_key_map.G['e'] = 'edit gist'
map <leader>Gl :Gist -l<cr>
let g:which_key_map.G['l'] = 'list public gists'
map <leader>Gs :Gist -ls<cr>
let g:which_key_map.G['s'] = 'list starred gists'
map <leader>Gm :Gist -m<cr>
let g:which_key_map.G['m'] = 'post gist all buffers'
map <leader>Gp :Gist -P<cr>
let g:which_key_map.G['p'] = 'post public gist '
map <leader>GP :Gist -p<cr>
let g:which_key_map.G['P'] = 'post private gist '

" l is for language server protocol
if !empty(maparg('<leader>l', 'n'))
  unmap <leader>l
endif
let g:which_key_map.l = { 'name' : '+lsp' }
map <leader>l. :CocConfig<cr>
let g:which_key_map.l['.'] = 'config'
map <leader>l; <Plug>(coc-refactor)<cr>
let g:which_key_map.l[';'] = 'refactor'
map <leader>la <Plug>(coc-codeaction)<cr>
let g:which_key_map.l['a'] = 'line action'
map <leader>lA <Plug>(coc-codeaction-selected)<cr>
let g:which_key_map.l['A'] = 'selected action'
map <leader>lb :CocNext<cr>
let g:which_key_map.l['b'] = 'next action'
map <leader>lB :CocPrev<cr>
let g:which_key_map.l['B'] = 'prev action'
map <leader>lc :CocList commands<cr>
let g:which_key_map.l['c'] = 'commands'
map <leader>ld <Plug>(coc-definition)<cr>
let g:which_key_map.l['d'] = 'definition'
map <leader>lD <Plug>(coc-declaration)<cr>
let g:which_key_map.l['D'] = 'declaration'
map <leader>le :CocList extensions<cr>
let g:which_key_map.l['e'] = 'extensions'
map <leader>lf <Plug>(coc-format-selected)<cr>
let g:which_key_map.l['f'] = 'format selected'
map <leader>lF <Plug>(coc-format)<cr>
let g:which_key_map.l['F'] = 'format'
map <leader>lh <Plug>(coc-float-hide)<cr>
let g:which_key_map.l['h'] = 'hide'
map <leader>li <Plug>(coc-implementation)<cr>
let g:which_key_map.l['i'] = 'implementation'
map <leader>lI :CocList diagnostics<cr>
let g:which_key_map.l['I'] = 'diagnostics'
map <leader>lj <Plug>(coc-float-jump)<cr>
let g:which_key_map.l['j'] = 'float jump'
map <leader>ll <Plug>(coc-codelens-action)<cr>
let g:which_key_map.l['l'] = 'code lens'
map <leader>ln <Plug>(coc-diagnostic-next)<cr>
let g:which_key_map.l['n'] = 'next diagnostic'
map <leader>lN <Plug>(coc-diagnostic-next-error)<cr>
let g:which_key_map.l['N'] = 'next error'
map <leader>lo :Vista!!<cr>
let g:which_key_map.l['o'] = 'outline'
map <leader>lO :CocList outline<cr>
let g:which_key_map.l['O'] = 'outline'
map <leader>lp <Plug>(coc-diagnostic-prev)<cr>
let g:which_key_map.l['p'] = 'prev diagnostic'
map <leader>lP <Plug>(coc-diagnostic-prev-error)<cr>
let g:which_key_map.l['P'] = 'prev error'
map <leader>lq <Plug>(coc-fix-current)<cr>
let g:which_key_map.l['q'] = 'quickfix'
map <leader>lr <Plug>(coc-references)<cr>
let g:which_key_map.l['r'] = 'references'
map <leader>lR <Plug>(coc-rename)<cr>
let g:which_key_map.l['R'] = 'rename'
map <leader>ls :CocList -I symbols<cr>
let g:which_key_map.l['s'] = 'references'
map <leader>lS :CocList snippets<cr>
let g:which_key_map.l['S'] = 'snippets'
map <leader>lt <Plug>(coc-type-definition)<cr>
let g:which_key_map.l['t'] = 'type definition'
map <leader>lu :CocListResume<cr>
let g:which_key_map.l['u'] = 'resume list'
map <leader>lU :CocUpdate<cr>
let g:which_key_map.l['U'] = 'update CoC'
map <leader>lz :CocDisable<cr>
let g:which_key_map.l['z'] = 'disable CoC'
map <leader>lZ :CocEnable<cr>
let g:which_key_map.l['Z'] = 'enable CoC'

" T is for terminal
if !empty(maparg('<leader>T', 'n'))
  unmap <leader>T
endif
let g:which_key_map.T = { 'name' : '+tabline' }

map <leader>Tb :XTabListBuffers<cr>
let g:which_key_map.T['b'] = 'list buffers'
map <leader>Td :XTabCloseBuffer<cr>
let g:which_key_map.T['d'] = 'close buffer'
map <leader>TD :XTabDeleteTab<cr>
let g:which_key_map.T['D'] = 'close tab'
map <leader>Th :XTabHideBuffer<cr>
let g:which_key_map.T['h'] = 'hide buffer'
map <leader>Ti :XTabInfo<cr>
let g:which_key_map.T['i'] = 'info'
map <leader>Tl :XTabLock<cr>
let g:which_key_map.T['l'] = 'lock tab'
map <leader>Tm :XTabMode<cr>
let g:which_key_map.T['m'] = 'toggle mode'
map <leader>Tn :tabNext<cr>
let g:which_key_map.T['n'] = 'next tab'
map <leader>TN :XTabMoveBufferNext<cr>
let g:which_key_map.T['N'] = 'buffer->'
map <leader>Tt :tabnew<cr>
let g:which_key_map.T['t'] = 'new tab'
map <leader>Tp :tabprevious<cr>
let g:which_key_map.T['p'] = 'prev tab'
map <leader>TP :XTabMoveBufferPrev<cr>
let g:which_key_map.T['P'] = '<-buffer'
map <leader>Tx :XTabPinBuffer<cr>
let g:which_key_map.T['x'] = 'pin buffer'

" w is for wiki
if !empty(maparg('<leader>w', 'n'))
  unmap <leader>w
endif
let g:which_key_map.w = { 'name' : '+wiki' }
map <leader>ww <Plug>VimwikiIndex<cr>
let g:which_key_map.w['w'] = 'ncdu'
map <leader>wn <plug>(wiki-open)<cr>
let g:which_key_map.w['n'] = 'ncdu'
map <leader>wj <plug>(wiki-journal)<cr>
let g:which_key_map.w['j'] = 'ncdu'
map <leader>wR <plug>(wiki-reload)<cr>
let g:which_key_map.w['R'] = 'ncdu'
map <leader>wc <plug>(wiki-code-run)<cr>
let g:which_key_map.w['c'] = 'ncdu'
map <leader>wb <plug>(wiki-graph-find-backlinks)<cr>
let g:which_key_map.w['b'] = 'ncdu'
map <leader>wg <plug>(wiki-graph-in)<cr>
let g:which_key_map.w['g'] = 'ncdu'
map <leader>wG <plug>(wiki-graph-out)<cr>
let g:which_key_map.w['G'] = 'ncdu'
map <leader>wl <plug>(wiki-link-toggle)<cr>
let g:which_key_map.w['l'] = 'ncdu'
map <leader>wd <plug>(wiki-page-delete)<cr>
let g:which_key_map.w['d'] = 'ncdu'
map <leader>wr <plug>(wiki-page-rename)<cr>
let g:which_key_map.w['r'] = 'ncdu'
map <leader>wt <plug>(wiki-page-toc)<cr>
let g:which_key_map.w['t'] = 'ncdu'
map <leader>wT <plug>(wiki-page-toc-local)<cr>
let g:which_key_map.w['T'] = 'ncdu'
map <leader>we <plug>(wiki-export)<cr>
let g:which_key_map.w['e'] = 'ncdu'
map <leader>wu <plug>(wiki-list-uniq)<cr>
let g:which_key_map.w['u'] = 'ncdu'
map <leader>wU <plug>(wiki-list-uniq-local)<cr>
let g:which_key_map.w['U'] = 'ncdu'

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
