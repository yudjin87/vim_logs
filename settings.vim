set ignorecase
set background=dark
set ruler 		" This makes vim show the current row and column at the bottom right of the screen.

set hlsearch		" To highlight all search matches
set incsearch		" Incremental searching
set scrolloff=5		" At least 5 lines of context visible around the cursor at all times. 

if exists("syntax_on")
  syntax reset
endif

let g:badInd = "fakin_bad"

"refresh changed content of opened file 
set autoread

let $VIM_DIR = '~/devel/vim_logs/'
source $VIM_DIR/colors/eb.vim
source $VIM_DIR/syntax/eb_syntax.vim
source $VIM_DIR/scripts/color.vim



