if exists("did_load_filetypes")
  finish
endif


" jump to last editting position in the file
" see :help last-position-jump
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif


augroup filetypedetect

" autocmd! BufReadPost,BufNewFile   *.md        setfiletype markdown
  autocmd! BufReadPost,BufNewFile   *.pasm      setfiletype pasm
  autocmd! BufReadPost,BufNewFile   *.sql       setfiletype mysql
  autocmd! BufReadPost,BufNewFile   *.txt       setfiletype txt
  autocmd! BufReadPost,BufNewFile   *.inc       setfiletype php
  autocmd! BufReadPost,BufNewFile   *.go        setfiletype go
  autocmd! BufReadPost,BufNewFile   *.rcp       setfiletype txt
  autocmd! BufReadPost,BufNewFile   *.json      setfiletype javascript
  autocmd! BufReadPost,BufNewFile   .tmux.conf*,tmux.conf* setfiletype tmux

augroup END


