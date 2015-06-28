execute pathogen#infect()
Helptags

syntax on
filetype plugin indent on

colorscheme Tomorrow-Night-Bright
hi clear SignColumn " for gitgutter, nicer looking sign column

" VIM settings
set nocompatible
set notimeout
set ttimeout
set timeoutlen=100
set updatetime=1000

set directory=~/.vim/swp//
set undodir=~/.vim/undo//
set undofile
set noswapfile
set path+=./lib,./spec
set shell=/bin/sh
set swb=useopen
set background=light
set tags+=tags;/,./gems.tags;/,gems.tags;/
set hidden
set backupdir=~/.vim/backup//
set wildmenu wildmode=full
set completeopt=longest,menuone
set laststatus=2
set statusline=%<%f\ %([%Y%M%R%{fugitive#statusline()}]%)%=%-14.(%l,%c%V%)\ %P
set number
set numberwidth=3
set noacd
set showcmd
set tabstop=4
set shiftwidth=4
set noea
set mouse=a " might not work on most systems
set ttymouse=xterm2 " a working variant of the previous command
set wildignore=*.png,*.jpg,*.xcf,*.wav,log/*,tmp/*,coverage/*
set clipboard=unnamed " needed to force Vim in using OS X clipboard
set backspace=eol,indent,start " needed for OS X so backpace would work as delete in insert mode

let mapleader=','
noremap ; :
noremap Y y$

" VIM code area separator
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

" Custom highlighting
hi link TagListFileName Normal
hi Pmenu ctermbg=84

" CoffeeScript settings
au FileType coffee setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" My mappings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

nnoremap gp `[v`]

nmap ]t :tnext<CR>
nmap [t :tprev<CR>

nmap <Leader>vv :e ~/.vimrc<CR>
nmap <Leader>vg :e ~/.gvimrc<CR>

nnoremap <Leader>cd :cd %:p:h<CR>

" ruby-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
" let g:rspec_command = "!rspec {spec}"
let g:rspec_command = "!zeus rspec {spec}"

" smart home key settings
map <silent> <Home> :SmartHomeKey<CR>
imap <silent> <Home> <C-O>:SmartHomeKey<CR>

" ruby hash
noremap <Leader>rh :Hashrockets<CR>
noremap <Leader>rb :Bashrockets<CR>

" zencoding settings
let g:user_zen_leader_key = '<c-g>'

" ctrlp settings
nmap <Leader>o :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_use_caching = 0
let g:ctrlp_custom_ignore = { 'dir': '\v(tmp|coverage|log|public|bin)$' }
let g:ctrlp_reuse_window = 'NERD'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<cr>', '<c-y>', '<2-LeftMouse>'],
    \ 'CreateNewFile()':      []
    \ }

" ag.vim setting
let g:agprg='ag --column --ignore tags --ignore-dir log --ignore-dir tmp --ignore-dir solr'

" ruby refactoring mappings

let g:ruby_refactoring_map_keys = 0
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rapn :RAddParameterNB<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
nnoremap <leader>rel  :RExtractLet<cr>
nnoremap <leader>rc :RConvertPostConditional<cr>
nnoremap <leader>riv  :RIntroduceVariable<cr>

vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>

" NERD Tree settings
map <F12> :e %:p:h<CR>
map <leader>n :e %:p:h<CR>

" surround settings
vmap ) s)
vmap ( s(
" vmap " s"
vmap ' s'
vmap { s{
vmap } s}
vmap # s#
nmap s ys

" Fugitive settings
" map <Leader>gs :Gstatus<CR>
" map <Leader>gc :Gcommit<CR>
" map <Leader>gb :Gblame<CR>
" map <Leader>gd :Gdiff<CR>

" Ruby settings
au BufRead,BufNewFile Guardfile,Vagrantfile set ft=ruby
autocmd FileType ruby,eruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" JST settings
autocmd FileType jst setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" HTML settings
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" C/C++ settings
autocmd Filetype c,cpp,css,scss setlocal expandtab shiftwidth=2 softtabstop=2

" Habit breaker
inoremap <Down> <NOP>
inoremap <LEFT> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
noremap <Down> <NOP>
noremap <LEFT> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>

" Syntastic settings
let g:syntastic_ruby_mri_exec = 'ruby'

" I18n settings
vmap <Leader>z :call I18nTranslateString()<CR>
