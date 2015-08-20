" Vundle
set nocompatible
filetype off

if has('windows') && has('gui')
    set rtp+=~/vimfiles/bundle/Vundle.vim
    call vundle#begin('~/vimfiles/bundle')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

Plugin 'gmarik/Vundle.vim'
if has('python')
    Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'scrooloose/nerdcommenter'
if !has('patch711')
    Plugin 'chrisbra/vim-show-whitespace'
endif
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
if !empty($RUST_SRC_PATH)
    Plugin 'phildawes/racer'
endif

call vundle#end()
filetype plugin indent on

" Defaults.
"set cursorline
set clipboard=unnamed
set encoding=utf-8
set expandtab
set gdefault
set hlsearch incsearch ignorecase smartcase
set hidden
set laststatus=2
if has('patch711')
    set list listchars=tab:→ ,space:·,trail:·,nbsp:·
endif
set pastetoggle=<F2>
set showmatch
set scrolloff=10
set shiftwidth=4
set t_Co=256
set tabstop=4
set tildeop
set nowrap

let mapleader=","

nnoremap / /\v
vnoremap / /\v

nnoremap <leader>, ,
nnoremap <leader><space> :noh<cr>
if has('patch711')
    nnoremap <leader>ws :set list!<cr>
endif
vnoremap <f2> :<c-u>exe join(getline("'<","'>"),'<bar>')<cr>

" Replace and delete without yanking.
vnoremap p "_dP
nnoremap c "_c
nnoremap C "_C
nnoremap d "_d
nnoremap D "_D
nnoremap x "_x
nnoremap X "_X
if has('clipboard')
    nnoremap <leader>c "*c
    nnoremap <leader>C "*C
    nnoremap <leader>d "*d
    nnoremap <leader>D "*D
    nnoremap <leader>x "*x
    nnoremap <leader>X "*X
else
    nnoremap <leader>c ""c
    nnoremap <leader>C ""C
    nnoremap <leader>d ""d
    nnoremap <leader>D ""D
    nnoremap <leader>x ""x
    nnoremap <leader>X ""X
endif

" Colors.
colorscheme elflord
highlight ColorColumn ctermbg=235

" Vertical edge.
let cc81=join(range(81, 255), ",")
let cc101=join(range(101, 255), ",")
let &colorcolumn=cc81
au FileType rust,toml let &l:colorcolumn=cc101

" Racer.
if !empty($RUST_SRC_PATH)
    let g:racer_cmd="/home/mike/Source/racer/target/release/racer"
endif

" Visible whitespace.
if !has('patch711')
    au BufRead,BufNewFile * ShowWhiteToggle
endif

" Markdown syntax highlighting.
au BufRead,BufNewFile *.md setfiletype markdown
" XML syntax highlighting.
au BufRead,BufNewFile *.proj setfiletype xml
au BufRead,BufNewFile *.targets setfiletype xml

" GUI settings.
if has('gui')
    set guifont=Consolas:h12
    syntax on
endif
