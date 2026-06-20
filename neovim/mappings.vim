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

" Map normal/insert mode F2 to toggle paste.
nnoremap <silent> <f2> :set paste!<cr>
inoremap <silent> <f2> <esc>:set paste!<cr>i

" Map visual mode F2 to run the selection as an ex command.
vnoremap <f2> :<c-u>exe join(getline("'<","'>"),'<bar>')<cr>

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
{{#if dotter.packages.tmux}}

" Map C-<direction> to move between splits and tmux panes.
function! MoveWindowPane(direction)
    let wnr = winnr()
    silent! execute 'wincmd ' . a:direction
    " If the winnr is still the same after we moved, it is the last pane
    if wnr == winnr() && !has('g:vscode')
        call system('tmux select-pane -' . tr(a:direction, 'phjkl', 'lLDUR'))
    end
endfunction

nnoremap <silent> <c-h> :call MoveWindowPane('h')<cr>
nnoremap <silent> <c-j> :call MoveWindowPane('j')<cr>
nnoremap <silent> <c-k> :call MoveWindowPane('k')<cr>
nnoremap <silent> <c-l> :call MoveWindowPane('l')<cr>
{{/if}}
