if exists("b:current_syntax")
  finish
endif
let s:cpo_save = &cpo
set cpo&vim

syn keyword mcbirKeyword end fn mov pop push

syn keyword mcbirType i8 i16 i32 i64 u8 u16 u32 u64

syn match   mcbirComment /;.*/ contains=yzTodo
syn match   mcbirNumber /\<[0-9]\+\>/ nextgroup=mcbirMemory skipwhite
syn match   mcbirRegister /\(%[0-9]\+\)\|\(%sp\|%bp\)/

hi def link mcbirComment     Comment
hi def link mcbirKeyword     Keyword
hi def link mcbirNumber      Number
hi def link mcbirRegister    PreProc
hi def link mcbirTodo        Todo
hi def link mcbirType        Type

let b:current_syntax = "mcbir"
