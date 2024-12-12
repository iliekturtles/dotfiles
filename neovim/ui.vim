" Colors.
set t_Co=256
set termguicolors
set t_ut=
set background=dark
let g:onedark_config = {
    \ 'style': 'darker',
    \ 'colors': {
        \ 'bg0': '#16181A',
    \ },
    \ 'highlights': {
        \ 'NormalMode': { 'fg': '$bg0', 'bg': '$green', 'fmt': 'bold', },
        \ 'InsertMode': { 'fg': '$bg0', 'bg': '$blue', 'fmt': 'bold', },
        \ 'VisualMode': { 'fg': '$bg0', 'bg': '$orange', 'fmt': 'bold', },
        \ 'CommandMode': { 'fg': '$bg0', 'bg': '$red', 'fmt': 'bold', },
        \ 'ReplaceMode': { 'fg': '$bg0', 'bg': '$red', 'fmt': 'bold', },
        \ 'User1': { 'fg': '$bg1', 'bg': '$bg_d', },
        \ 'User2': { 'fg': '$bg1', 'bg': '$bg0', },
        \ 'User3': { 'fg': '$bg1', 'bg': '$bg1', },
        \ 'User4': { 'fg': '$bg1', 'bg': '$bg2', },
        \ 'User5': { 'fg': '$bg1', 'bg': '$bg3', },
        \ 'User6': { 'fg': '$bg1', 'bg': '$grey', },
        \ 'User7': { 'fg': '$bg1', 'bg': '$light_grey', },
        \ 'User8': { 'fg': '$bg1', 'bg': '$fg', },
    \ },
\ }

" colorscheme unicon
colorscheme onedark

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
