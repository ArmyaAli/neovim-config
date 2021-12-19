" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
autocmd BufEnter * lcd %:p:h " When opening a file with nerdtree, sets the buffers to the dir the file is in

cd ~\Desktop\Projects

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

set completeopt=menuone,noinsert,noselect
set mouse=a
set splitright
set splitbelow
set expandtab
set tabstop=4
set shiftwidth=4
set number
set ignorecase
set smartcase
set incsearch
set diffopt+=vertical
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set shortmess+=c
set signcolumn=yes
set updatetime=750
set bg=dark
set clipboard+=unnamedplus
colorscheme gruvbox

filetype plugin indent on
let mapleader = " "
let g:netrw_banner=0
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript']
let g:airline_theme='gruvbox'

" Shortcut to init.vim
nnoremap <leader>v :e $MYVIMRC<CR>
" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Status-bar
let g:airline#extensions#tabline#enabled = 1
