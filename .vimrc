set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'hrp/EnhancedCommentify'
Bundle 'klen/python-mode'
Bundle 'mileszs/ack.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'dag/vim2hs'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'Shougo/vimproc'
Bundle 'ujihisa/neco-ghc'
Bundle 'pentie/VimRepress'

filetype plugin indent on

syntax on

set background=dark
if has("gui_running")
	call togglebg#map("<F5>")
else
	let g:solarized_termcolors=256
endif
colorscheme solarized

set nobackup
set noswapfile
set wildmenu
set wildignore=*.o,*.bak,*.pyc,*.swp
set wildmode=longest:full
set incsearch
set hls
set laststatus=2
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=79
set pastetoggle=<F2>
set colorcolumn=80
set relativenumber

let mapleader=","
nnoremap <leader>t :tabnew 
nnoremap <leader>a :Ack "<C-R><C-W>"
nnoremap <leader>l :SyntasticCheck<CR>
nnoremap <leader>x :nohl<CR>

let g:EnhCommentifyUserBindings='yes'
vmap <silent> <leader>c <Plug>VisualComment
vmap <silent> <leader>d <Plug>VisualDeComment
vmap <silent> <leader>g <Plug>VisualTraditional
vmap <silent> <leader>f <Plug>VisualFirstLine
nmap <silent> <leader>c <Plug>Comment
nmap <silent> <leader>d <Plug>DeComment
nmap <silent> <leader>g <Plug>Traditional
nmap <silent> <leader>f <Plug>FirstLine

let g:haskell_conceal_enumerations=0

if has("autocmd")
	autocmd BufEnter * if &ft != 'help' | silent! cd %:p:h | endif
endif
