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

# Visual Studio individual components
#    CMake tools for Windows
#    Windows 11 SDK
if hash cmake 2>/dev/null; then
    echo "Rust tools setup..."
    #if ! hash cargo-install-update 2>/dev/null || ! hash cargo-binstall 2>/dev/null; then
    if ! hash cargo-install-update 2>/dev/null; then
        cargo install cargo-update #cargo-binstall
    fi

    RUSTFLAGS="-C target-cpu=native" cargo install-update -i \
        bacon \
        {{#if dotter.packages.bat}}bat{{/if}} \
        cargo-expand \
        cargo-sweep \
        cargo-update \
        {{#if dotter.packages.delta}}git-delta{{/if}} \
        hexyl \
        hyperfine \
        {{#if dotter.packages.ripgrep}}ripgrep{{/if}} \
        {{#if dotter.packages.starship}}starship{{/if}} \
        {{#if dotter.packages.xsv}}xsv{{/if}}
        #dotter \
        #cargo-asm \
        #cargon-binstall \
        #cargo-deadlinks \
        #cargo-outdated \
        #dua-cli \
        #fd-find \
        #pastel \
        #tokei \
else
    echo "cargo install-update not installed (cmake missing)."
fi
{{/if}}

# Clean old artifacts
cargo sweep -i -r -v "{{shell.SOURCE_HOME}}"
