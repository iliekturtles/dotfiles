" Colors.
set t_Co=256
" set termguicolors
set t_ut=
set background=dark
colorscheme unicon

" Vertical edge.
let cc81=join(range(81, 255), ',')
let cc101=join(range(101, 255), ',')
let &colorcolumn=cc101

" GUI settings.
if has('gui')
    set guifont=Consolas:h11

    augroup gui
        au!

        " Maximize.
        au GUIEnter * simalt ~x
    augroup end
endif
