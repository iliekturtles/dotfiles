# Base packages.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust (git)
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project
AddPackage unzip # For extracting and viewing files in .zip archives
{{#if dotter.packages.amd}}AddPackage --foreign amd-zen-ucode-platomav # Microcode update image for AMD Zen CPUs (family 17h and 19h) from platomav's github{{/if}}
{{#if dotter.packages.bash}}AddPackage bash-completion # Programmable completion for the bash shell{{/if}}
{{#if dotter.packages.bash}}AddPackage shellcheck # Shell script analysis tool{{/if}}
{{#if dotter.packages.fish}}AddPackage fish # Smart and user friendly shell intended mostly for interactive use{{/if}}
{{#if dotter.packages.intel}}AddPackage intel-ucode # Microcode update files for Intel CPUs{{/if}}
{{#if dotter.packages.linux}}AddPackage linux # The Linux kernel and modules{{/if}}
{{#if dotter.packages.linux}}AddPackage linux-firmware # Firmware files for Linux{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}AddPackage iptsd # Userspace daemon for Intel Precise Touch & Stylus{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}AddPackage linux-firmware-marvell # Firmware files for Linux - marvell / Firmware for Marvell devices{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}AddPackage linux-surface # The Linux kernel and modules{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}AddPackage linux-surface-headers # Headers and scripts for building modules for the Linux kernel{{/if}}{{/if}}
{{#if dotter.packages.neovim-qt}}AddPackage neovim-qt # GUI for Neovim{{/if}}
{{#if dotter.packages.neovim}}AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs{{/if}}
{{#if dotter.packages.ssh}}AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer{{/if}}

# Configuration files.
#CopyFile '/etc/fstab'
CopyFile '/etc/hostname'
CopyFile '/etc/locale.conf'
CopyFile '/etc/locale.gen'
CopyFile '/etc/sudoers'
CreateLink '/etc/localtime' '/usr/share/zoneinfo/{{shell.LocalTimeZone}}'
{{#if dotter.packages.linux}}CopyFile '/boot/loader/entries/arch-fallback.conf' 755{{/if}}
{{#if dotter.packages.linux}}CopyFile '/boot/loader/entries/arch.conf' 755{{/if}}
{{#if dotter.packages.linux}}CopyFile '/boot/loader/loader.conf' 755{{/if}}
{{#if dotter.packages.linux}}CopyFile '/etc/mkinitcpio.d/linux.preset'{{/if}}
{{#if dotter.packages.linux}}CopyFile '/etc/udev/hwdb.d/10-keyboard.hwdb'{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}CopyFile '/boot/loader/entries/arch-surface-fallback.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}CopyFile '/boot/loader/entries/arch-surface.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}CopyFile '/etc/mkinitcpio.d/linux-surface.preset'{{/if}}{{/if}}
{{#if dotter.packages.sshd}}CopyFile '/etc/ssh/sshd_config'{{/if}}
{{#if dotter.packages.wsl}}CopyFile '/etc/wsl.conf'{{/if}}
{{#if dotter.packages.wsl}}CreateLink '/etc/resolv.conf' '/run/systemd/resolve/resolv.conf'{{/if}}
{{#unless dotter.packages.wsl}}CreateLink '/etc/resolv.conf' '../run/systemd/resolve/stub-resolv.conf'{{/unless}}

# Ignored paths.
IgnorePath '*/lost+found'
IgnorePath '/boot/*-ucode.img'
IgnorePath '/boot/EFI/*'
IgnorePath '/boot/initramfs-linux*.img'
IgnorePath '/boot/loader/entries.srel'
IgnorePath '/boot/loader/random-seed'
IgnorePath '/boot/vmlinuz-linux*'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/.updated'
IgnorePath '/etc/X11/xorg.conf.d/00-keyoard.conf'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/fstab'
IgnorePath '/etc/group*'
IgnorePath '/etc/gshadow*'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/os-release'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/pacman.d/gnupg/*.gpg*'
IgnorePath '/etc/pacman.d/mirrorlist' # Managed by reflector
IgnorePath '/etc/passwd*'
IgnorePath '/etc/shadow*'
IgnorePath '/etc/shells'
IgnorePath '/etc/ssh/ssh_host_*'
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/subgid*'
IgnorePath '/etc/subuid*'
IgnorePath '/etc/udev/hwdb.bin'
IgnorePath '/etc/vconsole.conf'
IgnorePath '/swapfile'
IgnorePath '/usr/bin/groupmems'
IgnorePath '/usr/lib/**/*.cache'
IgnorePath '/usr/lib/clock-epoch'
IgnorePath '/usr/lib/ghc-*'
IgnorePath '/usr/lib/locale/locale-archive'
IgnorePath '/usr/lib/modules/*'
IgnorePath '/usr/lib/perl5/*'
IgnorePath '/usr/lib/udev/hwdb.bin'
IgnorePath '/usr/lib/vlc/plugins/plugins.dat'
IgnorePath '/usr/lib32/**/*.cache'
IgnorePath '/usr/share/*'
IgnorePath '/var/*'
{{#if dotter.packages.wsl}}IgnorePath '/etc/hosts'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/etc/ld.so.conf.d/ld.wsl.conf'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/etc/timezone'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/init'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/pkglist.x86_64.txt'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/usr/bin/groupmems'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/usr/bin/mount.drvfs'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/usr/bin/wslinfo'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/usr/bin/wslpath'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/usr/lib/wsl/*'{{/if}}
{{#if dotter.packages.wsl}}IgnorePath '/version'{{/if}}

# Default systemd targets.
IgnorePath '/etc/systemd/system/ctrl-alt-del.target'
IgnorePath '/etc/systemd/system/dbus-org.freedesktop.home1.service'
IgnorePath '/etc/systemd/system/dbus-org.freedesktop.network1.service'
IgnorePath '/etc/systemd/system/dbus-org.freedesktop.resolve1.service'
IgnorePath '/etc/systemd/system/dbus-org.freedesktop.timesync1.service'
IgnorePath '/etc/systemd/system/getty.target.wants/getty@tty1.service'
IgnorePath '/etc/systemd/system/multi-user.target.wants/machines.target'
IgnorePath '/etc/systemd/system/multi-user.target.wants/remote-cryptsetup.target'
IgnorePath '/etc/systemd/system/multi-user.target.wants/remote-fs.target'
IgnorePath '/etc/systemd/system/multi-user.target.wants/systemd-homed.service'
IgnorePath '/etc/systemd/system/multi-user.target.wants/systemd-networkd.service'
IgnorePath '/etc/systemd/system/sockets.target.wants/systemd-journald-audit.socket'
IgnorePath '/etc/systemd/system/sockets.target.wants/systemd-networkd.socket'
IgnorePath '/etc/systemd/system/sockets.target.wants/systemd-userdbd.socket'
IgnorePath '/etc/systemd/system/sysinit.target.wants/systemd-boot-update.service'
IgnorePath '/etc/systemd/system/sysinit.target.wants/systemd-network-generator.service'
IgnorePath '/etc/systemd/system/sysinit.target.wants/systemd-pstore.service'
IgnorePath '/etc/systemd/system/sysinit.target.wants/systemd-resolved.service'
IgnorePath '/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service'
IgnorePath '/etc/systemd/system/systemd-homed.service.wants/systemd-homed-activate.service'
IgnorePath '/etc/systemd/system/systemd-journald.service.wants/systemd-journald-audit.socket'
IgnorePath '/etc/systemd/user/sockets.target.wants/p11-kit-server.socket'
