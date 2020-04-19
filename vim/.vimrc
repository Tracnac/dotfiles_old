if filereadable(expand("~/.vim/autoload/plug.vim"))
  runtime! autoload/plug.vim
  call plug#begin()
    Plug 'https://github.com/vim-airline/vim-airline.git'
    Plug 'https://github.com/vim-airline/vim-airline-themes.git'
    Plug 'https://github.com/edkolev/tmuxline.vim.git'
    Plug 'https://github.com/tpope/vim-surround.git'
  call plug#end()
endif

" Plugin prefs
" Airline 
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts=1
  let g:airline_theme='bubblegum'
" Tmuxline
  let g:tmuxline_powerline_separators = 0

" My sensible prefs
set nocompatible
set noerrorbells visualbell t_vb=
set number
if exists('+relativenumber')
  set relativenumber
  :augroup numbertoggle
  :  autocmd!
  :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  :augroup END
endif
set nowrap
set wildmenu
set clipboard=unamedplus
set et ts=2 sts=2 sw=2
set encoding=UTF-8
set ruler
set rulerformat=%-14.(%l,%c%V%)\ %P
set noshowmode

" Search option
set hlsearch
set ignorecase
set smartcase
set showmatch

" Appearance
set t_Co=256
colorscheme elflord
set statusline+=%#warningmsg#
set statusline+=%*

" do nothing for comment
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Shortcut
nnoremap  <silent> <tab>    :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap  <silent> <CR>     :nohlsearch<CR>
