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

" pattern notes
"   pattern ::= branch \| branch    ...
"   branch  ::= concat \& concat    ...
"   concat  ::= piece piece         ...
"   piece   ::= atom
"               atom multi
"   atom    ::= oridinary-atom
"               \( pattern \)
"               \%( pattern \)
"               \z( pattern \)
" syntax pattern always act with magic
"   \s      whitespace char
"   \u      uppercase char
"   \L      non-lowercase char
"   \<      beginning of word
"   \>      end of word
"   ^       start of line
"   $       end of line
"   .       any char
"   *       previous atom zero-or-more times
"   \+      previous atom one-or-more times
"   \=      previous atom one-or-one times
"   \?      previous atom one-or-one times
"   \(\)    group into an atom
"   \|      alternatives
"   \a      alphabetic char
"   \\      literal backslash
"   \.      literal dot
"   {       literal {
"   a       literal a
"   \^      literal ^
"

syn match   txtheader     "^\s*\u\+\>" display
syn match   txtdelimiter "[^A-Za-z ]+" display
"yn match   txtdelimiter "[=|&\*\+\-\<\>()\[\];,:/$]"
"yn match   txtoperator  "[]"
syn match   txtcomment   "#.*" display
"yn match   txtfunction  "^\<[A-Z_][A-Z0-9_]*\>$"
syn match   txtnumber    "[-+]\?\d\+\(\.\d*\)\?"
"yn match   txtnumber    "\<\S\{-}[-+]\?\d\+\S\{-}\>"
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
