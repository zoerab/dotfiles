"-----------------------------------------------------"
" Initial tweaks
"-----------------------------------------------------"
set nocompatible              " be iMproved, required
filetype off                  " required


"-----------------------------------------------------"
" Initiate PLUG
"-----------------------------------------------------"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"-----------------------------------------------------"
" My Plugins (use single quotes only)
"-----------------------------------------------------"
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'mbbill/undotree'
Plug 'sjl/vitality.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf',                    { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'scrooloose/nerdtree',             {'on': 'NERDTreeToggle'}
Plug 'fatih/vim-go',                    {'for': 'go', 'do': ':GoInstallBinaries'}
Plug 'nsf/gocode',                      { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh'  }
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'

"-----------------------------------------------------"
" End of plugins
"-----------------------------------------------------"
call plug#end()


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
let g:gruvbox_vert_split = 'bg2'
let g:gruvbox_contrast_dark = 'hard'
"set background=light
"let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox

"-----------------------------------------------------"
" Airline configurations
"-----------------------------------------------------"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'

"-----------------------------------------------------"
" Spell check settings
"-----------------------------------------------------"
:hi clear SpellBad
:hi SpellBad cterm=underline ctermfg=red

"-----------------------------------------------------"
" Tmux integration with airline
"-----------------------------------------------------"
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_theme = 'airline'
let g:tmuxline_preset = 'full'


"-----------------------------------------------------"
" Editor tweaks
"-----------------------------------------------------"
set cursorline
set cursorcolumn
set pastetoggle=<F2>
set expandtab
set visualbell
set noerrorbells
set title
set autoread
set showmatch
set autoindent
set copyindent
set showmode
set modelines=0
set shiftwidth=2
set shiftround
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
set hidden
set lazyredraw
set backspace=indent,eol,start


"-----------------------------------------------------"
" Arrows are evil
"-----------------------------------------------------"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


"-----------------------------------------------------"
" No show command
"-----------------------------------------------------"
autocmd VimEnter * set nosc


"-----------------------------------------------------"
" Toggle all buffers
"-----------------------------------------------------"
nnoremap <silent> <unique> <leader>b :BufExplorer<CR>


"-----------------------------------------------------"
" Moving selected blocks in Visual Block mode
"-----------------------------------------------------"
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


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
" Commenting the code
"-----------------------------------------------------"
nmap cm  <Plug>Commentary
nmap cml <Plug>CommentaryLine
nmap mcl <Plug>CommentaryLine


"-----------------------------------------------------"
" Save all files on focus lost, 
"autocmd FocusLost * :wa
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
"cmap fuck w !sudo tee > /dev/null %
com! W w !sudo tee % > /dev/null


"-----------------------------------------------------"
" NERDTree
"-----------------------------------------------------"
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg', '.DS_Store']
let NERDTreeShowHidden=1
nmap <silent> <leader>y :NERDTreeFind<cr>

"-----------------------------------------------------"
" FZF
"-----------------------------------------------------"
if has_key(g:plugs, 'fzf.vim')
  nnoremap <Leader>b :Buffers<CR>
  nnoremap <Leader>c :Commands<CR>
  nnoremap <Leader>l :BLines<CR>
  nnoremap <Leader>f :Rg<CR>
  nnoremap <C-p> :Files<CR>
endif
" Use ripgrep instead of grepprg 
set grepprg=rg\ --vimgrep
" Searching tweaks
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" Using ripgrep with fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
" File privew window on the right
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:50%'), <bang>0)

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
" Undotree configurations
"-----------------------------------------------------"
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif
" Window layout style
let g:undotree_WindowLayout = 4


"-----------------------------------------------------"
" Quit with :Q
"-----------------------------------------------------"
command -nargs=0 Quit :qa!

