function! CopyColorsToGlobal()
	if exists("w:AllWords")
		let g:tAllWords = w:AllWords
		let g:tK1Words = w:K1Words
		let g:tK2Words = w:K2Words
		let g:tK3Words = w:K3Words
		let g:tK4Words = w:K4Words
		let g:tK5Words = w:K5Words
		let g:tK6Words = w:K6Words
		let g:tK7Words = w:K7Words
		let g:tK8Words = w:K8Words
	else
		let w:AllWords = ''
		let w:K1Words = ''
		let w:K2Words = ''
		let w:K3Words = ''
		let w:K4Words = ''
		let w:K5Words = ''
		let w:K6Words = ''
		let w:K7Words = ''
		let w:K8Words = ''
	endif
endfunction

function! ReColor()
	if exists("g:globalMatches")
		call setmatches(g:globalMatches)
	endif
endfunction

function! SetupNewTab()
	" Update colors	
	source $VIM_DIR/syntax/eb_syntax.vim
	source $VIM_DIR/scripts/color.vim
	setlocal noswapfile
	
	" copy global values to local variables
	let w:AllWords = g:tAllWords
	let w:K1Words = g:tK1Words
	let w:K2Words = g:tK2Words
	let w:K3Words = g:tK3Words
	let w:K4Words = g:tK4Words
	let w:K5Words = g:tK5Words
	let w:K6Words = g:tK6Words
	let w:K7Words = g:tK7Words
	let w:K8Words = g:tK8Words

	" clean global variables
	let g:tAllWords = ""
	let g:tK1Words = ""
	let g:tK2Words = ""
	let g:tK3Words = ""
	let g:tK4Words = ""
	let g:tK5Words = ""
	let g:tK6Words = ""
	let g:tK7Words = ""
	let g:tK8Words = ""
	call ReColor()
endfunction

" http://vim.wikia.com/wiki/Filter_buffer_on_a_search_result
function! SearchAndMoveToNewTab()
	" initializing global variables, to use them from recent word list
	""" call CopyColorsToGlobal()

	"search
	"execute 'g/' . escape(@*, '[/]') . '/y A'
	let results = []
	execute "g/" . @/ . "/call add(results, getline('.'))"
	"  @/ - filter on the last search pattern.

	

	tabnew
	call append(1, results)
	let results = []
	"put a

	source $VIM_DIR/syntax/eb_syntax.vim
	source $VIM_DIR/scripts/color.vim
	""""call SetupNewTab()
endfunction


vmap <silent> <F3>  "+y <ESC> qaq :call SearchAndMoveToNewTab()<CR><CR>
nmap <silent> <F3>  <ESC> qaq :call SearchAndMoveToNewTab()<CR><CR>
