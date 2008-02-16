" Vim color file
" Maintainer:	Lorenzo Leonini <vim-theme[a]leonini[.]net>, http://www.leonini.net
" Last Change: 2008 Feb 10

" Description:
" A colored, contrasted theme for long programming sessions.
" For 256-colors term (xterm, Eterm, konsole, gnome-terminal, ...)
" Very good with Ruby, C, Lua, PHP, ... (but no language specific settings)
" !!! No GUI version

" Note:
" If your term report 8 colors (but is 256 capable), put 'set t_Co=256'
" in your .vimrc

" Tips:
" :verbose hi StatusLine
" Color numbers (0-255) see:
"		http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

if has("gui_running")
  echomsg ""
  echomsg "err: Not a GUI theme (only for 256-colors terminals)."
  echomsg ""
  finish
else
	if &t_Co != 256
		echomsg ""
		echomsg "err: Please use a 256-colors terminal (so that t_Co=256 could be set)."
		echomsg ""
		finish
	end
endif

let g:colors_name = "leo256"

set background=dark
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif

" Normal should come first
hi Normal				cterm=NONE	ctermfg=White	ctermbg=Black

hi DiffAdd			cterm=NONE	ctermbg=17
hi DiffChange		cterm=NONE	ctermbg=235
hi DiffDelete		cterm=NONE	ctermbg=250
hi DiffText			cterm=bold	ctermbg=88
hi Directory		cterm=NONE	ctermfg=DarkBlue
hi ErrorMsg			cterm=NONE	ctermfg=White		ctermbg=DarkRed
hi FoldColumn		cterm=NONE	ctermfg=DarkBlue	ctermbg=Grey
hi Folded				cterm=NONE	ctermfg=white			ctermbg=237
hi IncSearch		cterm=reverse
hi LineNr				cterm=NONE	ctermfg=250
hi ModeMsg			cterm=bold
hi MoreMsg			cterm=NONE	ctermfg=DarkGreen
hi NonText			cterm=NONE	ctermfg=Blue
"hi Pmenu
hi PmenuSel			cterm=NONE	ctermfg=White		ctermbg=DarkBlue
hi Question			cterm=NONE	ctermfg=DarkGreen
hi Search				cterm=NONE	ctermfg=NONE		ctermbg=Yellow
hi SpecialKey		cterm=NONE	ctermfg=239
hi StatusLine		cterm=NONE	ctermfg=White		ctermbg=DarkGrey
hi StatusLineNC	cterm=NONE	ctermfg=Black		ctermbg=DarkGrey
hi Title				cterm=NONE	ctermfg=DarkMagenta
hi VertSplit		cterm=NONE	ctermfg=Red			ctermbg=White
hi Visual				cterm=reverse	ctermbg=NONE
hi VisualNOS		cterm=underline,bold
hi WarningMsg		cterm=NONE	ctermfg=DarkRed
hi WildMenu			cterm=NONE	ctermfg=Black	   ctermbg=Yellow

" syntax highlighting
hi Boolean			cterm=NONE		ctermfg=134
hi Character		cterm=NONE		ctermfg=184
hi Comment			cterm=NONE		ctermfg=246
hi Constant			cterm=NONE		ctermfg=Red
hi Conditional	cterm=NONE		ctermfg=40
hi Define				cterm=bold		ctermfg=63
hi Delimiter		cterm=NONE		ctermfg=Red
hi Exception		cterm=bold		ctermfg=226
hi Keyword			cterm=NONE		ctermfg=Yellow
hi Float				cterm=NONE		ctermfg=203
hi Function			cterm=NONE		ctermfg=81
hi Identifier		cterm=NONE		ctermfg=69
hi Operator			cterm=NONE		ctermfg=Yellow
hi PreProc			cterm=bold		ctermfg=178
hi Special			cterm=NONE		ctermfg=206
hi Statement		cterm=NONE		ctermfg=154
hi String				cterm=NONE		ctermfg=224		ctermbg=234
hi Type					cterm=bold		ctermfg=75
