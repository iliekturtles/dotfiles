timedatectl set-ntp true
sed -i 's #Color Color ; s #ParallelDownloads ParallelDownloads' /etc/pacman.conf

#pacstrap /mnt base linux linux-firmware
#pacman -Sy vim man-db man-pages texinfo
#pacman pkgstats

systemctl enable systemd-networkd.service
systemctl enable systemd-resolved.service
#systemd-boot efibootmgr?
#linux-surface

#?? pacman-key --init && pacman-key --populate archlinux

#/etc/pacman.conf Color ParallelDownloads
#aw Reflector
#edit /etc/udev/hwdb.d/10-keyboard.hwdb

#aw Dotfiles
#aw List of Applications
