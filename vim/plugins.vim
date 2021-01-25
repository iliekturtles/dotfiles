call plug#begin('$XDG_CONFIG_HOME/$VIM_NVIM/plug')

Plug 'iliekturtles/vim-unicon'
" Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim', !has('g:vscode') ? {} : { 'on': [] }
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'iliekturtles/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
" Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale', !has('g:vscode') ? {} : { 'on': [] }
" Plug 'sheerun/vim-polyglot'
" Plug 'OrangeT/vim-csharp'

call plug#end()

" " Map e to toggle NERDTree.
" nnoremap <leader>e :NERDTreeToggle<cr>

" ALE.
if !has('g:vscode')
    " Map ta to toggle ALE.
    nnoremap <leader>ta :ALEToggle<cr>
endif

" " Map tg to toggle GitGutter.
" nnoremap <leader>tg :GitGutterToggle<cr>

" " Map []h to previous and next hunk. []H to first and last hunk.
" nnoremap [H gg:GitGutterNextHunk<cr>
" nnoremap [h :GitGutterPrevHunk<cr>
" nnoremap ]h :GitGutterNextHunk<cr>
" nnoremap ]H G:GitGutterPrevHunk<cr>

" " Map th to toggle hex mode.
" nnoremap <leader>th :Hexmode<cr>

" " Hexmode, http://vim.wikia.com/wiki/Improved_hex_editing
" command -bar Hexmode call ToggleHex()

" function ToggleHex()
"     " hex mode should be considered a read-only operation
"     " save values for modified and read-only for restoration later,
"     " and clear the read-only flag for now
"     let l:modified=&mod
"     let l:oldreadonly=&readonly
"     let &readonly=0
"     let l:oldmodifiable=&modifiable
"     let &modifiable=1

"     if !exists("b:editHex") || !b:editHex
"         " save old options
"         let b:oldft=&ft
"         let b:oldbin=&bin
"         " set new options
"         setlocal binary " make sure it overrides any textwidth, etc.
"         silent :e " this will reload the file without trickeries
"         "           (DOS line endings will be shown entirely )
"         let &ft="xxd"
"         " set status
"         let b:editHex=1
"         " switch to hex editor
"         %!xxd
"     else
"         " restore old options
"         let &ft=b:oldft
"         if !b:oldbin
"             setlocal nobinary
"         endif
"         " set status
"         let b:editHex=0
"         " return to normal editing
"         %!xxd -r
"     endif

"     " restore values for modified and read only state
"     let &mod=l:modified
"     let &readonly=l:oldreadonly
"     let &modifiable=l:oldmodifiable
" endfunction

" " Autocommands
" augroup vimrc
"     au!

"     au BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo | nnoremap <C-Q> :make build<CR>
"     au BufRead,BufNewFile *.sql set commentstring=--\ %s

"     au FileType gitcommit let &l:colorcolumn=cc81 | setlocal spell | setlocal tabstop=4
"     au FileType markdown,text setlocal spell | setlocal textwidth=100
"     au FileType qf wincmd J

"     au QuickFixCmdPost [^l]* nested cwindow
"     au QuickFixCmdPost l* nested lwindow

"     au User AleLintPre let b:ale_info=' ⭮ ' | let b:ale_errors='' | let b:ale_warnings='' | redrawstatus
"     au User AleLintPost call s:AleStatus() | redrawstatus
" augroup end

" " CtrlP
" if executable('rg')
"     let g:ctrlp_user_command = 'rg --files --color never %s'
"     let g:ctrlp_use_caching = 0
" endif

" " Git-gutter signs (en-space + right half block).
" let g:gitgutter_sign_added = ' ▐'
" let g:gitgutter_sign_modified = ' ▐'
" let g:gitgutter_sign_removed = ' ▐'
" let g:gitgutter_sign_removed_first_line = ' ▐'
" let g:gitgutter_sign_modified_removed = ' ▐'

" " ALE
" " let g:ale_linters = {'rust': ['rls', 'cargo']}
" let g:ale_linters = {'rust': ['rls']}
" let g:ale_fixers = {'rust': ['rustfmt']}
" let g:ale_completion_enabled = 1
" " let g:ale_open_list = 1
" " let g:ale_list_window_size = 6
" " let g:ale_keep_list_window_open = 1
" let g:ale_sign_error = '⮿'
" let g:ale_sign_info = '🛈'
" let g:ale_sign_warning = '⯅'
" let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
" let g:ale_rust_rls_executable = 'ra_lsp_server'
" let g:ale_rust_rls_toolchain = ''

" fun! s:AleStatus()
"     let l:counts = ale#statusline#Count(bufnr(''))
"     let l:errors = l:counts.error + l:counts.style_error
"     let l:warnings = l:counts.warning + l:counts.style_warning

"     let b:ale_info = ''

"     if l:errors > 0 || l:warnings > 0
"         let b:ale_errors = printf("  %d %s ", l:errors, g:ale_sign_error)
"         let b:ale_warnings = printf("  %d %s ", l:warnings, g:ale_sign_warning)
"     else
"         let b:ale_warnings = ''
"         let b:ale_errors = ''
"     endif
" endf
