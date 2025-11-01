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
hi! link SpecialKey   Comment
hi! link TabLine      StatusLineNC
hi! link TabLineSel   StatusLine
hi! link TabLineFill  StatusLineNC
hi! link Title        Comment
hi! link WildMenu     PmenuSel
hi SignColumn       guifg=#dadada guibg=NONE    ctermfg=white ctermbg=NONE
hi MatchParen       guifg=#dadada guibg=#202020 ctermfg=NONE  ctermbg=black gui=bold cterm=bold term=bold
hi CursorLine       guifg=NONE    guibg=#202020 ctermfg=NONE  ctermbg=black gui=NONE cterm=NONE term=NONE
hi VertSplit        guifg=#202020 guibg=#202020 ctermfg=black ctermbg=black gui=NONE cterm=NONE term=NONE
hi IncSearch        guifg=#000000 guibg=#00afff ctermfg=NONE  ctermbg=blue gui=reverse cterm=reverse term=reverse
hi NonText          guifg=#808080 guibg=NONE    ctermfg=black ctermbg=NONE
hi Normal           guifg=#c7c7c7 guibg=NONE    ctermfg=white ctermbg=NONE
hi Pmenu            guifg=#888888 guibg=#000000 ctermfg=white ctermbg=black
hi PmenuSel         guifg=#c7c7c7 guibg=#202020 ctermfg=black ctermbg=white
hi Question         guifg=#00aa50 guibg=NONE    ctermfg=green ctermbg=NONE  gui=bold cterm=bold term=bold
hi Search           guifg=#000000 guibg=#ddad00 ctermfg=black ctermbg=blue  gui=NONE cterm=NONE term=NONE
hi StatusLine       guifg=#8a8a8a guibg=NONE    ctermfg=white ctermbg=NONE  gui=bold cterm=bold term=bold
hi StatusLineNC     guifg=#8a8a8a guibg=NONE    ctermfg=white ctermbg=NONE  gui=NONE cterm=NONE term=NONE
hi StatusLineTerm   guifg=#00da6a guibg=NONE    ctermfg=green ctermbg=NONE  gui=bold cterm=bold term=bold
hi StatusLineTermNC guifg=#00da6a guibg=NONE    ctermfg=green ctermbg=NONE  gui=NONE cterm=NONE term=NONE
hi Visual           guifg=#000000 guibg=#ffaf00 ctermfg=black ctermbg=brown gui=NONE cterm=NONE term=NONE

" Syntax
hi! link Constant       Normal
hi! link String         Constant
hi! link Character      Constant
hi! link Number         Constant
hi! link Boolean        Constant
hi! link Float          Constant
hi! link Identifier     Normal
hi! link Function       Identifier
hi! link Statement      Special
hi! link Conditional    Statement
hi! link Repeat         Statement
hi! link Label          Special
hi! link Operator       Statement
hi! link Keyword        Statement
hi! link Exception      Statement
hi! link PreProc        Normal
hi! link Include        PreProc
hi! link Define         PreProc
hi! link Macro          PreProc
hi! link PreCondit      PreProc
hi! link Type           Normal
hi! link StorageClass   Type
hi! link Structure      Type
hi! link Typedef        Type
hi! link SpecialChar    Special
hi! link Tag            Special
hi! link Delimiter      Special
hi! link SpecialComment Special
hi! link Debug          Special
hi Comment     guifg=#808080 guibg=NONE    ctermfg=darkgray ctermbg=NONE gui=bold cterm=bold term=bold
hi Constant    guifg=#d3d3d3 guibg=NONE    ctermfg=gray     ctermbg=NONE gui=bold cterm=bold term=bold
hi Special     guifg=#8a8a8a guibg=NONE    ctermfg=gray     ctermbg=NONE
hi Todo        guifg=#ffaf00 guibg=#202020 ctermfg=yellow    ctermbg=black gui=bold cterm=bold term=bold
hi Error       guifg=#f80000 guibg=NONE    ctermfg=red      ctermbg=NONE
