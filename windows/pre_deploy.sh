function setenv() {
    local var="$1"
    local val="$2"

    if [ "x${!var:-}" != "x$val" ]; then
        echo "    Setting $var..."
        setx "$var" "$val" > /dev/null
    fi
}

echo Setting shell variables...
setenv EDITOR "{{shell.EDITOR}}"
setenv LESS "{{shell.LESS}}"

# Explicitly set XDG variables as default values are set in dotter.sh.
echo Setting XDG variables...
setx XDG_CACHE_HOME "$(cygpath -m "{{shell.XDG_CACHE_HOME}}")"
setx XDG_CONFIG_HOME "$(cygpath -m "{{shell.XDG_CONFIG_HOME}}")"
setx XDG_DATA_HOME "$(cygpath -m "{{shell.XDG_DATA_HOME}}")"
setx XDG_STATE_HOME "$(cygpath -m "{{shell.XDG_STATE_HOME}}")"
{{#if dotter.packages.bash}}

echo Setting bash variables...
setenv HISTCONTROL "{{bash.HISTCONTROL}}"
setenv HISTFILE "{{bash.HISTFILE}}"
setenv HISTFILESIZE "{{bash.HISTFILESIZE}}"
setenv HISTSIZE "{{bash.HISTSIZE}}"
{{/if}}
{{#if dotter.packages.delta}}

echo "Setting delta variables..."
setenv DELTA_PAGER "{{delta.DELTA_PAGER}}"
{{/if}}
{{#if dotter.packages.dotnet}}

echo "Setting dotnet variables..."
setenv DOTNET_CLI_TELEMETRY_OPTOUT "{{dotnet.DOTNET_CLI_TELEMETRY_OPTOUT}}"
{{/if}}
{{#if dotter.packages.rust}}

echo Setting rust variables...
setenv RUSTUP_HOME "$(cygpath -m "{{rust.RUSTUP_HOME}}")"
setenv CARGO_HOME "$(cygpath -m "{{rust.CARGO_HOME}}")"
{{/if}}
