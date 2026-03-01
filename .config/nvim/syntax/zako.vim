if exists("b:current_syntax")
  finish
endif
let s:cpo_save = &cpo
set cpo&vim

syn keyword zakoType i8 i16 i32 i64 u8 u16 u32 u64 char contained
syn region  zakoArray start=/\[/ end=/\]/ contained contains=zakoArray,zakoType,zakoNumber skipwhite
syn match   zakoNumber /\<[0-9]\+\>/
syn region  zakoCharacter start=/'/ skip=/\\"/ end=/'/
syn region  zakoString start=/"/ skip=/\\"/ end=/"/

syn keyword zakoKeywordIf     if
syn keyword zakoKeywordMut    mut nextgroup=zakoIdentAndType skipwhite
syn keyword zakoKeywordPub    pub nextgroup=zakoFunctionPub skipwhite
syn keyword zakoKeywordReturn return
syn keyword zakoKeywordThen   then
syn keyword zakoKeywordWhile  while

syn match zakoIdentAndType /\h\w*/ contained nextgroup=zakoArray,zakoType skipwhite

" Comment
syn keyword zakoTodo TODO contained
syn match   zakoComment /--.*/ contains=zakoTodo

" Keyword let
syn keyword zakoKeywordLet let nextgroup=zakoKeywordMut,zakoIdentAndType skipwhite

" Function
syn keyword zakoKeywordFn fn nextgroup=zakoFunctionArgs,zakoType skipwhite
syn match   zakoFunction /^\h\w*/ nextgroup=zakoKeywordFn skipwhite
syn match   zakoFunctionPub /\h\w*/ contained nextgroup=zakoKeywordFn skipwhite
syn region  zakoFunctionArgs start=/(/ end=/)/ contained contains=zakoIdentAndType nextgroup=zakoType skipwhite

syn keyword zakoKeywordSyscall syscall nextgroup=zakoSyscallNumber skipwhite
syn match zakoSyscallNumber /\<[0-9]\+\>/ nextgroup=zakoFunctionArgs,zakoType skipwhite

hi def link zakoCharacter      Character
hi def link zakoComment        Comment
hi def link zakoFunction       Function
hi def link zakoFunctionPub    Function
hi def link zakoIdentAndType   Identifier
hi def link zakoKeywordFn      Keyword
hi def link zakoKeywordIf      Keyword
hi def link zakoKeywordMut     Keyword
hi def link zakoKeywordLet     Keyword
hi def link zakoKeywordPub     Keyword
hi def link zakoKeywordReturn  Keyword
hi def link zakoKeywordSyscall Keyword
hi def link zakoKeywordThen    Keyword
hi def link zakoKeywordWhile   Keyword
hi def link zakoNumber         Number
hi def link zakoSyscallNumber  Number
hi def link zakoString         String
hi def link zakoType           Type

let b:current_syntax = "zako"
