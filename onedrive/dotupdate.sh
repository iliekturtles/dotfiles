{{#if dotter.packages.systemd}}
if ! systemctl --user is-enabled onedrive.service > /dev/null; then
    echo "Checking onedrive authorization..."
    if ! onedrive --display-sync-status; then
        onedrive --synchronize --resync
    fi

    echo "Enabling onedrive.service..."
    systemctl --user enable onedrive.service
    systemctl --user start onedrive.service
fi
{{/if}}
