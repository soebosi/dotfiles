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
set smartindent
set statusline=%<%f\ %m%r%h%w%=%l/%L,%c%V%8P%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set tabstop=2
set viminfo=
set whichwrap=h,l
set wildmenu
set wildmode=list:full

autocmd QuickFixCmdPost *grep*,*make* cwindow
autocmd QuickFixCmdPost *grep*,*make* redraw!
autocmd SessionLoadPost * autocmd VimLeave * mks!
autocmd BufLeave * cclose

let g:netrw_preview=1
let g:netrw_winsize=30

nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-l> :ls<CR>:buf 

tnoremap <C-w><C-j> <C-w>:bprevious<CR>
tnoremap <C-w><C-k> <C-w>:bnext<CR>

cabbrev grep silent grep!
cabbrev make silent make!

colorscheme hybrid
syntax on
