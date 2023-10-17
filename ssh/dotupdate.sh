{{#if dotter.packages.systemd}}
if ! systemctl --user is-enabled ssh-agent.service > /dev/null; then
    echo "Enabling ssh-agent.service..."
    systemctl --user enable ssh-agent.service
    systemctl --user start ssh-agent.service
fi
{{else}}
true # Empty function.
{{/if}}
