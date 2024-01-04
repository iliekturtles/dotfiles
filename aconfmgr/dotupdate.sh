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
