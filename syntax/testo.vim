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

syn	keyword	teParameter	timeout interval autoswitch as from_top from_left from_right from_bottom move_up move_left move_right move_down contained containedin=teBrackets


syn	keyword	teStatement	step abort print type wait sleep mouse move click lclick rclick dclick hold release lbtn rbtn check plug unplug start stop shutdown exec copyto copyfrom img js bash python break continue contained containedin=teBrackets

syn	keyword	teConditional	if else		contained containedin=teBrackets
syn	keyword	teRepeat	for IN RANGE	contained containedin=teBrackets

syn	keyword	teAttrBrak	cpus ram disk iso nic video loader qemu_enable_usb3 size source attached_to attached_to_dev adapter_type mac shared_folder host_path readonly fs folder mode arch bus attached_to_br qemu_mode graphics spice_port spice_address spice_password qemu_spice_agent plugged	 contained containedin=teBrackets

syn	keyword	teAttrBrac	no_snapshots snapshots description depends_on title severity epic issues labels owner flaky story feature	contained containedin=teBraces

syn	keyword	teLogStr	NOT AND OR DEFINED LESS GREATER EQUAL STRLESS STRGREATER STREQUAL STRMATCH
syn	match	teLogOps	/&&\|||\|!/

" A little dirty hack...
syn	keyword	tePress		press nextgroup=teKeySeq skipwhite
syn	match	teKeySeq	/\zs[a-zA-Z0-9+*, ]\+\ze/ contained



" MATCHES

syn	match	teUserStatement	/\s\+\zs\w\+\ze\s*(/	contained containedin=teBrackets

syn	match	teInteger	/\s*\zs\d\+\ze\s*/	contained containedin=teBrackets
syn 	match	teMemSpecifier	/\d\+\(K\|M\|G\)[bB]/	contained containedin=teBrackets
syn	match	teTimeSpecifier	/\d\+\(ms\|s\|m\|h\)/	contained containedin=teBrackets

syn	match	teComment	/#.*$/


" REGIONS

syn	region	teBrackets	start=+{+			end=+}+		transparent
syn	region	teBraces	start='\['			end='\]'	transparent
syn	region	teRefLoc	start=+${+			end=+}+		containedin=teString,teExString
syn	region	teRefGlb	start=+$<+			end=+>+		containedin=teString,teExString

syn	region	teString	start=+"+	skip=+\\"+	end=+"+	 keepend
syn	region	teExString	start=+"""+	skip=+\\"""+ 	end=+"""+ keepend extend contains=teString






" HIGHLIGHT

hi  	 	teType 		ctermfg=LightGreen cterm=bold

hi 		teInclude	ctermfg=LightGreen cterm=bold

hi  	 	teStatement 	ctermfg=Yellow cterm=bold
hi		teUserStatement ctermfg=Yellow cterm=bold 
hi  	link 	teConditional 	teStatement
hi  	link 	teRepeat	teStatement
hi	link	tePress		teStatement

hi		teKeySeq	ctermfg=Brown cterm=bold

hi 		teAttrBrak	ctermfg=Red
hi	link	teAttrBrac	teAttrBrak

hi       	teConstant 	ctermfg=DarkGreen cterm=bold

hi 		teRefLoc	ctermfg=Blue cterm=bold
hi 	link	teRefGlb	teRefLoc

hi  	 	teString	ctermfg=Magenta cterm=bold
hi  	link 	teExString 	teExString

hi		teInteger	ctermfg=LightRed
hi	link	teTimeSpecifier teInteger
hi	link	teMemSpecifier 	teInteger	

hi		teLogStr	ctermfg=LightMagenta cterm=bold
hi	link	teLogOps	teLogStr

hi		teParameter	ctermfg=LightYellow	

hi  		teComment 	ctermfg=Cyan 

