" TODO
"   separate commands vs parameters
"   classify (common, notable, bland) commands
"   classify parameters
"   classify command:parameter combos
" TO REVIEW
"   https://en.wikipedia.org/wiki/G-code
"   http://wiki.linuxcnc.org/uploads/ngc.vim

" quit if already loaded
if exists("b:current_syntax")
    finish
endif

syn case ignore

syn  match gcodeComment ";.*"
syn  match gcodeGCodes "G\d\+"
syn  match gcodeMCodes "M\d\+"

syntax match gcodeAxis "\<[XYZ]-\?\d\+\>"
syntax match gcodeAxis "\<[XYZ]-\?\.\d\+\>"
syntax match gcodeAxis "\<[XYZ]-\?\d\+\."
syntax match gcodeAxis "\<[XYZ]-\?\d\+\.\d\+\>"

syntax match gcodeExtrude "\<[E]-\?\d\+\>"
syntax match gcodeExtrude "\<[E]-\?\.\d\+\>"
syntax match gcodeExtrude "\<[E]-\?\d\+\."
syntax match gcodeExtrude "\<[E]-\?\d\+\.\d\+\>"

hi def link gcodeComment Comment
hi def link gcodeGCodes MoreMsg
hi def link gcodeMCodes MoreMsg
hi def link gcodeAxis Keyword
hi def link gcodeExtrude SpecialChar

let b:current_syntax = "gcode"
