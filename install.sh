set -eu -o pipefail

case ${1:-start} in
# Connect to the internet.
start)
    echo '================================ start ================================'

    echo 'Connect to the internet:'
    echo ' * Check `ip link`.'
    echo ' * Plug in wired cable.'
    echo ' * Use `iwctl station <wlan> connect "network name"` to connect to wireless.'
    echo ' * Verify connection `ping example.org`.'
    echo
    read -p 'Press enter to continue once connected... '

    echo
    ;&

prompt)
    echo '================================ prompt ================================'

    timezone='US\Eastern'

    echo 'Enter system and user information:'
    echo
    read -p 'Username: ' user
    read -p 'Password: ' pass
    read -p 'Root password: ' rootpass
    read -p 'Hostname: ' host
    read -er -p 'Timezone: ' -i "${timezone}" timezone

    echo "${user}
${pass}
${rootpass}
${host}
${timezone}" > setup.conf

    echo
    ;&

wtf)
    echo '================================ wtf ================================'

    echo 'Partition disks'
    echo 'Format partitions'
    echo 'Mount partitions'

    echo
    ;&

omg)
    echo '================================ omg ================================'

    #timedatectl set-ntp true
    #sed -i 's #Color Color ; s #ParallelDownloads ParallelDownloads' /etc/pacman.conf
    echo 'Validate /etc/pacman.d/mirrorlist'

    echo
    ;&

pacstrap)
    echo '================================ pacstrap ================================'

    #pacstrap /mnt base linux linux-firmware
    #REPLACE linux with $kernel_package

    #genfstab -U /mnt >> /mnt/etc/fstab

    echo
    ;&

chroot)
    echo '================================ chroot ================================'

    #ln -sf /usr/share/zoneinfo/$timezone /etc/localtime
    #hwclock --systohc
    #systemctl enable systemd-networkd.service
    #systemctl enable systemd-resolved.service
    #edit /etc/xdg/reflector/reflector.conf
    #systemctl enable reflector.service
    #systemd-boot efibootmgr?
    #linux-surface

    #grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
    #grub-mkconfig -o /boot/grub/grub.cfg

    #?? pacman-key --init && pacman-key --populate archlinux

    #/etc/pacman.conf Color ParallelDownloads
    #	multilib, linux-surface?
    #aw Reflector
    #edit /etc/udev/hwdb.d/10-keyboard.hwdb
    #edit /etc/udev/rules.d/99-disable-surface-touch.rules
    #edit /etc/sudoers, allow %wheel

    #aw Dotfiles
    #aw List of Applications
    #aw zsh
    	#set $ZDOTDIR?
	#use zcompile?

    #aw pacman
    #aw pacman package signing
    #.local/share/applications/*.desktop

    #onedriver
    #MOUNTPOINT="~/OneDrive"
    #mkdir -p $MOUNTPOINT
    #export SERVICE_NAME=$(systemd-escape --template onedriver@.service --path $MOUNTPOINT)
    #
    ## mount onedrive
    #systemctl --user daemon-reload
    #systemctl --user start $SERVICE_NAME
    #
    ## automatically mount onedrive when you login
    #systemctl --user enable $SERVICE_NAME
    #
    ## check onedriver's logs for the current day
    #journalctl --user -u $SERVICE_NAME --since today

    echo
    ;&

end)
    echo '================================ end ================================'

    echo 'Setup complete.'
    ;;

*)
    echo "Invalid step \`$1\`."
    echo '    Valid steps: start, prompt, , pacstrap, chroot.'
    ;;
esac


#winetricks corefonts
