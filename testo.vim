" Vim Syntax File
" Language: TESTO-LANG
" Maintainer: Ruslan Evdokimov <rdx7cf@bk.ru>
"

syn	keyword	teType		machine flash network param test dvd
syn	keyword	teInclude	include
syn	keyword	teConstant	true false
syn	keyword teMacro		macro
syn	keyword	teStatement	abort print type wait sleep mouse click lclick rclick dclick hold release lbtn rbtn check press plug unplug start stop shutdown exec copyto copyfrom break continue NOT AND OR DEFINED LESS GREATER EQUAL STRLESS STRGREATER STREQUAL 
syn	keyword	teConditional	if else
syn	keyword	teRepeat	for IN RANGE


syn	region	teBlock		start=+{+			end=+}+		transparent
syn	region	teReference	start=+${+			end=+}+		containedin=teString,teExString
syn	region	teString	start=+"+	skip=+\\"+	end=+"+			
syn	region	teExString	start=+"""+	skip=+\\"""+	end=+"""+	

syn 	match	teMemSpecifier	/\d\+\(K\|M\|G\)[bB]/
syn	match	teTimeSpecifier	/\d\+\(ms\|s\|m\|h\)/

syn	keyword	teAttribute	cpus ram disk iso nic video loader qemu_enable_usb3 size source attached_to attached_to_dev adapter_type mac shared_folder host_path readonly fs folder mode	 containedin=teBlock


syn	match	teComment	/#.*$/

hi  	link 	teType 		Type
hi 	link	teInclude	Include
hi 	link	teMacro		Function
hi  	link 	teStatement 	Statement
hi  	link 	teConditional 	Conditional
hi  	link 	teRepeat	Repeat
hi 	link	teAttribute	Special
hi	link	teMemSpecifier	Include
hi	link	teTimeSpecifier Include
hi      link 	teConstant 	Constant
hi 	link	teReference	Underlined
hi  	link 	teString 	String
hi  	link 	teExString 	String
hi  	link 	teComment 	Comment
