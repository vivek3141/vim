syntax on
set mouse=a
set shiftwidth=4
set tabstop=4
set nu
set cursorline
call plug#begin('~/.vim/plugged')
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'chiel92/vim-autoformat'
Plug 'pondrejk/vim-readability'
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'airblade/vim-gitgutter'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
autocmd BufRead *.py setlocal colorcolumn=0
let g:pymode = 1

set updatetime=100

inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

if (has('termguicolors'))
	set termguicolors
endif

func! WordProcessor()
  map j gj
  map k gk
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  setlocal spell spelllang=en_us
  set thesaurus+=/Users/vivek/.vim/mthesaur.txt
  set complete+=s
endfu
com! WP call WordProcessor()

let g:python_highlight_all = 1
let g:material_theme_style = 'darker'
set backspace=indent,eol,start
set t_Co=256  
"set background=dark
"colorscheme PaperColor

colorscheme material
