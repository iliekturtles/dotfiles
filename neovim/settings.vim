set autoread
set autowrite
set backspace=indent,eol,start
set confirm
set cursorline
set encoding=utf-8
set expandtab
set fo+=jn " Remove comment leader when joining lines, recognize numbered lists.
set gdefault " Default :substitute 'g' flag to on.
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
if has('gui')
    set guioptions-=e " Use non-GUI tab pages.
    set guioptions-=tT " Disable tearoff menu items and toolbar.
endif
set hlsearch incsearch ignorecase smartcase
set hidden " Allow for hidden buffers.
set keywordprg=:help
set laststatus=2 " Always show the status line.
set lazyredraw
set list listchars=tab:→ ,space:·,trail:·,nbsp:·
if has('mouse')
    set mouse=a
endif
set nojoinspaces " Don't insert two spaces after punctuation when joining lines.
set noshowmode
set nowrap
set nrformats-=octal " Disable octal when using CTRL-A and CTRL-X.
set scrolloff=5
set shiftwidth=4
set showcmd
set showmatch
set sidescroll=1
set sidescrolloff=10
set signcolumn=yes
set smarttab
set switchbuf=useopen,usetab
set tabstop=4
set tildeop
set updatetime=1000
set vb
set wildmenu
set wildmode=list:longest

syntax on
