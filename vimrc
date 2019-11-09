set autoindent
set smartindent

set hlsearch " CTRL-L / CTRL-R W
set incsearch
set ignorecase smartcase

set tabstop=3
set shiftwidth=3

set cursorline


###############key mapping
" Save
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>

" Quit
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>
