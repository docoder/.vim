
""""""""""""""""""""""""""""""
" => ale
""""""""""""""""""""""""""""""

" show errors or warnings in my statusline
let g:airline#extensions#ale#enabled = 1


""""""""""""""""""""""""""""""
" => ctrlp
""""""""""""""""""""""""""""""

"let g:ctrlp_working_path_mode = 0

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'

""""""""""""""""""""""""""""""
" => onedark
""""""""""""""""""""""""""""""

set termguicolors
let g:onedark_termcolors=16
let g:onedark_terminal_italics = 0
let g:airline_theme='onedark'
packadd! onedark.vim
syntax on
colorscheme onedark

