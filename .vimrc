filetype on
filetype plugin on
filetype indent on " file type based indentation

set tabstop=4
set shiftwidth=4
set expandtab
set number
syntax on
" colorscheme darkblue - this highlights the matching brace more
colorscheme torte
autocmd BufWritePre *.{h,c,cpp}  %s/\s\+$//e

autocmd FileType make set noexpandtab 
