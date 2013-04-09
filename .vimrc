version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=sv
set history=50
set nomodeline
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" vim: set ft=vim :

" Make case distinctions matter ONLY if UPPERCASE
set ignorecase
set smartcase

set wildmenu

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif


" Reread configuration of Vim if .vimrc is saved {{{
"    augroup VimConfig
"        au!
"        autocmd BufWritePost ~/.vimrc       so ~/.vimrc
"        autocmd BufWritePost vimrc          so ~/.vimrc
"    augroup END
"    " }}}

" From wiki.archlinux.org
" I should read and learn these sometime

" VIM TIPS / HELP / TRICKS   {{{1
" ===========================================================================

" BEST TRICKS {{{2

" TERMCAP HELP {{{3
" :help termcap

" :g/^\s*$/;//-1sort to sort each block of lines in a file.


" VIEW DIFF OF EDITS AGAINST BUFFER VS ORIGINAL FILE {{{3
" :w !colordiff -u % -


" INSERT CURRENT FILENAME {{{3
" :r! echo %

" DELETE TRAILING WHITESPACE {{{3
" :%s/\s\+$//

" Changing Case
" guu                             : lowercase line
" gUU                             : uppercase line
" Vu                              : lowercase line
" VU                              : uppercase line
" g~~                             : flip case line
" vEU                             : Upper Case Word
" vE~                             : Flip Case Word
" ggguG                           : lowercase entire file
" " Titlise Visually Selected Text (map for .vimrc)
" vmap ,c :s/\<\(.\)\(\k*\)\>/\u\1\L\2/g<CR>
" " Title Case A Line Or Selection (better)
" vnoremap <F6> :s/\%V\<\(\w\)\(\w*\)\>/\u\1\L\2/ge<cr> [N]
" " titlise a line
" nmap ,t :s/.*/\L&/<bar>:s/\<./\u&/g<cr>  [N]
" " Uppercase first letter of sentences
" :%s/[.!?]\_s\+\a/\U&\E/g


" :r file " read text from file and insert below current line

" :so $VIMRUNTIME/syntax/hitest.vim	  " view highlight options

"}}}2


" HELP HELP {{{3
" ---------------------------------
" :helpg pattern					  search grep!! ---  JUMP TO OTHER MATCHES WITH: >
" :help holy-grail
" :help all
" :help termcap
"  :help user-toc.txt          Table of contents of the User Manual. >
"  :help :subject              Ex-command "subject", for instance the following: >
"  :help :help                 Help on getting help. >
"  :help CTRL-B                Control key <C-B> in Normal mode. >
"  :help 'subject'             Option 'subject'. >
"  :help EventName             Autocommand event "EventName"
"  :help pattern<Tab>          Find a help tag starting with "pattern".  Repeat <Tab> for others. >
"  :help pattern<Ctrl-D>       See all possible help tag matches "pattern" at once. >
"		  :cn                         next match >
"		  :cprev, :cN                 previous match >
"		  :cfirst, :clast             first or last match >
"		  :copen,  :cclose            open/close the quickfix window; press <Enter> to jump to the item under the cursor



" SET HELP {{{3
" ---------------------------------
" :verbose set opt? - show where opt was set
" set opt!		- invert
" set invopt		- invert
" set opt&		- reset to default
" set all&		- set all to def
" :se[t]			Show all options that differ from their default value.
" :se[t] all		Show all but terminal options.
" :se[t] termcap		Show all terminal options.  Note that in the GUI the



" TAB HELP   {{{3
" ---------------------------------
" tc	- create a new tab
" td	- close a tab
" tn	- next tab
" tp	- previous tab



" UPPERCASE, LOWERCASE, INDENTS {{{3
" ---------------------------------
" '.	- last modification in file!
" gf  - open file under cursor
" guu - lowercase line
" gUU - uppercase line
" =   - reindent text



" FOLDS {{{3
" ---------------------------------
" F 	- create a fold from matching parenthesis
" fm	- (zm)  more folds
" fl  - (zr) less/reduce folds
" fo	- open all folds (zR)
" fc	- close all folds (zM)
" ff  -  (zf)	- create a fold
" fd	- (zd)	- delete fold at cursor
" zF	- create a fold N lines
" zi	- invert foldenable



" KEYSEQS HELP {{{3
" ---------------------------------
" CTRL-I - forward trace of changes
" CTRL-O - backward trace of changes!
" C-W W	 - Switch to other split window
" CTRL-U		  - DELETE FROM CURSOR TO START OF LINE
" CTRL-^		  - SWITCH BETWEEN FILES
" CTRL-W-TAB  - CREATE DUPLICATE WINDOW
" CTRL-N		  - Find keyword for word in front of cursor
" CTRL-P		  - Find PREV diddo


" SEARCH / REPLACE {{{3
" ---------------------------------
" :%s/\s\+$//    - delete trailing whitespace
" :%s/a\|b/xxx\0xxx/g             modifies a b      to xxxaxxxbxxx
" :%s/\([abc]\)\([efg]\)/\2\1/g   modifies af fa bg to fa fa gb
" :%s/abcde/abc^Mde/              modifies abcde    to abc, de (two lines)
" :%s/$/\^M/                      modifies abcde    to abcde^M
" :%s/\w\+/\u\0/g                 modifies bla bla  to Bla Bla
" :g!/\S/d				delete empty lines in file


"  COMMANDS {{{3
" ---------------------------------
" :runtime! plugin/**/*.vim  - load plugins
" :so $VIMRUNTIME/syntax/hitest.vim	  " view highlight options
" :so $VIMRUNTIME/syntax/colortest.vim

" :!!date - insert date
" :%!sort -u  - only show uniq (and sort)

" :r file " read text from file and insert below current line
" :v/./.,/./-1join  - join empty lines

" :e! return to unmodified file
" :tabm n  - move tab to pos n
" :jumps
" :history
" :reg   -  list registers

" delete empty lines
" global /^ *$/ delete
