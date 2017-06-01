#!/bin/bash
# Rust tools setup.
if hash cargo 2>/dev/null; then
    if ! hash cargo-install-update 2>/dev/null; then
        cargo install cargo-update
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
    if ! hash rustfmt 2>/dev/null; then
        cargo install rustfmt
    fi
    if ! hash tokei 2>/dev/null; then
        cargo install tokei
    fi
    if ! hash xsv 2>/dev/null; then
        cargo install xsv
    fi

    cargo install-update -a
fi

# Vim.
if hash vim 2>/dev/null; then
    vim +PluginClean +PluginInstall!
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
