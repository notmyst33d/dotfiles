
" If you are distributing this theme, please replace this comment
" with the appropriate license attributing the original VS Code
" theme author.


" Owokai - A nice dark theme

" ==========> Reset
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'owokai'

" ==========> Highlight function
function! s:h(face, guibg, guifg, ctermbg, ctermfg, gui)
  let l:cmd="highlight " . a:face
  
  if a:guibg != ""
    let l:cmd = l:cmd . " guibg=" . a:guibg
  endif

  if a:guifg != ""
    let l:cmd = l:cmd . " guifg=" . a:guifg
  endif

  if a:ctermbg != ""
    let l:cmd = l:cmd . " ctermbg=" . a:ctermbg
  endif

  if a:ctermfg != ""
    let l:cmd = l:cmd . " ctermfg=" . a:ctermfg
  endif

  if a:gui != ""
    let l:cmd = l:cmd . " gui=" . a:gui
  endif

  exec l:cmd
endfun


" ==========> Colors dictionary

" GUI colors dictionary (hex)
let s:hex = {}
" Terminal colors dictionary (256)
let s:bit = {}

let s:hex.color0="#1c1c1b"
let s:hex.color1="#ebe9d7"
let s:hex.color2="#0e0e0e"
let s:hex.color3="#494948"
let s:hex.color4="#262625"
let s:hex.color5="#4e4e4d"
let s:hex.color6="#30302f"
let s:hex.color7="#626261"
let s:hex.color8="#393835"
let s:hex.color9="#aaafa0"
let s:hex.color10="#52514e"
let s:hex.color11="#c3c8b9"
let s:hex.color12="#676766"
let s:hex.color13="#d280a5"
let s:hex.color14="#3a3a39"
let s:hex.color15="#fffff5"
let s:hex.color16="#f5f3e1"
let s:hex.color17="#3f3f3e"
let s:hex.color18="#7b785a"
let s:hex.color19="#8f9396"
let s:hex.color20="#e694b9"
let s:hex.color21="#dbad49"
let s:hex.color22="#64b358"
let s:hex.color23="#80a9f5"

let s:bit.color17="71"
let s:bit.color14="101"
let s:bit.color18="111"
let s:bit.color11="175"
let s:bit.color16="179"
let s:bit.color12="231"
let s:bit.color2="233"
let s:bit.color0="234"
let s:bit.color4="235"
let s:bit.color6="236"
let s:bit.color8="237"
let s:bit.color3="238"
let s:bit.color5="239"
let s:bit.color7="241"
let s:bit.color15="246"
let s:bit.color9="248"
let s:bit.color10="251"
let s:bit.color1="254"
let s:bit.color13="255"


" ==========> General highlights 
call s:h("Normal", s:hex.color0, s:hex.color1, s:bit.color0, s:bit.color1, "none")
call s:h("Cursor", "", s:hex.color2, "", s:bit.color2, "none")
call s:h("Visual", s:hex.color3, "", s:bit.color3, "", "none")
call s:h("ColorColumn", s:hex.color4, "", s:bit.color4, "", "none")
call s:h("LineNr", "", s:hex.color5, "", s:bit.color5, "none")
call s:h("CursorLine", s:hex.color6, "", s:bit.color6, "", "none")
call s:h("CursorLineNr", "", s:hex.color7, "", s:bit.color7, "none")
call s:h("CursorColumn", s:hex.color6, "", s:bit.color6, "", "none")
call s:h("StatusLineNC", s:hex.color8, s:hex.color9, s:bit.color8, s:bit.color9, "none")
call s:h("StatusLine", s:hex.color10, s:hex.color11, s:bit.color5, s:bit.color10, "none")
call s:h("VertSplit", "", s:hex.color12, "", s:bit.color7, "none")
call s:h("Folded", s:hex.color6, s:hex.color13, s:bit.color6, s:bit.color11, "none")
call s:h("Pmenu", s:hex.color14, s:hex.color15, s:bit.color8, s:bit.color12, "none")
call s:h("PmenuSel", s:hex.color4, s:hex.color16, s:bit.color4, s:bit.color13, "none")
call s:h("EndOfBuffer", s:hex.color0, s:hex.color17, s:bit.color0, s:bit.color8, "none")
call s:h("NonText", s:hex.color0, s:hex.color17, s:bit.color0, s:bit.color8, "none")


" ==========> Syntax highlights
call s:h("Comment", "", s:hex.color18, "", s:bit.color14, "none")
call s:h("Constant", "", s:hex.color19, "", s:bit.color15, "none")
call s:h("Special", "", s:hex.color19, "", s:bit.color15, "none")
call s:h("Function", "", s:hex.color20, "", s:bit.color11, "none")
call s:h("Statement", "", s:hex.color21, "", s:bit.color16, "none")
call s:h("Operator", "", s:hex.color1, "", s:bit.color1, "none")
call s:h("PreProc", "", s:hex.color21, "", s:bit.color16, "none")
call s:h("Type", "", s:hex.color21, "", s:bit.color16, "none")
call s:h("String", "", s:hex.color22, "", s:bit.color17, "none")
call s:h("Number", "", s:hex.color23, "", s:bit.color18, "none")

highlight link cStatement Statement
highlight link cSpecial Special


" Generated using https://github.com/nice/themeforge
" Feel free to remove the above URL and this line.
