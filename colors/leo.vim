" Vim color file
" Maintainer:		Lorenzo Leonini <vim-theme[a]leonini[.]net>
" Last Change:	2008 Jul 22
" URL:					http://www.leonini.net

" Description:
" A colored, contrasted theme for long programming sessions.
" For 256-colors term (xterm, Eterm, konsole, gnome-terminal, ...)
" Very good with Ruby, C, Lua, PHP, ... (but no language specific settings)

" Note:
" If your term report 8 colors (but is 256 capable), put 'set t_Co=256'
" in your .vimrc

" Tips:
" :verbose hi StatusLine
" Color numbers (0-255) see:
"		http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

if !has("gui_running")
	if &t_Co != 256
		echomsg "err: Please use a 256-colors terminal (so that t_Co=256 could be set)."
		echomsg ""
		finish
	end
endif

let g:colors_name = "leo256"

set background=dark
if v:version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif

" Normal should come first
hi Normal				cterm=none		ctermfg=15		ctermbg=0 guibg=#090909 guifg=#eeeeee

hi CursorLine		cterm=none		ctermbg=233		guibg=#191919
hi DiffAdd			cterm=none		ctermbg=235
hi DiffChange		cterm=none		ctermbg=234
hi DiffDelete		cterm=none		ctermfg=239		ctermbg=244
hi DiffText			cterm=bold		ctermfg=15		ctermbg=196
hi Directory		cterm=none		ctermfg=196
hi ErrorMsg			cterm=none		ctermfg=15		ctermbg=1
hi FoldColumn		cterm=none		ctermfg=40		ctermbg=248
hi Folded				cterm=none		ctermfg=15		ctermbg=237
hi IncSearch		cterm=reverse
hi LineNr				cterm=none		ctermfg=250
hi ModeMsg			cterm=bold
hi MoreMsg			cterm=none		ctermfg=2
hi NonText			cterm=none		ctermfg=12
hi Question			cterm=none		ctermfg=2
hi Search				cterm=none		ctermfg=none	ctermbg=11
hi SpecialKey		cterm=none		ctermfg=124
hi StatusLine		cterm=none		ctermfg=0			ctermbg=252
hi StatusLineNC	cterm=none		ctermfg=245		ctermbg=235
hi Title				cterm=none		ctermfg=5
hi VertSplit		cterm=none		ctermfg=233		ctermbg=233
hi Visual				cterm=reverse								ctermbg=none
hi VisualNOS		cterm=underline,bold
hi WarningMsg		cterm=none		ctermfg=1
hi WildMenu			cterm=none		ctermfg=0			ctermbg=11

if v:version >= 700
	hi Pmenu				cterm=none	ctermfg=255		ctermbg=235		guibg=#222222		guifg=#eeeeee
	hi PmenuSel			cterm=none	ctermfg=255		ctermbg=4			guibg=#3333ff
	hi PmenuSbar		cterm=none	ctermfg=240		ctermbg=240		guibg=#444444
  hi PmenuThumb		cterm=none	ctermfg=255		ctermbg=255
	hi TabLine			cterm=none	ctermfg=252		ctermbg=17
	hi TabLineSel		cterm=none	ctermfg=255		ctermbg=20
	hi TabLineFill	cterm=none	ctermfg=16		ctermbg=16
endif

hi Boolean			cterm=none		ctermfg=135		guifg=#af5fff
hi Character		cterm=none		ctermfg=184
hi Comment			cterm=none		ctermfg=247		guifg=#A5A5A5
hi Constant			cterm=none		ctermfg=226		guifg=#ffff00
hi Conditional	cterm=none		ctermfg=154		guifg=#afff00
hi Define				cterm=bold		ctermfg=27		guifg=#005fff
hi Delimiter		cterm=none		ctermfg=196		guifg=#af0000
hi Exception		cterm=bold		ctermfg=226		guifg=#ffff00
hi Error				cterm=none		ctermfg=15		ctermbg=9
hi Keyword			cterm=none		ctermfg=159		guifg=#d7af00
hi Function			cterm=none		ctermfg=196		guifg=#ff0000
hi Identifier		cterm=none		ctermfg=27		guifg=#005fff
hi Number				cterm=none		ctermfg=135		guifg=#af5fff
hi Operator			cterm=none		ctermfg=11
hi PreProc			cterm=none		ctermfg=202		guifg=#ff5f00
hi Special			cterm=none		ctermfg=206		ctermbg=234		guifg=#ff5fd7
hi Statement		cterm=none		ctermfg=2			guifg=#00cd00
hi String				cterm=none		ctermfg=224		ctermbg=234		guifg=#ffd7d7	guibg=#1c1c1c
hi Todo         cterm=none		ctermfg=0			ctermbg=11		guifg=#000000 guibg=#ffff00
hi Type					cterm=none		ctermfg=75		guifg=#5fafff

" ADDITIONNAL

hi Repeat		cterm=none		ctermfg=142		guifg=#878700
