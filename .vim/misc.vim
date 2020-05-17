" Change the titlebar to what I'm editing
let &titlestring = expand("%:t")
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

let &titleold = $TITLE

if exists('$TMUX')
  autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
  autocmd VimLeave * call system("tmux setw automatic-rename")
  autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
  set title
endif
