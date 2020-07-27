if exists('g:loaded_imageview')
	finish
endif
let g:loaded_imageview = v:true

function! s:DisplayImage() abort " {{{
	setlocal nonumber
	silent execute '%!img2txt "%"'
	silent! execute '%s/\r$//'
	silent! execute 'g/^libpng warning: /d'
	silent execute 'AnsiEsc'
	silent! loadview
	setlocal readonly
	setlocal nomodifiable
endfunction " }}}

augroup IMAGEVIEW " {{{
	autocmd!
	autocmd BufReadPost *.{png,jpg,jpeg,gif,bmp} call s:DisplayImage()
augroup END " }}}

" vim:fdm=marker
