" Vim Syntax File
" Language: TESTO-LANG
" Maintainer: Ruslan Evdokimov <rdx7cf@bk.ru>
"

syn	keyword	teType		machine flash network param test dvd
syn	keyword	teInclude	include
syn	keyword teMacro		macro
syn	keyword	teConstant	true false
syn	keyword	teStatement	abort print type wait sleep mouse click lclick rclick dclick hold release lbtn rbtn check press plug unplug start stop shutdown exec copyto copyfrom break continue
syn	keyword	teConditional	if else
syn	keyword	teRepeat	for IN RANGE
syn	region	teString	start=+"+	skip=+\\"+	end=+"+
syn	region	teExString	start=+"""+	skip=+\\"""+	end=+"""+
syn	match	teComment	/#.*$/

hi 	def 	link 	teType 		Type
hi	def	link	teInclude	Include
hi	def	link	teMacro		Macro
hi 	def 	link 	teConstant 	Constant
hi 	def 	link 	teStatement 	Statement
hi 	def 	link 	teConditional 	Conditional
hi 	def 	link 	teRepeat	Repeat
hi 	def 	link 	teString 	String
hi 	def 	link 	teExString 	String
hi 	def 	link 	teComment 	Comment
