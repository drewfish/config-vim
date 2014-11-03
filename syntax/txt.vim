" Vim syntax file
" Language:		simple text files for notes and outlines
" Maintainer:	Drew Folta <drew@folta.net>
" Last Change:	

" based on config.vim by Christian Hammesr


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match   txtheader     "^\s*\u\L\+\>"
syn match   txtdelimiter "[^A-Za-z ]"
"yn match   txtdelimiter "[=|&\*\+\-\<\>()\[\];,:/$]"
"yn match   txtoperator  "[]"
syn match   txtcomment   "#.*"
"yn match   txtfunction  "^\<[A-Z_][A-Z0-9_]*\>$"
syn match   txtnumber    "[-+]\=\d\+\(\.\d*\)\="
"yn match   txtnumber    "\<\S\{-}[-+]\=\d\+\S\{-}\>"
syn region  txtcomment   start=+(+ skip=+\\)+ end=+)+
"yn region  txtstring    start=+`+ skip=+\\'+ end=+'+
"yn region  txtstring    start=+`+ skip=+\\'+ end=+`+

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_txt_syntax_inits")
  if version < 508
    let did_txt_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink txtdelimiter Delimiter
" HiLink txtoperator  Operator
  HiLink txtcomment   Comment
" HiLink txtfunction  Function
  HiLink txtnumber    Number
  HiLink txtheader    Function

  delcommand HiLink
endif

let b:current_syntax = "txt"

" vim: ts=4
