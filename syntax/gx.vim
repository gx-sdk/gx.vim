" Vim syntax file
" Languge: gx
" Maintainer: Alex Iadicicco

if exists("b:current_syntax")
  finish
endif

syn keyword gxType bitvec                   nextgroup=gxTypeParam
syn keyword gxType struct

syn keyword gxType u8
syn keyword gxType u16
syn keyword gxType u32
syn keyword gxType s8
syn keyword gxType s16
syn keyword gxType s32
syn keyword gxType bcd                      nextgroup=gxTypeParam
syn keyword gxType fixed                    nextgroup=gxTypeParam

syn keyword gxStorage region                nextgroup=gxStorageParam
syn keyword gxStorage ram
syn keyword gxStorage rom

syn match gxStorage '@[a-z]*'               nextgroup=gxStorageParam

syn keyword gxDeclaration fn                nextgroup=gxFunction
syn keyword gxDeclaration const             nextgroup=gxVariable
syn keyword gxDeclaration pub
syn keyword gxDeclaration type              nextgroup=gxType
syn keyword gxDeclaration unit              nextgroup=gxUnit
syn keyword gxDeclaration var

syn keyword gxKeyword case
syn keyword gxKeyword default
syn keyword gxKeyword sizeof
syn keyword gxKeyword in

syn keyword gxStatement break
syn keyword gxStatement continue
syn keyword gxStatement else
syn keyword gxStatement for
syn keyword gxStatement if
syn keyword gxStatement loop
syn keyword gxStatement repeat
syn keyword gxStatement return
syn keyword gxStatement while

syn match gxNumber '\<\d\+\>'
syn match gxNumber '\<[-+]\d\+\>'

syn match gxUnit     '\s*[_0-9a-zA-Z]*'     contained
syn match gxFunction '\s*[_0-9a-zA-Z]*'     contained
syn match gxType     '\s*[_0-9a-zA-Z]*'     contained

syn keyword gxTodo TODO                     contained
syn keyword gxTodo FIXME                    contained
syn keyword gxTodo XXX                      contained
syn keyword gxTodo NOTE                     contained
syn match gxComment '#.*$'                  contains=gxTodo

syn match gxTypeParam '<[^>]*>'             contained
syn match gxStorageParam '([^)]*)'          contained

let b:current_syntax = "gx"
hi def link gxTodo                          Todo
hi def link gxComment                       Comment
hi def link gxStatement                     Statement
hi def link gxNumber                        Number
hi def link gxType                          Type
hi def link gxKeyword                       Keyword
hi def link gxDeclaration                   Keyword
hi def link gxStorage                       Special
hi def link gxStorageParam                  Special
hi def link gxUnit                          Identifier
hi def link gxFunction                      Function
hi def link gxType                          Type
