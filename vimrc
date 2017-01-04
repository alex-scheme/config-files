"Preferences"
set nocompatible
set relativenumber "Line Numbers"
set number
colorscheme benokai
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set showcmd
set cursorline
set encoding=utf8
set wildmenu
set showmatch
set incsearch "Search as characters are entered"
set hlsearch "Highlight Matches"
set ignorecase
set gfn=Consolas:h10:cANSI
set nowrap
set laststatus=2
set noswapfile
let g:airline_powerline_fonts = 1
execute pathogen#infect()
filetype plugin indent on

" General Shortcuts
let mapleader = "\<Space>""
inoremap jk <esc>
nnoremap <leader>wj <C-W>j<C-W>
nnoremap <leader>wk <C-W>k<C-W>
nnoremap <leader>wl <C-W>l
nnoremap <leader>wh <C-W>h
nnoremap <leader>wc :q<cr>
nnoremap <leader>wm :only<cr>
nnoremap <leader>ev :vsplit /etc/vimrc<cr>
nnoremap <leader>rv :source /etc/vimrc<cr>
nnoremap <leader>st :Startify<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>ws :split<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>tag :CtrlPTag<cr>
nnoremap <leader>tb :TagbarToggle<cr>
nnoremap <leader>ww :NERDTree D:\svn<cr>
nnoremap <leader>of :%:p
nnoremap <leader>cd :cd /cygdrive/d/svn/<cr>
nnoremap <leader>gt <C-]>
nnoremap <leader>gb :bprev<cr>

" Copy and Paste remapping.
nnoremap <C-v> "+p
vnoremap <C-c> "+y

" CtrlP speedy upping.
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Settings Tags looky-uppy thing.
set tags=./tags,tags;$HOME

" Visual Studio
nnoremap <leader>vs :!run "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe" /edit "%"<cr>
