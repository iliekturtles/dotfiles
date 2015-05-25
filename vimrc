" Defaults.
"set cursorline
set concealcursor=nvic
set conceallevel=2
set expandtab
set hlsearch incsearch ignorecase smartcase
set hidden
set scrolloff=10
set shiftwidth=4
set t_Co=256
set tabstop=4

" Colors.
colorscheme elflord
highlight ColorColumn ctermbg=235
highlight Conceal None

" Vertical edge.
let cc81=join(range(81, 255), ",")
let cc101=join(range(101, 255), ",")
let &colorcolumn=cc81
au FileType rust let &l:colorcolumn=cc101

" Racer.
let g:racer_cmd="/home/mike/Source/racer/target/release/racer"

" Visible whitespace. Ware the copy and paste.
au BufEnter * syntax match NonText / / conceal cchar=·

" Markdown syntax highlighting.
au BufRead,BufNewFile *.md set filetype=markdown

" GUI settings.
if has('gui_running')
    set guifont=Monospace\ 11
    colorscheme evening
endif
