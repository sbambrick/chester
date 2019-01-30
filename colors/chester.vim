" {{{ Setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="chester"
" }}}
" {{{ Colors
let s:w    =['#ffffff',  '235']
let s:vlg  =['#dbe6ec',  '237']
let s:lg   =['#99a9b3',  '240']
let s:g    =['#67747c',  '243']
let s:dg   =['#3b444f',  '145']
let s:vdg  =['#2c3643',  '251']
let s:c    =['#27dede',  '252']
let s:b    =['#288ad6',  '253']
let s:p    =['#ff708e',  '203']
let s:g    =['#16c98d',  '209']
let s:r    =['#fa5e5b',  '221']
let s:o    =['#ffc83f',  '114']
let s:lo   =['#feef6d',   '73']
let s:sb   =['#8abee5',   '68']
let s:sg   =['#c7e6aa',  '176']
let s:none =['NONE',    'NONE']
" }}}
" {{{ Highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}
" {{{ call <sid>:hi(group,         fg,       bg,       gui,         guisp)
call <sid>hi('Comment',            s:lg,     '',       s:italic,    '')
" }}}
