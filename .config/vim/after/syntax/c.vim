syntax match cCustomSpeical "[*,.:;]"
syntax match cCustomSpeical "->"
syntax match cCustomParen "[()]" containedin=cParen

hi link cCustomComma    Operator
hi link cCustomSpeical  Operator
hi link cCustomParen    Operator
