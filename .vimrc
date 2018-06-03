set autoindent
set autoread
set backspace=start,eol,indent
set backupcopy=yes
set confirm
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set grepprg=git\ grep\ -nIH
set guifont=Inconsolata:h13
set guioptions-=L
set guioptions-=R
set guioptions-=l
set guioptions-=r
set hidden
set hlsearch
set ignorecase
set iminsert=0
set imsearch=-1
set incsearch
set laststatus=2
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%
set nobackup
set nocompatible
set noswapfile
set nowrap
set number
set scrolloff=8
set shiftwidth=2
set showmatch
set smartcase
set smartcase
set smartindent
set statusline=%<%f\ %m%r%h%w
set statusline+=%=%l/%L,%c%V%8P
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set switchbuf+=usetab,newtab
set tabpagemax=30
set tabstop=2
set viminfo=
set whichwrap=h,l
set wildmenu
set wildmode=list:full

autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost *grep* redraw!
autocmd QuickFixCmdPost *make* cwindow
autocmd QuickFixCmdPost *make* redraw!
autocmd SessionLoadPost * autocmd VimLeave * mks!
autocmd TabLeave * cclose

let g:netrw_preview=1
let g:netrw_winsize=30

nnoremap <silent> st :<C-u>Texplore<CR>
nnoremap <C-j>  gt
nnoremap <C-k>  gT

cabbrev grep silent grep!
cabbrev make silent make!

colorscheme hybrid
syntax on
