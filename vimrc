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
else
    Plugin 'ervandew/supertab'
end
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
if !has('patch711')
    Plugin 'chrisbra/vim-show-whitespace'
endif
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'OrangeT/vim-csharp'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
if !empty($RACER_PATH)
    Plugin 'racer-rust/vim-racer'
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
set nrformats-=octal
set pastetoggle=<F2>
set scrolloff=10
set shiftwidth=4
set showcmd
set showmatch
set sidescrolloff=5
set smarttab
set t_Co=256
set tabstop=4
set tildeop
set nowrap

let mapleader=","

" Map ,, to ,'s original functionality.
nnoremap <leader>, ,

" Use very magic searching.
nnoremap / /\v
vnoremap / /\v

" Map e to toggle NERDTree.
nnoremap <leader>e :NERDTreeToggle<cr>

" Map l to toggle line numbers and rl to toggle relative line numbers.
nnoremap <leader>l :set number!<cr>
nnoremap <leader>rl :set number!<cr>:set relativenumber!<cr>
vnoremap <leader>l :<c-u>set number!<cr>gv
vnoremap <leader>rl :<c-u>set number!<cr>:<c-u>set relativenumber!<cr>gv

" Map space to stop search highlighting.
nnoremap <leader><space> :noh<cr>

" Map ws to toggle white space.
if has('patch711')
    nnoremap <leader>ws :set list!<cr>
endif

" Map visual mode F2 to run the selection as an ex command.
vnoremap <f2> :<c-u>exe join(getline("'<","'>"),'<bar>')<cr>

" Replace and delete without yanking unless <leader> is used.
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
colorscheme elfmagic
highlight ColorColumn ctermbg=236

" Vertical edge.
let cc81=join(range(81, 255), ",")
let cc101=join(range(101, 255), ",")
let &colorcolumn=cc81
au FileType rust,toml let &l:colorcolumn=cc101

" Compiler settings.
au BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo

" Visible whitespace.
if !has('patch711')
    au BufRead,BufNewFile * ShowWhiteToggle
endif

" Syntax highlighting.
au BufRead,BufNewFile *.md setfiletype markdown
au BufRead,BufNewFile *.proj,*.targets setfiletype xml

" Racer.
if !empty($RACER_PATH)
    let g:racer_cmd=$RACER_PATH
endif

" GUI settings.
if has('gui')
    set guifont=Consolas:h12
    syntax on
endif
