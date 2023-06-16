" Set ',' as <leader>.
let mapleader=','

" Map ,, to ,'s original functionality.
nnoremap <leader>, ,

" Use very magic searching.
nnoremap / /\v
vnoremap / /\v

" Map bl to show the buffer list and prompt for selection.
nnoremap <leader>bl :ls<cr>:b

"Map bw to wipe the current buffer and switch to the alternate buffer.
nnoremap <leader>bw :b#\|bw#<cr>

"Map bv to open the alternate buffer in a new split.
nnoremap <leader>bv :b#\|vsp#<cr>

" Map bp to copy the full file path.
nnoremap <expr> <leader>bp ':let @' . g:register . ' = expand("%:p")<CR>'

" Map f to :grep!
nnoremap <leader>f :grep! ''<left>

" Map space to stop search highlighting.
nnoremap <leader><space> :noh<cr>

" Map visual mode F2 to run the selection as an ex command.
vnoremap <f2> :<c-u>exe join(getline("'<","'>"),'<bar>')<cr>

" Map Y yank to the end of the line.
noremap Y y$

" Replace and delete without yanking unless <leader> is used.
if has('xterm_clipboard')
    set clipboard^=unnamed,unnamedplus
    let g:register = '+'
elseif has('clipboard') || exists('g:vscode')
    set clipboard^=unnamed
    let g:register = '*'

    if has('nvim') && exists('$WSLENV')
        let g:clipboard = {
            \ 'name': 'win32yank-wsl',
            \ 'copy': {
            \    '+': 'win32yank.exe -i --crlf',
            \    '*': 'win32yank.exe -i --crlf',
            \  },
            \ 'paste': {
            \    '+': 'win32yank.exe -o --lf',
            \    '*': 'win32yank.exe -o --lf',
            \ },
            \ 'cache_enabled': 0,
        \ }
    endif
else
    let g:register = '"'
endif

function! s:reg()
    return v:register ==# g:register ? '"_' : ''
endfunction

vnoremap <expr> p '"_d"' . v:register . 'P'
vnoremap <leader>p p

nnoremap <expr> c <sid>reg() . 'c'
nnoremap <leader>c c
vnoremap <expr> c <sid>reg() . 'c'
vnoremap <leader>c c
nnoremap <expr> C <sid>reg() . 'C'
nnoremap <leader>C C
vnoremap <expr> C <sid>reg() . 'C'
vnoremap <leader>C C
nnoremap <expr> d <sid>reg() . 'd'
nnoremap <leader>d d
vnoremap <expr> d <sid>reg() . 'd'
vnoremap <leader>d d
nnoremap <expr> D <sid>reg() . 'D'
nnoremap <leader>D D
vnoremap <expr> D <sid>reg() . 'D'
vnoremap <leader>D D
nnoremap <expr> s <sid>reg() . 's'
nnoremap <leader>s s
vnoremap <expr> s <sid>reg() . 's'
vnoremap <leader>s s
nnoremap <expr> S <sid>reg() . 'S'
nnoremap <leader>S S
vnoremap <expr> S <sid>reg() . 'S'
vnoremap <leader>S S
nnoremap <expr> x <sid>reg() . 'x'
nnoremap <leader>x x
vnoremap <expr> x <sid>reg() . 'x'
vnoremap <leader>x x
nnoremap <expr> X <sid>reg() . 'X'
nnoremap <leader>X X
vnoremap <expr> X <sid>reg() . 'X'
vnoremap <leader>X X

" Map C-scroll weel to scroll horizontally.
noremap <C-ScrolLWheelDown> 4zl
noremap <C-ScrolLWheelUp> 4zh
noremap! <C-ScrolLWheelDown> <C-o>4zl
noremap! <C-ScrolLWheelUp> <C-o>4zh

" Map j/k to non-linewise movements and gj/gk to linewise.
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
