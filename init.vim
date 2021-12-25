" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
autocmd BufEnter * lcd %:p:h " When opening a file with nerdtree, sets the buffers to the dir the file is in

cd ~\Desktop\Projects

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
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

" General mappings
map <leader>cd :lcd %:h<CR>

" NERDTree mappings
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-r> :NERDTreeRefreshRoot<CR>

cnoreabbrev h vert h
cnoreabbrev e vsplit

" FZF mappings
nmap <C-f> :FZF


