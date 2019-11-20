set autoindent
set smartindent

set hlsearch " CTRL-L / CTRL-R W
set incsearch
set ignorecase smartcase

set tabstop=3
set shiftwidth=3

set cursorline

set relativenumber

" show context above/below cursorline.
set scrolloff=3 
" Highlight trailing whitespace.
set list listchars=tab:»·,trail:·,nbsp:·

" Enable mouse in all modes
set mouse=a

"auto insert string to new file
autocmd BufNewFile *.c,*.cpp,*.sh,*.py,*.java exec ":call SetTitle()"
func SetTitle()
    if &filetype == 'shell'
        call setline(1, "\#!/bin/sh")
        call setline(2, "")
    endif
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/python")
        call setline(2, "")
    endif

    autocmd BufNewfile * normal G
    autocmd BufNewfile * startinsert
endfunc

###############key mapping
" Save
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>

" Quit
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>

## press "f" to show current function's name
fun! ShowFuncName()
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bWn'))
  echohl None
endfun
map f :call ShowFuncName() <CR>

