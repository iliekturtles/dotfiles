" XDG setup.
if empty($XDG_CONFIG_HOME)
    let $XDG_CONFIG_HOME=expand('$HOME/.config')
endif
if empty($XDG_DATA_HOME)
    let $XDG_DATA_HOME=expand('$HOME/.local/share')
endif

" VIM / NeoVIM setup
if !has("nvim")
    let $VIM_NVIM="vim"

    set directory=$XDG_DATA_HOME/vim/swap//
    set runtimepath=$XDG_CONFIG_HOME/vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$XDG_CONFIG_HOME/vim/after
    set undodir=$XDG_DATA_HOME/vim/undo
else
    let $VIM_NVIM="nvim"
endif

set backupdir=$XDG_DATA_HOME/$VIM_NVIM/backup
set viminfo='1000,s100,h,n$XDG_CONFIG_HOME/$VIM_NVIM/viminfo

runtime plugins.vim
runtime settings.vim
runtime mappings.vim
runtime statusline.vim
runtime ui.vim