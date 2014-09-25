"set cursorline
set concealcursor=nvic
set conceallevel=2
set expandtab
set shiftwidth=4
set t_Co=256
set tabstop=4

let &colorcolumn=join(range(81, 500), ",")
highlight ColorColumn ctermbg=235
highlight Conceal None

au BufEnter * syntax match NonText / / conceal cchar=·
au BufRead,BufNewFile *.md set filetype=markdown

if has('gui_running')
    set guifont=Monospace\ 11
    colorscheme evening
endif
