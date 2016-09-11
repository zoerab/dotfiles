"-----------------------------------------------------"
" Initial tweaks
"-----------------------------------------------------"
set nocompatible              " be iMproved, required
filetype off                  " required

"-----------------------------------------------------"
" Set the runtime path to include Vundle & initialize
"-----------------------------------------------------"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"-----------------------------------------------------"
" Let Vundle manage Vundle, required
"-----------------------------------------------------"
Plugin 'VundleVim/Vundle.vim'

"-----------------------------------------------------"
" My Plugins 
"-----------------------------------------------------"
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'slim-template/vim-slim'
Plugin 'benmills/vimux'
Plugin 'sjl/vitality.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

"-----------------------------------------------------"
" End of plugins
"-----------------------------------------------------"
call vundle#end()
filetype plugin indent on

"-----------------------------------------------------"
" Comma is now a leader
"-----------------------------------------------------"
let mapleader=","
let g:mapleader=","

"-----------------------------------------------------"
" Themes
"-----------------------------------------------------"
syntax enable
set background=dark
colorscheme monokain 

"-----------------------------------------------------"
" Cursor tweaks
"-----------------------------------------------------"
set cursorline

"set cursorcolumn
"highlight cursorline term=underline cterm=underline ctermbg=0 gui=underline guibg=NONE guisp=grey40
"if has("autocmd")
"  au BufEnter * set cursorline cursorcolumn
"endif

"-----------------------------------------------------"
" Editor tweaks
"-----------------------------------------------------"
set expandtab
set showmode
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set encoding=utf-8
set tabstop=2
set smarttab
set nowrap
set number
set relativenumber
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set incsearch
set ignorecase
set smartcase
set lazyredraw
set backspace=indent,eol,start

" Arrows are evil
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

"-----------------------------------------------------"
" Automatic formatting
"-----------------------------------------------------"
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

"-----------------------------------------------------"
" No show command
"-----------------------------------------------------"
autocmd VimEnter * set nosc

"-----------------------------------------------------"
" Enable mouse support in VIM, NeoVim might have issues
"-----------------------------------------------------"
if has('mouse')
  set mouse=a
  if !has('nvim')
    set ttymouse=xterm2
  endif
endif

"-----------------------------------------------------"
" Space character in vertical splitt line
"-----------------------------------------------------"
set fillchars=vert:\ 

"-----------------------------------------------------"
" Quick ESC
"-----------------------------------------------------"
imap jj <ESC>

"-----------------------------------------------------"
" Save all files on focus lost, 
" ignoring warnings about untitled buffers
"-----------------------------------------------------"
autocmd FocusLost * silent! wa

"-----------------------------------------------------"
" Easier split navigation (ctrl+j,h,k,l buttons)
"-----------------------------------------------------"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"-----------------------------------------------------"
" Quickedit vimrc file
"-----------------------------------------------------"
nmap <Leader>ev  :tabedit $MYVIMRC<cr>

"-----------------------------------------------------"
" Autosource vimrc on save
"-----------------------------------------------------"
augroup autosourcing
  autocmd BufWritePost .vimrc source %
augroup END

"-----------------------------------------------------"
" Jump to the next row on long lines
"-----------------------------------------------------"
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

"-----------------------------------------------------"
" Format the entire file
"-----------------------------------------------------"
nmap <leader>fef ggVG=

"-----------------------------------------------------"
" Open new buffers
"-----------------------------------------------------"
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

"-----------------------------------------------------"
" Tab between buffers
"-----------------------------------------------------"
noremap <tab> <c-w><c-w>

"-----------------------------------------------------"
" Disable search highlight
"-----------------------------------------------------"
nmap <Leader><space>  :nohlsearch<cr>

"-----------------------------------------------------"
" Switch between last two buffers
"-----------------------------------------------------"
nnoremap <leader><leader> <C-^>

"-----------------------------------------------------"
" Saving files in SUDO mode
"-----------------------------------------------------"
cmap w!! w !sudo tee > /dev/null %

"-----------------------------------------------------"
" NERDTree
"-----------------------------------------------------"
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
let NERDTreeShowHidden=1
nmap <silent> <leader>y :NERDTreeFind<cr>

"-----------------------------------------------------"
" CtrlP
"-----------------------------------------------------"
nnoremap <silent> t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

"-----------------------------------------------------"
" Fugitive Shortcuts
"-----------------------------------------------------"
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>
nmap <leader>m :MarkedOpen!<cr>
nmap <leader>mq :MarkedQuit<cr>

"-----------------------------------------------------"
" Toggle Syntastic
"-----------------------------------------------------"
nmap <leader>s :SyntasticToggleMode<cr>

"-----------------------------------------------------"
" Emmet config
"-----------------------------------------------------"
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"-----------------------------------------------------"
" Undotree configurations
"-----------------------------------------------------"
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

"-----------------------------------------------------"
" Airline configurations
"-----------------------------------------------------"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'

"-----------------------------------------------------"
" Tmux integration with airline
"-----------------------------------------------------"
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_theme = 'airline'
let g:tmuxline_preset = 'full'

"-----------------------------------------------------"
" Quit with :Q
"-----------------------------------------------------"
command -nargs=0 Quit :qa!
