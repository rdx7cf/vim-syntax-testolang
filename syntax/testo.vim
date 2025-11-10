" Vim Syntax File
" Language: TESTO-LANG
" Maintainer: Ruslan Evdokimov <rdx7cf@bk.ru>
"


syn	keyword	teType		machine flash network param test dvd macro
syn	keyword	teInclude	include
syn	keyword	teConstant	true false
syn	keyword	teStatement	abort print type wait sleep mouse move click lclick rclick dclick hold release lbtn rbtn check press plug unplug start stop shutdown exec copyto copyfrom img js bash python break continue NOT AND OR DEFINED LESS GREATER EQUAL STRLESS STRGREATER STREQUAL STRMATCH timeout interval 
syn	keyword	teConditional	if else
syn	keyword	teRepeat	for IN RANGE


syn	region	teBrackets	start=+{+			end=+}+		transparent
syn	region	teBraces	start='\['			end='\]'	transparent
syn	region	teReference	start=+${+			end=+}+		containedin=teString,teExString
syn	region	teString	start=+"+	skip=+\\"+	end=+"+	
syn	region	teExString	start=+"""+	skip=+\\"""+	end=+"""+	

syn 	match	teMemSpecifier	/\d\+\(K\|M\|G\)[bB]/
syn	match	teTimeSpecifier	/\d\+\(ms\|s\|m\|h\)/

syn	keyword	teAttrBrak	cpus ram disk iso nic video loader qemu_enable_usb3 size source attached_to attached_to_dev adapter_type mac shared_folder host_path readonly fs folder mode arch bus attached_to_br qemu_mode graphics spice_port spice_address spice_password qemu_spice_agent plugged	 containedin=teBrackets
syn	keyword	teAttrBrac	no_snapshots description title story feature	containedin=teBraces

syn	match	teComment	/#.*$/

hi  	link 	teType 		Type
hi 	link	teInclude	Type
hi  	link 	teStatement 	Statement
hi  	link 	teConditional 	Conditional
hi  	link 	teRepeat	Repeat
hi 	link	teAttrBrak	Special
hi	link	teAttrBrac	Special
hi	link	teMemSpecifier	Constant
hi	link	teTimeSpecifier Constant
hi      link 	teConstant 	Constant
hi 	link	teReference	Include
hi  	link 	teString 	String
hi  	link 	teExString 	String
hi  	link	teComment 	Comment

