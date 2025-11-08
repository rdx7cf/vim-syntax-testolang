" Vim Syntax File
" Language: TESTO-LANG
" Maintainer: Ruslan Evdokimov <rdx7cf@bk.ru>
"

syn	keyword	teType		machine flash network param test macro
syn	keyword	teConstant	true false
syn	keyword	teStatement	break continue
syn	keyword	teConditional	if else
syn	keyword	teLoop		for
syn	region	teString	start=+"+	skip=+\\"+	end=+"+
syn	region	teExString	start=+"""+	skip=+\\"""+	end=+"""+
syn	match	teComment	/#.*$/

