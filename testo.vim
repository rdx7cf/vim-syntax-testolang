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


syn	region	teRef		start=+${+			end=+}+
syn	region	teString	start=+"+	skip=+\\"+	end=+"+		contains=teRef
syn	region	teExString	start=+"""+	skip=+\\"""+	end=+"""+	contains=teRef
"syn	region	teBrackets	start=+{+			end=+}+		contains=teString,teExString

syn	keyword	teAttribute	cpus ram disk iso nic video loader qemu_enable_usb3 size source attached_to attached_to_dev adapter_type mac shared_folder host_path readonly fs folder mode 

syn	match	teComment	/#.*$/

hi 	def 	link 	teType 		Type
hi	def	link	teInclude	Include
hi	def	link	teMacro		Function
hi 	def 	link 	teConstant 	Constant
hi 	def 	link 	teStatement 	Statement
hi 	def 	link 	teConditional 	Conditional
hi 	def 	link 	teRepeat	Repeat
hi	def	link	teAttribute	Special
hi	def	link	teRef		Identifier
hi 	def 	link 	teString 	String
hi 	def 	link 	teExString 	String
hi 	def 	link 	teComment 	Comment
