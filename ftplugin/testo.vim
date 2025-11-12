setlocal autoindent
setlocal smartindent
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

"function! s:DynHi()
"	syn clear teIdentifier
"	
"	
"	let l:ids = []
"	let l:matchdef = '^\s*\(machine\|flash\|network\|param\|test\|dvd\|nic\|video\|disk\|shared_folder\)\s*\zs\w\+\ze:\{,1}\s*{\{,1}'
"	let l:matchusg = '^\s*\zs\(if\|else\)\@!\w\+\ze\s*{\{1}'
"
"	for row in getline(1, '$')
"		if row =~ l:matchdef
"			call add(l:ids, matchstr(row, l:matchdef))
"		elseif row =~ l:matchusg
"			call add(l:ids, matchstr(row, l:matchusg))
"		endif
"	endfor
"
"	if !empty(l:ids)
"		execute 'syn keyword teIdentifier ' . join(l:ids, ' ')
"	endif
"
"	hi teIdentifier ctermfg=Brown guifg=Brown 
"	
"
"endfunction
"
"autocmd BufReadPost,BufNewFile,BufWritePost,TextChanged,TextChangedI,BufEnter,BufLeave,VimResized,InsertEnter,InsertLeave *.testo call s:DynHi()
