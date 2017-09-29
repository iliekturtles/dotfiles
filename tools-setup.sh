#!/bin/bash
# Setup Windows environment variables.
if [ ! -z $MSYSTEM ]; then
    if [ -z $XDG_CONFIG_HOME ]; then
        source ~/.bash_profile
    fi
    setx VIMINIT ":source $(cygpath -w $XDG_CONFIG_HOME/vim/vimrc)"
    setx RUSTUP_HOME $(cygpath -w "$XDG_DATA_HOME/rustup")
    setx CARGO_HOME $(cygpath -w "$XDG_DATA_HOME/cargo")
fi

# Rust tools setup.
if hash rustup 2>/dev/null; then
    rustup self update
    rustup toolchain add stable
    rustup toolchain add nightly
    rustup component add rls --toolchain nightly
    rustup component add rust-analysis --toolchain nightly
    rustup component add rust-src --toolchain nightly
    rustup update
fi

if hash cargo 2>/dev/null; then
    if ! hash cargo-install-update 2>/dev/null; then
        cargo install cargo-update --vers 0.8.2
    fi

    if ! hash cargo-expand 2>/dev/null; then
        cargo install cargo-expand
    fi
    if ! hash cargo-outdated 2>/dev/null; then
        cargo install cargo-outdated
    fi
    if ! hash racer 2>/dev/null; then
        cargo install racer
    fi
    if ! hash rg 2>/dev/null; then
        cargo install ripgrep
    fi
    #if ! hash rustfmt-nightly 2>/dev/null; then
        cargo +nightly install --force rustfmt-nightly
    #fi
    if ! hash tokei 2>/dev/null; then
        cargo install tokei
    fi
    if ! hash xsv 2>/dev/null; then
        cargo install xsv
    fi

    cargo install-update cargo-expand cargo-outdated racer ripgrep tokei xsv
fi

# Vim.
if hash vim 2>/dev/null; then
    vim +PluginClean +PluginInstall! +qall
fi

# VSCode extensions.
if hash code 2>/dev/null; then
    code --install-extension bungcip.better-toml
    code --install-extension DotJoshJohnson.xml
    code --install-extension slevesque.vscode-hexdump
    code --install-extension vscodevim.vim

    if hash cargo 2>/dev/null; then
        code --install-extension kalitaalexey.vscode-rust
    fi
    if hash sqlcmd 2>/dev/null; then
        code --install-extension ms-mssql.mssql
    fi
    if hash dotnet 2>/dev/null; then
        code --install-extension ms-vscode.csharp
    fi
fi
