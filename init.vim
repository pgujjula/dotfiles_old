" Make sure to install vim-plug first, see https://github.com/junegunn/vim-plug
" PLUGINS
call plug#begin(stdpath('data') . '/plugged')

""" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

""" language support
Plug 'neovimhaskell/haskell-vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

""" themes
Plug 'cocopon/iceberg.vim'
" Plug 'iCyMind/NeoSolarized'

""" statusline
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
" Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_powerline_fonts = 1

" to truncate all path sections but the last one, e.g. a branch
" 'foo/bar/baz' becomes 'f/b/baz', use
let g:airline#extensions#branch#format = 2

" Modelines are lines you can add to a text file to change the behavior of
" vim. They are a security vulnerability.
set nomodeline

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Enable use of the mouse for all modes
set mouse=a

" Write the swap file to disk more often, so that gitgutter runs more often
set updatetime=100

" Display line numbers on the left
set number

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search, and refresh GitGutter
nnoremap <C-L> :nohl<CR>:GitGutterAll<CR><C-L>

" On pressing tab, insert 2 spaces
set expandtab

set tabstop=2
set softtabstop=2
set shiftwidth=2

" COLORSCHEMES
set termguicolors
set background=dark
colorscheme iceberg
" Turn off background color, so that the background color is automatically
" that of the terminal theme.
hi Normal guibg=NONE ctermbg=NONE

" Map <Alt-f> and <Alt-d> to move back and forth between tabs
nnoremap <a-f> :tabn<CR>
nnoremap <a-d> :tabp<CR>
inoremap <a-f> <Esc>:tabn<CR>a
inoremap <a-d> <Esc>:tabp<CR>a

" Map <Alt-s> to save a file
nnoremap <a-s> :w<CR>
inoremap <a-s> <Esc>:w<CR>a
vnoremap <a-s> <Esc>:w<CR><C-v>

" AIRLINE SETTINGS
set ttimeoutlen=10
