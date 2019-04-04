
""""""""""""""""""""""""""""""
" => ale
""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

" let g:ale_linters = {
" \  'javascript': ['stylelint', 'eslint'],
" \  'css': ['stylelint', 'eslint'],
" \}

let g:airline_powerline_fonts = 1
" show errors or warnings in my statusline
let g:airline#extensions#ale#enabled = 1

" Fix files with prettier, and then ESLint.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Enable completion where available.
let g:ale_completion_enabled = 2
let g:ale_completion_delay = 10


""""""""""""""""""""""""""""""
" => ctrlp
""""""""""""""""""""""""""""""

"let g:ctrlp_working_path_mode = 0

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'

""""""""""""""""""""""""""""""
" => onedark
""""""""""""""""""""""""""""""

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_termcolors=16
let g:onedark_terminal_italics = 0
let g:airline_theme='onedark'
packadd! onedark.vim
syntax on
colorscheme onedark

