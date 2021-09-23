set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim


syntax enable
set expandtab
set shiftwidth=4
set tabstop=4
set autoread
set relativenumber

set list
set listchars=tab:▸\ ,trail:×
"set listchars=tab:▸\ ,eol:¬,trail:×,extends:>,precedes:<
set number

set backspace=indent,eol,start

"-----------------Folding Code ------------"
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

"-----------------Visuals------------------"
"colorscheme apprentice
colorscheme dracula
set background=dark
"set t_Co=256
set guifont="Fira_Code":h18
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set showtabline=2
hi Normal guibg=NONE ctermbg=NONE

"-----------------Search------------------"
set hlsearch
set incsearch

"-----------------Mappings------------------"
let mapleader=','

" Copy to the  clipboar
vmap <C-y> "+y

" Delete without copy
vmap <Leader>d "_d
nmap <Leader>d "_d
nnoremap <Leader>d "_d
xnoremap <Leader>d "_d

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>sv :so $MYVIMRC<cr>

"/ Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"/ NERDTree easier
nmap <Leader>f :NERDTreeToggle<cr>
" nmap <Leader>f :NERDTreeFind<cr>

"/ Tab Navigation
nmap <Leader>tn :tabn<cr>
nmap <Leader>tp :tabp<cr>
nmap <Leader>tq :tabc<cr>


"-------------Plugins--------------"
"/
"/ ALE plugin configurations
"/
let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'
let g:ctrlp_match_window = 'order:ttb,min:1,max:30,results:30'

"/
"/ VimSence (Discord Presence)
"/
let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'Vim'
let g:vimsence_small_image = 'vim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'
let g:vimsence_custom_icons = {'filetype': 'iconname'}


"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

"let g:ctrlp_prompt_mappings = {
"    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
"    \ 'AcceptSelection("t")': ['<cr>'],
"    \ }

let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'
let g:minimap_highlight='Visual'


"nmap <C-R> :CtrlPBufTag<cr>"

"/
"/ Emmet
"/

let g:user_emmet_mode='a'

set shell=/bin/bash

"-----------------Auto-Commands------------------"

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

