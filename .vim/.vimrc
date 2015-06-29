set nocompatible
" filetype off


"""""""""""""""""""""""""""""""""
" Plugins 
"""""""""""""""""""""""""""""""""

" Disable plugins
let g:pathogen_disabled = ['vim-airline']

" Autoload Nerd Tree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p " move cursor to opened file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""

" Keep 100 lines of history
set history=100

" Show cursor position
set ruler

" Set encoding
set encoding=utf-8

" Fix backspace (behaves like you would expect)
set backspace=2

" Show status bar
set laststatus=2

" Ignore case when searching
set ignorecase

" Highlight search results (type :noh to unhighlight search)
set hlsearch

" Show line number
set number

set wildmenu
set incsearch
set lazyredraw

set magic
set showmatch
set noerrorbells

"""""""""""""""""""""""""""""""""
" Text, Tab and Indent Related
"""""""""""""""""""""""""""""""""

set expandtab
set smarttab

set shiftwidth=4 " 1 tab == 4 spaces
set tabstop=4

set ai " auto indent
set si " smart indent
set wrap " wrap lines

filetype plugin indent on

"""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

set t_Co=256
colorscheme molokai
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

"""""""""""""""""""""""""""""""""""
" Functions for improving workflow
"""""""""""""""""""""""""""""""""""

" Automatically add closing curly brace
inoremap {	{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{	{
inoremap {}	{}

" add closing parentheses
inoremap	( 	()<Left>
inoremap <expr> )	strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" Tab over brackets/parentheses/square brackets
inoremap <expr> <Tab> SkipClosingParentheses()

function! SkipClosingParentheses()
	let line = getLine('.')
	let current_char = line[col('.')-1]

	" ignore EOL
	if col('.') == col('$')
		return "\t"
	end

	return stridx(']})', current_char)==-1 ? "\t" : "\<Right>"
endfunction

" Enable pathogen plugins
execute pathogen#infect()
