" Status line.
" Adapted from https://github.com/lifepillar/vimrc/blob/697f8f659f047ebb23b7ae0f96778781ec07c1eb/vimrc#L205
" See :h mode() (some of these are never used in the status line).
let g:mode_map = {
    \ 'n':      [' NORMAL ', 'NormalMode'],
    \ 'no':     [' PENDING', 'NormalMode'],
    \ 'v':      [' VISUAL ', 'VisualMode'],
    \ 'V':      [' V-LINE ', 'VisualMode'],
    \ "\<c-v>": [' V-BLOCK', 'VisualMode'],
    \ 's':      [' SELECT ', 'VisualMode'],
    \ 'S':      [' S-LINE ', 'VisualMode'],
    \ "\<c-s>": [' S-BLOCK', 'VisualMode'],
    \ 'i':      [' INSERT ', 'InsertMode'],
    \ 'ic':     ['COMPLETE', 'InsertMode'],
    \ 'ix':     [' CTRL-X ', 'InsertMode'],
    \ 'R':      [' REPLACE', 'ReplaceMode'],
    \ 'Rc':     ['COMPLETE', 'ReplaceMode'],
    \ 'Rv':     [' REPLACE', 'ReplaceMode'],
    \ 'Rx':     [' CTRL-X ', 'ReplaceMode'],
    \ 'c':      [' COMMAND', 'CommandMode'],
    \ 'cv':     [' COMMAND', 'CommandMode'],
    \ 'ce':     [' COMMAND', 'CommandMode'],
    \ 'r':      [' PROMPT ', 'CommandMode'],
    \ 'rm':     [' -MORE- ', 'CommandMode'],
    \ 'r?':     ['CONFIRM ', 'CommandMode'],
    \ '!':      [' SHELL  ', 'CommandMode'],
    \ 't':      ['TERMINAL', 'CommandMode']}

" newMode may be a value as returned by mode(1) or the name of a highlight group.
" Note: setting highlight groups while computing the status line may cause the
" startup screen to disappear. See: https://github.com/powerline/powerline/issues/250
fun! s:updateStatusLineHighlight(newMode)
    execute 'hi! link CurrMode' get(g:mode_map, a:newMode, ["", a:newMode])[1]

    return 1
endf

" nr is always the number of the currently active window. In a %{} context, winnr()
" always refers to the window to which the status line being drawn belongs. Since this
" function is invoked in a %{} context, winnr() may be different from a:nr. We use this
" fact to detect whether we are drawing in the active window or in an inactive window.
fun! SetupStl(nr)
    return get(extend(w:, {
            \ "lf_active": winnr() != a:nr
            \ ? 0
            \ : (mode(1) ==# get(g:, "lf_cached_mode", "")
            \ ? 1
            \ : s:updateStatusLineHighlight(get(extend(g:, { "lf_cached_mode": mode(1) }), "lf_cached_mode"))
            \ )
            \ }), "", "")
endf

fun! BuildStatusLine(nr)
    return '%{SetupStl('.a:nr.')}
        \%#CurrMode#%{w:["lf_active"] ? "  " . get(g:mode_map, mode(1), [mode(1)])[0] . (&paste ? "| PASTE " : " ") : ""}
        \%<%8* %f %{&modified ? "| + " : (!&modifiable ? "| - " : (&previewwindow ? " | PRV " : ""))}
        \%*%=
        \%5*%{get(b:, "ale_info", "")}
        \%#DiffDelete#%{get(b:, "ale_errors", "")}
        \%#DiffChange#%{get(b:, "ale_warnings", "")}
        \%6* %{&fileformat} | %{(strlen(&fenc) ? &fenc : &enc) . (&bomb ? ",BOM" : "")} | %{&filetype}
        \ %7* %p %%
        \ %8* %l:%v '
endf

fun! s:enableStatusLine()
    if exists("g:default_stl") | return | endif

    let g:default_stl = &statusline
    set statusline=%!BuildStatusLine(winnr()) " winnr() is always the number of the *active* window
endf

fun! s:disableStatusLine()
    if !exists("g:default_stl") | return | endif

    let &statusline = g:default_stl
    unlet g:default_stl
endf

fun! s:toggleStatusLine()
    if exists("g:default_stl")
        call s:disableStatusLine()
    else
        call s:enableStatusLine()
    endif
endf

" Custom status line
command! -nargs=0 EnableStatusLine call <sid>enableStatusLine()
command! -nargs=0 DisableStatusLine call <sid>disableStatusLine()
command! -nargs=0 ToggleStatusLine call <sid>toggleStatusLine()

EnableStatusLine
