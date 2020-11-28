if exists('g:loaded_imageview')
	finish
endif
let g:loaded_imageview = v:true

augroup IMAGEVIEW
	autocmd!
	autocmd BufReadPost *.{png,jpg,jpeg,gif,bmp} call imageview#display()
augroup END
