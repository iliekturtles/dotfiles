echo "Rust toolchain setup..."
rustup set profile minimal

echo "Toolchain install..."
rustup toolchain install --profile minimal stable --component clippy,rust-analyzer,rust-docs,rust-src,rustfmt
rustup toolchain install --profile minimal beta
rustup toolchain install --profile minimal nightly --component clippy,rust-analyzer,rust-docs,rust-src,rustfmt

{{#if dotter.packages.bash}}
echo "Bash completions..."
mkdir -p "$XDG_DATA_HOME/bash-completion/completions"
rustup completions bash rustup > "$XDG_DATA_HOME/bash-completion/completions/rustup"
rustup completions bash cargo > "$XDG_DATA_HOME/bash-completion/completions/cargo"

{{/if}}
{{#if dotter.packages.fish}}
echo "Fish completions..."
mkdir -p "$XDG_CONFIG_HOME/fish/completions"
rustup completions fish rustup > "$XDG_CONFIG_HOME/fish/completions/rustup.fish"
#rustup completions fish cargo > "$XDG_CONFIG_HOME/fish/completions/cargo.fish"
{{/if}}
{{#if (eq dotter.os "windows")}}

local PATH="$PATH:/c/Program Files/Microsoft Visual Studio/2022/Professional/Common7/IDE/CommonExtensions/Microsoft/CMake/CMake/bin"

if hash cmake 2>/dev/null; then
    echo "Rust tools setup..."
    #if ! hash cargo-install-update 2>/dev/null || ! hash cargo-binstall 2>/dev/null; then
    if ! hash cargo-install-update 2>/dev/null; then
        cargo install cargo-update #cargo-binstall
    fi

    RUSTFLAGS="-C target-cpu=native" cargo install-update -i \
        {{#if dotter.packages.bat}}bat{{/if}} \
        cargo-sweep \
        cargo-update \
        cargo-watch \
        dotter \
        {{#if dotter.packages.delta}}git-delta{{/if}} \
        hexyl \
        hyperfine \
        {{#if dotter.packages.ripgrep}}ripgrep{{/if}} \
        {{#if dotter.packages.starship}}starship{{/if}} \
        xsv
        #cargo-asm \
        #cargon-binstall \
        #cargo-deadlinks \
        #cargo-expand \
        #cargo-outdated \
        #dua-cli \
        #fd-find \
        #pastel \
        #tokei \

    cargo sweep -i -r -v
else
    echo "cargo install-update not installed (cmake missing)."
fi
{{/if}}
