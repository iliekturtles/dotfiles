# Clear the console after logout of the root shell.
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

# vim: set ft=sh: