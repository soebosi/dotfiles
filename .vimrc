set fileencoding=utf-8
set encoding=utf-8
colorscheme hybrid
syntax on
set nocompatible
set backspace=start,eol,indent
set number
set cursorline
set laststatus=2
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%
set whichwrap=h,l
set guifont=Inconsolata:h13
set tabstop=2
set shiftwidth=2
set autoindent
set ignorecase
set smartcase
set smartindent
set nowrap
set showmatch
set hlsearch
set smartcase
set expandtab
set wildmenu
set wildmode=list:longest
set hidden
set confirm
set noswapfile
set nobackup
set scrolloff=8
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set statusline=%<%f\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P
set iminsert=0
set imsearch=-1
set autoread

nnoremap <silent> st :<C-u>tabnew .<CR>
nnoremap <C-j>  gt
nnoremap <C-k>  gT
inoremap <C-l>  <esc>
nnoremap <Space>h  ^
nnoremap <Space>l  $
