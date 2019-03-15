filetype plugin indent on
syntax on

set backspace=indent,eol,start
set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4

set ruler number relativenumber
nnoremap <F2> :set rnu!<CR>
nnoremap <F3> :set nu!<CR>

set hlsearch
highlight Search ctermfg=white ctermbg=darkred

if &diff
	highlight DiffAdd		cterm=bold ctermfg=white ctermbg=darkgreen
	highlight DiffDelete	cterm=bold ctermfg=white ctermbg=lightred
	highlight DiffChange	cterm=bold ctermfg=white ctermbg=gray
	highlight DiffText		cterm=bold ctermfg=white ctermbg=darkred
endif

set listchars=tab:▋\ 
nnoremap <F4> :set list!<CR>
highlight SpecialKey ctermfg=darkgreen

"tpp->cpp
autocmd BufEnter *.tpp :setlocal filetype=cpp
