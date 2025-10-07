if exists('g:loaded_qgrep')
  finish
endif
let g:loaded_qgrep = 1

command! -nargs=1 QGrep call qgrep#grep(<q-args>)
