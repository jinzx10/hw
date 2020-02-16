"Vundle
"see https://github.com/VundleVim/Vundle.vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	"Plugin 'zxqfl/tabnine-vim'
	Plugin 'Valloric/YouCompleteMe'
call vundle#end()

"YouCompleteMe
"see https://github.com/Valloric/YouCompleteMe
"see https://valloric.github.io/YouCompleteMe/ 
let g:ycm_global_ycm_extra_conf="$HOME/.vim/.ycm_extra_conf.py"
let g:ycm_enable_diagnostic_signs=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1

"Vim
"see http://vimdoc.sourceforge.net/htmldoc/
filetype plugin indent on
syntax on

set backspace=indent,eol,start
set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4

set ruler number relativenumber
nnoremap <F2> :set rnu!<CR>
nnoremap <F3> :set nu!<CR>

set hlsearch
highlight Search ctermfg=white ctermbg=darkred

"set encoding=utf-8
nnoremap <F4> :set list! listchars=tab:▋\ <CR>
highlight SpecialKey ctermfg=darkgreen

if &diff
	highlight DiffAdd		cterm=bold ctermfg=white ctermbg=darkgreen
	highlight DiffDelete	cterm=bold ctermfg=white ctermbg=lightred
	highlight DiffChange	cterm=bold ctermfg=white ctermbg=gray
	highlight DiffText		cterm=bold ctermfg=white ctermbg=darkred
endif

"autocmd BufEnter *.tpp :setlocal filetype=cpp

"statusline
set laststatus=2
set statusline=%{winnr()}\ \ %t\ %h%w%m%r%=%l,%v\ \ %P
set matchpairs+=<:>

"fortran
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
