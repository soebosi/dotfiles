set autoindent
set autoread
set background=dark
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
set wildignore+=*/node_modules/*

autocmd QuickFixCmdPost *grep*,*make* cwindow
autocmd QuickFixCmdPost *grep*,*make* redraw!
autocmd SessionLoadPost * autocmd VimLeave * mks!
autocmd BufLeave * cclose

autocmd FileType javascript,typescript,typescript.tsx set formatprg=npx\ prettier\ --parser\ typescript
autocmd FileType php set formatprg=npx\ prettier\ --parser\ html

let g:netrw_preview=1
let g:netrw_winsize=30

nnoremap <silent> st :<C-u>tabnew %<CR>
nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-m> gggqG
nnoremap <C-h> gT
nnoremap <C-l> gt

cabbrev grep silent grep!
cabbrev smake silent make!
cabbrev vterm vert term

colorscheme hybrid
syntax on

call plug#begin('~/.vim/plugged')
  Plug 'leafgarland/typescript-vim'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
call plug#end()

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gh <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
