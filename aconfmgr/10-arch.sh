# Base packages.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust (git)
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project
AddPackage unzip # For extracting and viewing files in .zip archives
{{#if dotter.packages.systemd-networkd}}{{#if systemd-networkd.wlan}}AddPackage iwd # Internet Wireless Daemon{{/if}}{{/if}}
{{#if dotter.packages.systemd-networkd}}{{#if systemd-networkd.wlan}}AddPackage wireless_tools # Tools allowing to manipulate the Wireless Extensions{{/if}}{{/if}}

# Configuration files.
#CopyFile '/etc/fstab'
CopyFile '/etc/hostname'
CopyFile '/etc/locale.conf'
CopyFile '/etc/locale.gen'
CopyFile '/etc/sudoers'
CreateLink '/etc/localtime' '/usr/share/zoneinfo/{{shell.LocalTimeZone}}'
CreateLink '/etc/resolv.conf' '../run/systemd/resolve/stub-resolv.conf'
{{#if dotter.packages.systemd-networkd}}CopyFile '/usr/lib/systemd/system/systemd-networkd-wait-online.service'{{/if}}
{{#if systemd-networkd.ethernet}}CopyFile '/etc/systemd/network/10-ethernet.network'{{/if}}
{{#if systemd-networkd.wlan}}CopyFile '/etc/systemd/network/20-wlan.network'{{/if}}
{{#if systemd-networkd.wlan}}CreateDir '/etc/iwd'{{/if}}
{{#if systemd-networkd.wwan}}CopyFile '/etc/systemd/network/30-wwan.network'{{/if}}

# Ignored paths.
IgnorePath '*/lost+found'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/.updated'
IgnorePath '/etc/X11/xorg.conf.d/00-keyoard.conf'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/ca-certificates/*'
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
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/subgid*'
IgnorePath '/etc/subuid*'
IgnorePath '/etc/systemd/system/**.service'
IgnorePath '/etc/systemd/system/**.socket'
IgnorePath '/etc/systemd/system/**.target'
IgnorePath '/etc/systemd/system/**.timer'
IgnorePath '/etc/systemd/user/**.service'
IgnorePath '/etc/systemd/user/**.socket'
IgnorePath '/etc/systemd/user/**.target'
IgnorePath '/etc/systemd/user/**.timer'
IgnorePath '/etc/vconsole.conf'
IgnorePath '/swapfile'
IgnorePath '/usr/bin/groupmems'
IgnorePath '/usr/lib/**/*.cache'
IgnorePath '/usr/lib/clock-epoch'
IgnorePath '/usr/lib/locale/locale-archive'
IgnorePath '/usr/lib/modules/*'
IgnorePath '/usr/lib/perl5/*'
IgnorePath '/usr/lib/udev/hwdb.bin'
IgnorePath '/usr/lib/vlc/plugins/plugins.dat'
IgnorePath '/usr/lib32/**/*.cache'
IgnorePath '/usr/share/*'
IgnorePath '/var/*'
