#!/bin/bash
set -eu -o pipefail

case ${1:-start} in
# Connect to the internet.
start)
    echo '================================ start ================================'

    if ! ping -c 1 example.org >/dev/null 2>&1; then
        echo 'Connect to the internet:'
        echo ' * check `networkctl status`.'
        echo ' * Check `ip link`.'
        echo ' * Plug in wired cable.'
        echo ' * Use `iwctl station <wlan> connect "network name"` to connect to wireless.'
        echo ' * Verify connection `ping example.org`.'
        echo
        read -p 'Press enter to continue once connected... '
    fi

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

partition)
    echo '================================ partition ================================'

    echo 'Partition disks'
    #fdisk /dev/nvme0n1
    #   n  #/boot partition
    #   <enter> #number
    #   <enter> #start
    #   +500M #end
    #   t
    #   <enter> #number
    #   136 #Linux Extended Boot
    #   n #/mnt partition
    #   <enter> #number
    #   <enter> #start
    #   <enter> #end
    echo 'Format partitions'
    #mkfs.fat -F 32 /dev/nvme0n1p5
    #mkfs.ext4 /dev/nvme0n1p6
    echo 'Mount partitions'
    #mount /dev/nvme0n1p6 /mnt
    #mount --mkdir /dev/nvme0n1p1 /mnt/efi
    #mount --mkdir /dev/nvme0n1p5 /mnt/boot

    echo
    ;&

omg)
    echo '================================ omg ================================'

    #skip?
    echo 'Validate /etc/pacman.d/mirrorlist'

    echo
    ;&

pacstrap)
    echo '================================ pacstrap ================================'

    #pacstrap -K /mnt base linux linux-firmware
    #REPLACE linux with $kernel_package

    #genfstab -U /mnt >> /mnt/etc/fstab

    echo
    ;&

chroot)
    echo '================================ chroot ================================'

    #ln -sf /usr/share/zoneinfo/$timezone /etc/localtime
    #hwclock --systohc
    ##vim /etc/locale.gen #en_US.UTF-8
    #locale-gen
    #vim /etc/locale.conf
    #vim /etc/hostname
    #timedatectl set-ntp true
    #systemctl enable systemd-networkd
    #systemctl enable systemd-resolved
    #fix ln -rsf resolv.conf
    ####?   cp /etc/systemd/network/20-ethernet.network ?? from outside of chroot
    #systemctl enable fstrim.timer

    #passwd

    #bootctl install --esp-path=/efi --boot-path=/boot
    #systemctl enable systemd-boot-update.service
    #vim /efi/load/loader.conf
    #vim /boot/load/entries/arch.conf

    useradd -m $newusername

    #https://wiki.archlinux.org/title/Systemd-networkd#Speeding_up_TCP_slow-start


    #systemctl enable sshd
    #vim /etc/ssh/sshd_config
    #setup .ssh, keys, auth keys, sockets
    #sed -i 's #Color Color ; s #ParallelDownloads ParallelDownloads' /etc/pacman.conf
    #edit /etc/xdg/reflector/reflector.conf
    #systemctl enable reflector.service
    #systemd-boot efibootmgr?
    #linux-surface

    #?? pacman-key --init && pacman-key --populate archlinux && pacman -Sy archlinux-keyring

    #/etc/pacman.conf Color ParallelDownloads Multilib
    #	multilib, linux-surface?
    #aw Reflector
    #edit /etc/udev/hwdb.d/10-keyboard.hwdb
    #edit /etc/udev/rules.d/99-disable-surface-touch.rules
    #edit /etc/sudoers, allow %wheel

    #journalctl -p 3 -b



    #nvidia
    #. Remove kms from the HOOKS array in /etc/mkinitcpio.conf and regenerate the initramfs. This will prevent the initramfs from containing the nouveau module making sure the kernel cannot load it during early boot. 
    #13.1.3 pacman hook
    #https://wiki.archlinux.org/title/NVIDIA
    #make nvidia-utils not explicitly installed

    #firefox

    #steam

    #https://old.reddit.com/r/archlinux/comments/10720sd/what_do_most_people_forget_to_do_on_a_new_install/

    #aw Dotfiles
    #aw List of Applications
    #aw zsh
    	#set $ZDOTDIR?
	#use zcompile?

    #aw pacman
    #aw pacman package signing
    #.local/share/applications/*.desktop
    #enable start paccache.timer

    #winetricks corefonts

    echo
    ;&

end)
    echo '================================ end ================================'

    echo 'Setup complete.'
    ;;

*)
    echo "Invalid step \`$1\`."
    echo '    Valid steps: start, prompt, partition, pacstrap, chroot.'
    ;;
esac
