" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
	" Ensure all needed directories exist  (Thanks @kapadiamush)
	execute 'mkdir -p ~/dotfiles/vim/plugged'
	execute 'mkdir -p ~/dotfiles/vim/autoload'
	" Download the actual plugin manager
	execute '!curl -fLo ~/dotfiles/vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

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

call plug#end()
" Set vim current theme
colorscheme cobalt2
" Faster shorcut for commenting. Requires T-Comment Plugin
:map <leader>c <c-_><c-_>

" Vim Settings
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set noswapfile
set number

" Settings for ControlP Plugin
set wildignore+=*.bmp.*.gif.*.ico.*.jpg.*.png
set wildignore+=*/tmp/*,*.so,*/node_modules/*,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'ra'
:map <c-b> :CtrlPBuffer<CR>

" Settings for NERDTree Plugin
:map <Tab> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

