set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

Plug 'christoomey/vim-tmux-navigator'

Plug 'junegunn/goyo.vim'

Plug 'junegunn/fzf', {'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'ycm-core/YouCompleteMe'

Plug 'chriskempson/base16-vim'

call plug#end()

"Add colorscheme
colorscheme base16-tomorrow-night

nmap <C-n> :NERDTreeToggle<CR>

"Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '

"General settings
set number relativenumber

set wildmenu

set tabstop=4

set shiftwidth=4

set noswapfile
set nobackup
set nowb

set cursorline

set softtabstop=0 noexpandtab
