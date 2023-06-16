{{#if (eq dotter.os "windows")}}
NVIMDATA=nvim-data
SHELL= # https://github.com/junegunn/vim-plug/issues/1227
{{else}}
NVIMDATA=nvim
{{/if}}

if [ ! -f "$XDG_DATA_HOME/$NVIMDATA/site/autoload/plug.vim" ]; then
    echo "Installing vim-plug..."
    curl -fLo "$XDG_DATA_HOME/$NVIMDATA/site/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

nvim +PlugUpgrade +PlugClean +PlugUpdate! +qall
