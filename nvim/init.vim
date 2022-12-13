set expandtab
set shiftwidth=4
set tabstop=4
set list listchars=eol:,tab:-,space:␣
set ignorecase smartcase

highlight NonText ctermfg=black

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
