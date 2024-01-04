# Base packages.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust (git)
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project
AddPackage unzip # For extracting and viewing files in .zip archives

# Configuration files.
#CopyFile '/etc/fstab'
CopyFile '/etc/hostname'
CopyFile '/etc/locale.conf'
CopyFile '/etc/locale.gen'
CopyFile '/etc/sudoers'
CreateLink '/etc/localtime' '/usr/share/zoneinfo/{{shell.LocalTimeZone}}'
CreateLink '/etc/resolv.conf' '../run/systemd/resolve/stub-resolv.conf'

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
