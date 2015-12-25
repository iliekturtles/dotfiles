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
set background=dark
set backspace=indent,eol,start
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
set nowrap
set nrformats-=octal
set pastetoggle=<F2>
set ruler
set scrolloff=10
set shiftwidth=4
set showcmd
set showmatch
set sidescrolloff=5
set smarttab
" Show EOL type and last modified timestamp, right after the filename
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P
set t_Co=256
set tabstop=4
set tildeop
set vb

syntax on

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

" Map h to toggle hex mode.
nnoremap <leader>h :Hexmode<CR>

" Replace and delete without yanking unless <leader> is used.
vnoremap p "_dP
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X
if has('clipboard')
    nnoremap <leader>c "*c
    vnoremap <leader>c "*c
    nnoremap <leader>C "*C
    vnoremap <leader>C "*C
    nnoremap <leader>d "*d
    vnoremap <leader>d "*d
    nnoremap <leader>D "*D
    vnoremap <leader>D "*D
    nnoremap <leader>x "*x
    vnoremap <leader>x "*x
    nnoremap <leader>X "*X
    vnoremap <leader>X "*X
else
    nnoremap <leader>c ""c
    vnoremap <leader>c ""c
    nnoremap <leader>C ""C
    vnoremap <leader>C ""C
    nnoremap <leader>d ""d
    vnoremap <leader>d ""d
    nnoremap <leader>D ""D
    vnoremap <leader>D ""D
    nnoremap <leader>x ""x
    vnoremap <leader>x ""x
    nnoremap <leader>X ""X
    vnoremap <leader>X ""X
endif

" Hexmode, http://vim.wikia.com/wiki/Improved_hex_editing
command -bar Hexmode call ToggleHex()

function ToggleHex()
    " hex mode should be considered a read-only operation
    " save values for modified and read-only for restoration later,
    " and clear the read-only flag for now
    let l:modified=&mod
    let l:oldreadonly=&readonly
    let &readonly=0
    let l:oldmodifiable=&modifiable
    let &modifiable=1

    if !exists("b:editHex") || !b:editHex
        " save old options
        let b:oldft=&ft
        let b:oldbin=&bin
        " set new options
        setlocal binary " make sure it overrides any textwidth, etc.
        silent :e " this will reload the file without trickeries 
                  "(DOS line endings will be shown entirely )
        let &ft="xxd"
        " set status
        let b:editHex=1
        " switch to hex editor
        %!xxd
    else
        " restore old options
        let &ft=b:oldft
        if !b:oldbin
          setlocal nobinary
        endif
        " set status
        let b:editHex=0
        " return to normal editing
        %!xxd -r
    endif

    " restore values for modified and read only state
    let &mod=l:modified
    let &readonly=l:oldreadonly
    let &modifiable=l:oldmodifiable
endfunction

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
au BufRead,BufNewFile tmux.conf setfiletype tmux

" Racer.
if !empty($RACER_PATH)
    let g:racer_cmd=$RACER_PATH
endif

" GUI settings.
if has('gui')
    set guifont=Consolas:h12
endif
