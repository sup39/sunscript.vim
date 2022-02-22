if exists("b:current_syntax")
  finish
endif

" literal-keyword
"" loop
syn keyword sunKeyword break continue return
"" flow
syn keyword sunKeyword yield exit block unlock
"" storage
syn keyword sunKeyword const var local

" import
syn keyword sunKeyword import

" CONDITIONALS
syn keyword sunKeyword do while for else if

" function
syn keyword sunKeyword function builtin

" comment
syn region sunComment start='\V/*' end='\V*/'
syn match sunComment '//.*'

" literal
"" address
syn match sunNumber '\v\$[0-9A-Fa-f]{8}>'
"" hexadecimal
syn match sunNumber '\v<0x[0-9A-Fa-f]+>'
"" integer
syn match sunNumber '\v<[0-9]+>'
"" decimal
syn match sunNumber '\v<[0-9]+\.[0-9]+>'
"" string
syn match sunString '\v"%([^"\\]|\\%(\'\'|["\\0abfnrtv]|x[0-9A-Fa-f]{1,4}|u[0-9A-Fa-f]{4}|U[0-9A-Fa-f]{8}))*"'
"" bool
syn keyword sunBoolean true false

"""" hi
hi link sunKeyword Keyword
hi link sunComment Comment
hi link sunNumber Number
hi link sunString String
hi link sunBoolean Boolean

let b:current_syntax = 'sunscript'
