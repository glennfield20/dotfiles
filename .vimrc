" Download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" Plugins 
silent! if plug#begin()

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'tpope/vim-endwise'
  Plug 'https://github.com/jiangmiao/auto-pairs.git'
  Plug 'tpope/vim-rails'
  Plug 'https://github.com/kien/ctrlp.vim.git'
  Plug 'tomtom/tcomment_vim'
  Plug 'https://github.com/jpo/vim-railscasts-theme.git'
  Plug 'https://github.com/tomasr/molokai.git'
  Plug 'https://github.com/vim-scripts/ZoomWin.git'
  Plug 'alvan/vim-closetag'
  Plug 'gertjanreynaert/cobalt2-vim-theme'
  Plug 'https://github.com/sheerun/vim-polyglot.git'
  Plug 'https://github.com/tpope/vim-surround.git'
  Plug 'maxboisvert/vim-simple-complete'
  Plug 'easymotion/vim-easymotion'
  Plug 'https://github.com/mattn/emmet-vim.git'
  Plug 'https://github.com/tpope/vim-fugitive.git'

  call plug#end()
endif

" ===============================================
"               GENERAL SETTINGS 
" ===============================================

filetype plugin indent on
colorscheme cobalt2
set backspace=indent,eol,start
set history=1000
set ruler
set showcmd
set autoindent
set showmatch
set nowrap
set autoread
set autowrite
set backupdir=~/.tmp
set directory=~/.tmp
set viminfo+=!
set guioptions-=T
set laststatus=2
set scrolloff=3
set sidescrolloff=4
set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set relativenumber
set number
set wrap
set linebreak
set hlsearch
set incsearch
set ignorecase
set smartcase
set mouse=a
set shell=bash
set clipboard=unnamed
set winwidth=100
set winheight=5
set winminheight=5
set winheight=999
set noswapfile
set wildmenu
set nostartofline
" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set path+=**


" ===============================================
"                CUSTOM MAPPING
" ===============================================

" Search and replace word under cursor using F4
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i


" ===============================================
"                Manage Plugins
" ===============================================

" CtrlP Plugin
set wildignore+=*.bmp.*.gif.*.ico.*.jpg.*.png
set wildignore+=*/tmp/*,*.so,*/node_modules/*,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'ra'
:map <c-b> :CtrlPBuffer<CR>

" Easymotion Plugin
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" NERDTree Plugin
:map <Tab> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" T-Comment Plugin
:map <leader>c <c-_><c-_>

" Vim-Emmet Plugin
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends': 'jsx',
\      'quote_char': "'",
\  },
\}

" vim-simple-complete Plugin
set complete-=t
set complete-=i
