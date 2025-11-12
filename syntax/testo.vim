" Vim Syntax File
" Language: TESTO-LANG
" Maintainer: Ruslan Evdokimov <rdx7cf@bk.ru>
"

"syn sync fromstart
syn sync minlines=200 maxlines=500

syn	keyword	teType		machine flash network param test dvd macro

syn	keyword	teInclude	include step

syn	keyword	teConstant	true false

syn	keyword	teParameter	timeout interval autoswitch as

syn	keyword	teStatement	abort print type wait sleep mouse move click lclick rclick dclick hold release lbtn rbtn check plug unplug start stop shutdown exec copyto copyfrom img js bash python break continue press

syn	keyword	teConditional	if else
syn	keyword	teRepeat	for IN RANGE

syn	keyword	teAttrBrak	cpus ram disk iso nic video loader qemu_enable_usb3 size source attached_to attached_to_dev adapter_type mac shared_folder host_path readonly fs folder mode arch bus attached_to_br qemu_mode graphics spice_port spice_address spice_password qemu_spice_agent plugged	 contained containedin=teBrackets

syn	keyword	teAttrBrac	no_snapshots snapshots description depends_on title severity epic issues labels owner flaky story feature	contained containedin=teBraces

syn	keyword	teLogStr	NOT AND OR DEFINED LESS GREATER EQUAL STRLESS STRGREATER STREQUAL STRMATCH
syn	match	teLogOps	/&&\|||\|!/



syn	region	teBrackets	start=+{+			end=+}+		transparent
syn	region	teBraces	start='\['			end='\]'	transparent
syn	region	teRefLoc	start=+${+			end=+}+		containedin=teString,teExString
syn	region	teRefGlb	start=+$<+			end=+>+		containedin=teString,teExString

syn	region	teString	start=+"+	skip=+\\"+	end=+"+	 keepend
syn	region	teExString	start=+"""+	skip=+\\"""+ 	end=+"""+ keepend extend contains=teString

"syn	match	teKeyPress	/press\s\+\zs[a-zA-Z0-9+*,]\+\ze/

syn	match	teUserStatement	/\s\+\zs\w\+\ze\s*(/
syn	match	teInteger	/\s\+\zs\d\+\ze\s*/
syn 	match	teMemSpecifier	/\d\+\(K\|M\|G\)[bB]/
syn	match	teTimeSpecifier	/\d\+\(ms\|s\|m\|h\)/


syn	match	teComment	/#.*$/

"hi		teKeyPress	term=bold cterm=bold ctermfg=Red

hi		teTimeSpecifier term=italic cterm=italic ctermfg=Blue
hi	link	teMemSpecifier 	teTimeSpecifier	

hi		teLogStr	term=bold cterm=bold ctermfg=LightRed
hi	link	teLogOps	teLogStr

hi		teParameter	term=italic cterm=italic ctermfg=DarkYellow	

hi  	link 	teType 		Type
hi 	link	teInclude	Type
hi  	link 	teStatement 	Statement
hi	link	teUserStatement	Statement
hi  	link 	teConditional 	Conditional
hi  	link 	teRepeat	Repeat
hi 	link	teAttrBrak	Special
hi	link	teAttrBrac	Special
hi	link	teInteger	Include
hi      link 	teConstant 	Constant
hi 	link	teRefLoc	Include
hi 	link	teRefGlb	Include
hi  	link 	teString	String
hi  	link 	teExString 	String
hi  	link	teComment 	Comment

