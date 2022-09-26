"plugins vim-plug
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'davidhalter/jedi-vim'

Plug 'jiangmiao/auto-pairs' 

Plug 'morhetz/gruvbox' 

call plug#end()

"colorscheme
colorscheme gruvbox
set background=dark

"default settings
syntax on
set number
set tabstop=2
set softtabstop=2
set autoindent
set expandtab
set encoding=utf8

set noswapfile

set hlsearch
set incsearch

"mapping
map <C-n> :NERDTreeToggle<CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

"functions
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin ==winnr())
    if (match(a:key, '[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
