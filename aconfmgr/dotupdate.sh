aconfmgr apply

if [[ "/etc/locale.gen" -nt "/usr/lib/locale/locale-archive" ]]; then
    echo "Running locale-gen..."
    sudo locale-gen
fi

if ! timedatectl status | grep -q "NTP service: active" ; then
    echo "Enabling network time synchronization..."
    sudo timedatectl set-ntp true
fi

if ! systemctl is-enabled reflector.service > /dev/null; then
    sudo systemctl enable reflector.service
    sudo systemctl start reflector.service
fi

if ! systemctl is-enabled reflector.timer > /dev/null; then
    sudo systemctl enable reflector.timer
    sudo systemctl start reflector.timer
fi
{{#if dotter.packages.games}}

if ! groups | grep -q "gamemode" ; then
    sudo usermod -aG gamemode "{{env_var "USER"}}"
fi
if ! groups | grep -q "games" ; then
    sudo usermod -aG games "{{env_var "USER"}}"
fi
{{/if}}
{{#if dotter.packages.kde}}

if ! systemctl is-enabled sddm.service > /dev/null; then
    sudo systemctl enable sddm.service
fi
{{/if}}
{{#if dotter.packages.linux}}

if [[ "/etc/udev/hwdb.d/10-keyboard.hwdb" -nt "/etc/udev/hwdb.bin" ]]; then
    echo "Updating hardware db..."
    sudo systemd-hwdb update
fi

if ! systemctl is-enabled fstrim.timer > /dev/null; then
    sudo systemctl enable fstrim.timer
fi
{{/if}}
{{#if dotter.packages.pacman}}

if ! systemctl is-enabled paccache.service > /dev/null; then
    sudo systemctl enable paccache.service
    sudo systemctl start paccache.service
fi
{{/if}}
{{#if dotter.packages.sshd}}

if ! systemctl is-enabled sshd.service > /dev/null; then
    sudo systemctl enable sshd.service
    sudo systemctl start sshd.service
fi
{{/if}}
{{#if dotter.packages.systemd-networkd}}

if ! systemctl is-enabled systemd-networkd.service > /dev/null; then
    sudo systemctl enable systemd-networkd.service
    sudo systemctl start systemd-networkd.service
fi

if ! systemctl is-enabled systemd-resolved.service > /dev/null; then
    sudo systemctl enable systemd-resolved.service
    sudo systemctl start systemd-resolved.service
fi

if ! systemctl is-enabled iwd.service > /dev/null; then
    sudo systemctl enable iwd.service
    sudo systemctl start iwd.service
fi
{{/if}}
