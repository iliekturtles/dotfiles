" Colors.
set t_Co=256
set termguicolors
set t_ut=
set background=dark
colorscheme unicon

" Vertical edge.
let cc81=join(range(81, 255), ',')
let cc101=join(range(101, 255), ',')
let &colorcolumn=cc101

" GUI settings.
if has('gui')
    augroup gui
        au!

        " Maximize.
        au GUIEnter * simalt ~x
    augroup end
endif

{{#if dotter.packages.neovide}}
" Neovide settings
if exists("g:neovide")
    if has('win32')
        set guifont=Cascadia\ Mono:h11
    endif
    let g:neovide_cursor_animation_length = 0
endif
{{/if}}
