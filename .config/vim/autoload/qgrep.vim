" Quick grep

fun! qgrep#grep(pattern)
	let suffix = '**/*'
	if exists('g:qgrep_suffixes')
		let suffix = '**/*.{' .. g:qgrep_suffixes .. '}'
	endif
	exe 'vimgrep ' .. a:pattern .. ' ' .. suffix
endfun
