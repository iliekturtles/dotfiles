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
    if !empty($RACER_PATH)
        Plugin 'racer-rust/vim-racer'
    endif
end
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
if !has('patch711')
    Plugin 'chrisbra/vim-show-whitespace'
endif
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/matchit.zip'
Plugin 'OrangeT/vim-csharp'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'

call vundle#end()
filetype plugin indent on

" Defaults.
set autowrite
set background=dark
set backspace=indent,eol,start
"set cursorline
set clipboard=unnamed
set encoding=utf-8
set expandtab
set fo+=j               " Remove comment leader when joining lines.
set gdefault
set hlsearch incsearch ignorecase smartcase
set hidden
set laststatus=2
set lazyredraw
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

" Map kj to leave insert mode.
imap kj <Esc>

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

" Stay in visual mode when indenting.
vnoremap < <gv
vnoremap > >gv

" Map visual mode F2 to run the selection as an ex command.
vnoremap <f2> :<c-u>exe join(getline("'<","'>"),'<bar>')<cr>

" Map h to toggle hex mode.
nnoremap <leader>h :Hexmode<CR>

" Map Y yank to the end of the line.
noremap Y y$

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
nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S
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
    nnoremap <leader>s "*s
    vnoremap <leader>s "*s
    nnoremap <leader>S "*S
    vnoremap <leader>S "*S
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
    nnoremap <leader>s ""s
    vnoremap <leader>s ""s
    nnoremap <leader>S ""S
    vnoremap <leader>S ""S
    nnoremap <leader>x ""x
    vnoremap <leader>x ""x
    nnoremap <leader>X ""X
    vnoremap <leader>X ""X
endif

" Smart window switching with awareness of Tmux panes. Now, I can use Ctrl+hjkl
" in both Vim and Tmux (without using the prefix). Based on
" http://www.codeography.com/2013/06/19/navigating-vim-and-tmux-splits.
if exists('$TMUX')
    function! s:TmuxOrSplitSwitch(wincmd, tmuxdir)
        let previous_winnr = winnr()
        silent! execute 'wincmd ' . a:wincmd
        if previous_winnr == winnr()
            call system('tmux select-pane -' . a:tmuxdir)
            redraw!
        endif
    endfunction

    let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
    let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
    let &t_te = "\<Esc>]2;" . previous_title . "\<Esc>\\" . &t_te

    nnoremap <silent> <C-h> :call <SID>TmuxOrSplitSwitch('h', 'L')<CR>
    nnoremap <silent> <C-j> :call <SID>TmuxOrSplitSwitch('j', 'D')<CR>
    nnoremap <silent> <C-k> :call <SID>TmuxOrSplitSwitch('k', 'U')<CR>
    nnoremap <silent> <C-l> :call <SID>TmuxOrSplitSwitch('l', 'R')<CR>
else
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l
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
au BufRead,BufNewFile tmux*.conf setfiletype tmux

if has('python')
    " YouCompleteMe.
    let g:ycm_rust_src_path=$RUST_SRC_PATH
    nnoremap <leader>] :YcmCompleter GoTo<CR>
    "nnoremap <leader>} :YcmCompleter GoToReferences<CR>
else
    " Racer.
    if !empty($RACER_PATH)
        let g:racer_cmd=$RACER_PATH
    endif
endif

" GUI settings.
if has('gui')
    set guifont=Consolas:h12
endif
