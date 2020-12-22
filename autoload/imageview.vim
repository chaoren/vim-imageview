function imageview#display()
	setlocal nolist
	setlocal nowrap
	setlocal nonumber
	silent execute '%!img2txt "%"'
	silent! execute '%s/\r$//'
	silent! execute 'g/^libpng warning: /d'
	silent execute 'AnsiEsc'
	silent! loadview
	setlocal readonly
	setlocal nomodifiable
endfunction
