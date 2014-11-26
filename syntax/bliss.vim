" Vim syntax file
" Language: BLISS
" Filenames: *.bli
" Maintainer: http://github.com/malleusinferni

if exists('b:current_syntax')
  finish
endif

syn match blissStmtTerm '[;]'

syn keyword blissStorageClass OWN LOCAL MACRO FORWARD EXTERNAL
      \ SIGNED UNSIGNED

syn keyword blissPairedWord BEGIN END MODULE ELUDOM
syn keyword blissConditional IF THEN ELSE SET TES CASE
syn keyword blissLoopControl INCR EXITLOOP FROM TO
syn keyword blissLabel INRANGE OUTRANGE

syn keyword blissComparison EQL GTR LSS EQLU GTRU LSSU
syn match blissInfixOp '[-+*=:,]'

syn match blissFetch '[.]\+\w\+'

syn keyword blissDecl ROUTINE nextgroup=blissRoutine skipwhite
syn match blissRoutine '[A-Z][A-Z0-9]*' display contained
syn keyword blissBuiltinType NOVALUE VECTOR BYTE BITVECTOR BLOCK BLOCKVECTOR
      \ LONG WORD

syn match blissBuiltinConst '%\(BPUNIT\|BPADDR\|BPVAL\|UPVAL\)'

syn match blissNumeral '\<[0-9]\+'

syn match blissLineComment '!.*' excludenl
syn region blissEmbeddedComment start='%(' end=')%'

syn region blissQuotedString start="'" skip="''" end="'"

hi link blissStmtTerm Delimiter
hi link blissStorageClass StorageClass
hi link blissPairedWord Statement
hi link blissConditional Conditional
hi link blissLoopControl Repeat
hi link blissLabel Label
hi link blissComparison Operator
hi link blissInfixOp Operator
hi link blissFetch Identifier
hi link blissDecl Statement
hi link blissRoutine Function
hi link blissBuiltinType Type
hi link blissBuiltinConst Constant
hi link blissNumeral Number
hi link blissLineComment Comment
hi link blissEmbeddedComment Comment
hi link blissQuotedString String

let b:current_syntax = 'bliss'
