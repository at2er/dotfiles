let s:enabled = 0

fun! qfdiag#clear()
	let s:enabled = 0
	call sign_unplace('qfdiag-signs')
endfun

fun! qfdiag#place()
	call qfdiag#clear()
	let s:enabled = 1
	for i in getqflist()
		if i.lnum < 1 || !i.valid || i.bufnr < 1 || !bufexists(i.bufnr)
			continue
		endif
		call sign_place(0, 'qfdiag-signs', 'qfdiag-sign', i.bufnr,
				\ {'lnum' : i.lnum})
	endfor
endfun

fun! qfdiag#toggle()
	if s:enabled
		call qfdiag#clear()
	else
		call qfdiag#place()
	endif
endfun
