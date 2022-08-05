"Map commands
nnoremap , :qa!<CR>
nnoremap . :wqall<CR>

"Config of raw neovim
set number 
set relativenumber 
set mouse=a
set tabstop=4
set shiftwidth=4
set clipboard+=unnamedplus
set t_Co=256
set guifont=Hack:h8
syntax enable
set expandtab
set smarttab


"Settings for matlab
source $VIMRUNTIME/macros/matchit.vim
source $VIMRUNTIME/macros/matchit.vim
filetype indent on
autocmd BufEnter *.m    compiler mlint

"Plugins
call plug#begin('~/.vim/plugged')


Plug 'kyazdani42/nvim-web-devicons'		 	" Optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'				" File tree
Plug 'https://github.com/neovim/pynvim' 	" Allow python pakages (not currently used)
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

"Colors and Theming
colorscheme dracula

highlight VertSplit         ctermfg=238 ctermbg=none  cterm=none
highlight StatusLine        ctermfg=250 ctermbg=238 cterm=none
highlight StatusLineNC      ctermfg=250 ctermbg=238 cterm=none

highlight VertSplit        guifg=#282a36		guibg=#bd93f9		cterm=none
highlight StatusLine       guifg=#f8f8f2		guibg=#44475a		cterm=none
highlight StatusLineNC     guifg=#f8f8f2		guibg=#44475a		cterm=none


"Load lua plugins
lua require('other_modules')

