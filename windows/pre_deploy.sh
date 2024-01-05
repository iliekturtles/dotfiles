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
