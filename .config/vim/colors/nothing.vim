hi clear
let g:colors_name = 'nothing'

" UI
hi! link ColorColumn  CursorColumn
hi! link CursorColumn CursorLine
hi! link Directory    Special
hi! link ErrorMsg     Error
hi! link Folded       PmenuSel
hi! link PmenuSbar    Pmenu 
hi! link PmenuThumb   PmenuSel
hi! link TabLine      StatusLineNC
hi! link TabLineSel   StatusLine
hi! link TabLineFill  StatusLineNC
hi! link Title        Special
hi! link WildMenu     PmenuSel
hi SignColumn       guifg=#dadada guibg=#202020
hi MatchParen       guifg=#dadada guibg=#202020
hi CursorLine       guifg=NONE    guibg=#202020 gui=NONE    cterm=NONE    term=NONE
hi VertSplit        guifg=#000000 guibg=#000000
hi IncSearch        guifg=#000000 guibg=#00afff gui=reverse
hi NonText          guifg=#808080 guibg=NONE
hi Normal           guifg=#dadada guibg=NONE
hi Pmenu            guifg=#888888 guibg=#000000
hi PmenuSel         guifg=#888888 guibg=#202020
hi Question         guifg=#00aa50 guibg=NONE    gui=bold    cterm=bold    term=bold
hi Search           guifg=#000000 guibg=#00afff gui=NONE    cterm=NONE    term=NONE
hi StatusLine       guifg=#dadada guibg=NONE    gui=bold    cterm=bold    term=bold
hi StatusLineNC     guifg=#808080 guibg=NONE    gui=NONE    cterm=NONE    term=NONE
hi StatusLineTerm   guifg=#dadada guibg=#006024 gui=bold    cterm=bold    term=bold
hi StatusLineTermNC guifg=#dadada guibg=#006024
hi Visual           guifg=#000000 guibg=#ffaf00 gui=NONE    cterm=NONE    term=NONE

" Syntax
hi! link Constant   Normal
hi! link Identifier Normal
hi! link Statement  Special
hi! link Label      Special
hi! link PreProc    Normal
hi! link Type       Normal
hi Comment     guifg=#808080 guibg=NONE    gui=bold cterm=bold term=bold
hi Constant    guifg=#dadada guibg=NONE    gui=bold cterm=bold term=bold
hi Special     guifg=#808080 guibg=NONE   
hi Todo        guifg=NONE    guibg=#202020 gui=bold cterm=bold term=bold
hi Error       guifg=#dadada guibg=#880000 
