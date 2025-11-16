" Vim Syntax File
" Language: TESTO-LANG
" Maintainer: Ruslan Evdokimov <rdx7cf@bk.ru>
"

"syn sync fromstart
syn sync minlines=200 maxlines=500


" KEYWORDS

syn	keyword	teType		machine flash network param test dvd macro

syn	keyword	teInclude	include

syn	keyword	teConstant	true false contained containedin=teBrackets

syn	keyword	teParameter	timeout interval autoswitch as from_top from_left from_right from_bottom move_up move_left move_right move_down match_color match_foreground match_background center left_bottom left_center left_top center_bottom center_top right_bottom right_center right_top contained containedin=teBrackets

syn 	case	ignore
syn	keyword	teKeySeq	ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE ZERO A B C D E F G H I J K L M N O P Q R S T U V W X Y Z MINUS EQUALSIGN BACKSPACE TAB LEFTBRACE RIGHTBRACE ENTER LEFTCTRL SEMICOLON APOSTROPHE GRAVE LEFTSHIFT BACKSLASH COMMA DOT SLASH RIGHTSHIFT LEFTALT SPACE CAPSLOCK F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 NUMLOCK KP_0 KP_1 KP_2 KP_3 KP_4 KP_5 KP_6 KP_7 KP_8 KP_9 KP_PLUS KP_MINUS KP_SLASH KP_ASTERISK KP_ENTER KP_DOT SCROLLLOCK RIGHTCTRL RIGHTALT HOME UP PAGEUP LEFT RIGHT END DOWN PAGEDOWN INSERT DELETE LEFTMETA RIGHTMETA SCROLLUP SCROLLDOWN

syn	keyword	teStatement	step abort print type wait sleep mouse move click lclick rclick dclick hold release lbtn rbtn check plug unplug start stop shutdown exec copyto copyfrom img js bash python break continue press contained containedin=teBrackets

syn	keyword	teConditional	if else		contained containedin=teBrackets
syn	keyword	teRepeat	for IN RANGE	contained containedin=teBrackets

syn	keyword	teAttrBrak	cpus ram disk iso nic video loader qemu_enable_usb3 size source attached_to attached_to_dev adapter_type mac shared_folder host_path readonly fs folder mode arch bus attached_to_br qemu_mode graphics spice_port spice_address spice_password qemu_spice_agent plugged	 contained containedin=teBrackets

syn	keyword	teAttrBrac	no_snapshots snapshots description depends_on title severity epic issues labels owner flaky story feature	contained containedin=teBraces

syn	keyword	teLogStr	NOT AND OR DEFINED LESS GREATER EQUAL STRLESS STRGREATER STREQUAL STRMATCH



" MATCHES

syn	match	teLogOps	/&&\|||\|!/
syn	match	teSign		"+\|-\|\*\|/"

"syn 	match 	teKeySeqCount	/\s*\*\s*\zs\d\+/

"syn	match	teKeySeq	/\(press\s\+\)\@<=\w\+\s*\(+\s*\w\+\)*\(\*\s*\d\+\)*\(,\s*\w\+\)*/
"syn	match	teKeySeq	/\(press\s\+\)\@<=\w\+\s*\(\(,\=\|+\=\)\(\s*\w\+\s*\)*\(\*\s*\d\+\)*\)/
"syn	match	teKeySeq	/\(press\s\+\)\@<=\(\(,\=\|+\=\)\w\+\s*\(\*\s*\d\+\)*\)/
"syn	match	teKeySeq	/\(press\s\+\)\@<=[a-zA-Z0-9_+*, ]\+\ze\s*\(interval\|timeout\|;\|$\)/

syn	match	teCustomName	/\%(\%(^\|\s\+\)\(machine\|flash\|network\|param\|dvd\)\s\+\)\@<=\zs\w\+\ze/
syn	match	teTestName	/\%(\%(^\|\s\+\)test\s\+\)\@<=\w\+\%(\s*:\s*\w\+\(\s*,\s*\w\+\)*\)\{,1}/
syn	match	teNameBefAct	/\w\+\s\+\ze{/
syn	match	teMacroName	/\%(\%(^\|\s\+\)macro\s\+\)\{,1}\s\+\<\%(if\)\@!\w\+\>\ze\s*(/


syn	match	teInteger	/\%(_\|\a\)\@<!\d\+/	contained containedin=teBrackets
syn 	match	teMemSpecifier	/\d\+\%(K\|M\|G\)[bB]/	contained containedin=teBrackets
syn	match	teTimeSpecifier	/\d\+\%(ms\|s\|m\|h\)/	contained containedin=teBrackets

syn	match	teComment	/#.*$/


" REGIONS

syn	region	teBrackets	start=+{+			end=+}+		transparent
syn	region	teBraces	start='\['			end='\]'	transparent
syn	region	teRefLoc	start=+${+			end=+}+		containedin=teString,teExString
syn	region	teRefGlb	start=+$<+			end=+>+		containedin=teString,teExString

syn	region	teString	start=+"+	skip=+\\"+	end=+"+	 keepend
syn	region	teExString	start=+"""+	skip=+\\"""+ 	end=+"""+ keepend extend






" HIGHLIGHT

hi  	 	teType 		ctermfg=LightGreen cterm=bold

hi		teCustomName	ctermfg=DarkGreen	cterm=bold
hi	link	teTestName	teCustomName
hi	link	teNameBefAct	teCustomName

hi  	 	teConditional 	ctermfg=LightYellow cterm=bold

hi		teKeySeq	ctermfg=Brown cterm=bold
hi		teSign		ctermfg=LightMagenta  

hi 		teInclude	ctermfg=LightGreen cterm=bold

hi  	 	teStatement 	ctermfg=Yellow cterm=bold
hi	link	teMacroName 	teStatement
hi  	link 	teRepeat	teStatement
hi	link	tePress		teStatement


hi 		teAttrBrak	ctermfg=Red
hi	link	teAttrBrac	teAttrBrak

hi       	teConstant 	ctermfg=DarkGreen cterm=bold

hi 		teRefLoc	ctermfg=Blue cterm=bold
hi 	link	teRefGlb	teRefLoc

hi  	 	teString	ctermfg=Magenta cterm=bold
hi  	link 	teExString 	teString

hi		teInteger	ctermfg=LightRed
hi	link	teTimeSpecifier teInteger
hi	link	teMemSpecifier 	teInteger	

hi		teLogStr	ctermfg=LightMagenta cterm=bold
hi	link	teLogOps	teLogStr

hi		teParameter	ctermfg=LightYellow	

hi  		teComment 	ctermfg=Cyan 

