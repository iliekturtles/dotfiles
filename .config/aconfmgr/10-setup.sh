AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator
AddPackage amd-ucode # Microcode update image for AMD CPUs
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage bash-completion # Programmable completion for the bash shell
AddPackage bat # Cat clone with syntax highlighting and git integration
AddPackage breeze-gtk # Breeze widget theme for GTK 2 and 3
AddPackage dolphin # KDE File Manager
AddPackage firefox # Standalone web browser from mozilla.org
AddPackage fish # Smart and user friendly shell intended mostly for interactive use
AddPackage gamemode # A daemon/lib combo that allows games to request a set of optimisations be temporarily applied to the host OS
AddPackage git # the fast distributed version control system
AddPackage git-delta # Syntax-highlighting pager for git and diff output
AddPackage gwenview # A fast and easy to use image viewer
AddPackage helix # A post-modern modal text editor
AddPackage htop # Interactive process viewer
AddPackage kcalc # Scientific Calculator
AddPackage kde-gtk-config # GTK2 and GTK3 Configurator for KDE
AddPackage keepassxc # Cross-platform community-driven port of Keepass password manager
AddPackage konsole # KDE terminal emulator
AddPackage kscreen # KDE screen management software
AddPackage lib32-gamemode # A daemon/lib combo that allows games to request a set of optimisations be temporarily applied to the host OS
AddPackage lib32-nvidia-utils # NVIDIA drivers utilities (32-bit)
AddPackage lib32-pipewire # Low-latency audio/video router and processor - 32-bit
AddPackage lib32-systemd # system and service manager (32-bit)
AddPackage libappindicator-gtk3 # Allow applications to extend a menu via Ayatana indicators in Unity, KDE or Systray (GTK+ 3 library)
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-lts # The LTS Linux kernel and modules
AddPackage lostfiles # Find orphaned files not owned by any Arch packages
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages
AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage ntfs-3g # NTFS filesystem driver and utilities
AddPackage nvidia # NVIDIA drivers for linux
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
AddPackage pacutils # Helper tools for libalpm
AddPackage phonon-qt5-vlc # Phonon VLC backend for Qt5
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project
AddPackage plasma-desktop # KDE Plasma Desktop
AddPackage plasma-pa # Plasma applet for audio volume management using PulseAudio
AddPackage plasma-systemmonitor # An interface for monitoring system sensors, process information and other system resources
AddPackage plasma-wayland-session # Plasma Wayland session
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage ripgrep # A search tool that combines the usability of ag with the raw speed of grep
AddPackage rustup # The Rust toolchain installer
AddPackage sddm-kcm # KDE Config Module for SDDM
AddPackage signal-desktop # Signal Private Messenger for Linux
AddPackage spectacle # KDE screenshot capture utility
AddPackage starship # The cross-shell prompt for astronauts
AddPackage steam # Valve's digital software delivery system
AddPackage texinfo # GNU documentation system for on-line information and printed output
AddPackage tig # Text-mode interface for Git.
AddPackage tmux # Terminal multiplexer
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor
AddPackage xdg-desktop-portal # Desktop integration portals for sandboxed apps
AddPackage xdg-desktop-portal-kde # A backend implementation for xdg-desktop-portal using Qt/KF5

AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign awakened-poe-trade-git # Path of Exile trading app for price checking
AddPackage --foreign ckb-next # Corsair Keyboard and Mouse Input Driver, release version
AddPackage --foreign discord_arch_electron # Discord (popular voice + video app) using the system provided electron for increased security and performance
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust
AddPackage --foreign onedrive-abraunegg # Free OneDrive client written in D - abraunegg's fork. Follows the releases on https://github.com/abraunegg/onedrive/releases
AddPackage --foreign paru-bin # Feature packed AUR helper
AddPackage --foreign path-of-building-community-git # An offline build planner for Path of Exile using PoBFrontend, LocalIdentity's fork
AddPackage --foreign sddm-git # The Simple Desktop Display Manager
AddPackage --foreign ttf-ms-win10-auto # Microsoft Windows 10 TrueType fonts
AddPackage --foreign visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)

IgnorePath '*/lost+found'
IgnorePath '/boot/*.img'
IgnorePath '/boot/EFI/Linux'
IgnorePath '/boot/loader/entries.srel'
IgnorePath '/boot/vmlin*'
IgnorePath '/efi/*/*.EFI'
IgnorePath '/efi/*/*.efi'
IgnorePath '/efi/EFI/Microsoft/*'
IgnorePath '/efi/System Volume Information'
IgnorePath '/efi/loader/entries.srel'
IgnorePath '/efi/loader/random-seed'
IgnorePath '/etc/*.cache'
IgnorePath '/etc/*shadow*'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/.updated'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/ca-certificates/extracted/*'
IgnorePath '/etc/credstore'
IgnorePath '/etc/credstore.encrypted'
IgnorePath '/etc/fonts/conf.d/*.conf'
IgnorePath '/etc/group'
IgnorePath '/etc/group-'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/os-release'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/pacman.d/mirrorlist'
IgnorePath '/etc/passwd'
IgnorePath '/etc/passwd-'
IgnorePath '/etc/passwd.OLD'
IgnorePath '/etc/resolv.conf'
IgnorePath '/etc/shells'
IgnorePath '/etc/ssh/ssh_host*'
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/subgid'
IgnorePath '/etc/subgid-'
IgnorePath '/etc/subuid'
IgnorePath '/etc/subuid-'
IgnorePath '/etc/udev/hwdb.bin'
IgnorePath '/etc/xml/catalog'
IgnorePath '/usr/lib/*'
IgnorePath '/usr/share/*'
IgnorePath '/var/*'

CopyFile '/boot/loader/entries/arch-lts.conf'
CopyFile '/boot/loader/entries/arch.conf'
CopyFile '/efi/loader/loader.conf'
CopyFile '/etc/fstab'
CopyFile '/etc/hostname'
CopyFile '/etc/locale.conf'
CopyFile '/etc/locale.gen'
CopyFile '/etc/mkinitcpio.conf'
CopyFile '/etc/mkinitcpio.d/linux-lts.preset'
CopyFile '/etc/mkinitcpio.d/linux.preset'
CopyFile '/etc/pacman.conf'
CopyFile '/etc/pacman.d/hooks/nvidia.hook'
CopyFile '/etc/sddm.conf.d/10-wayland.conf'
CopyFile '/etc/sddm.conf.d/kde_settings.conf'
CopyFile '/etc/ssh/sshd_config'
CopyFile '/etc/sudoers'
CopyFile '/etc/systemd/network/20-ethernet.network'
CopyFile '/etc/udev/hwdb.d/10-keyboard.hwdb'
CopyFile '/etc/xdg/reflector/reflector.conf'

CreateFile '/etc/sddm.conf' > '/dev/null'

CreateLink '/etc/localtime' '/usr/share/zoneinfo/US/Eastern'
CreateLink '/etc/systemd/system/dbus-org.freedesktop.network1.service' '/usr/lib/systemd/system/systemd-networkd.service'
CreateLink '/etc/systemd/system/dbus-org.freedesktop.resolve1.service' '/usr/lib/systemd/system/systemd-resolved.service'
CreateLink '/etc/systemd/system/dbus-org.freedesktop.timesync1.service' '/usr/lib/systemd/system/systemd-timesyncd.service'
CreateLink '/etc/systemd/system/display-manager.service' '/usr/lib/systemd/system/sddm.service'
CreateLink '/etc/systemd/system/getty.target.wants/getty@tty1.service' '/usr/lib/systemd/system/getty@.service'
CreateLink '/etc/systemd/system/multi-user.target.wants/ckb-next-daemon.service' '/usr/lib/systemd/system/ckb-next-daemon.service'
CreateLink '/etc/systemd/system/multi-user.target.wants/remote-fs.target' '/usr/lib/systemd/system/remote-fs.target'
CreateLink '/etc/systemd/system/multi-user.target.wants/sshd.service' '/usr/lib/systemd/system/sshd.service'
CreateLink '/etc/systemd/system/multi-user.target.wants/systemd-networkd.service' '/usr/lib/systemd/system/systemd-networkd.service'
CreateLink '/etc/systemd/system/network-online.target.wants/systemd-networkd-wait-online.service' '/usr/lib/systemd/system/systemd-networkd-wait-online.service'
CreateLink '/etc/systemd/system/sockets.target.wants/systemd-networkd.socket' '/usr/lib/systemd/system/systemd-networkd.socket'
CreateLink '/etc/systemd/system/sysinit.target.wants/systemd-boot-update.service' '/usr/lib/systemd/system/systemd-boot-update.service'
CreateLink '/etc/systemd/system/sysinit.target.wants/systemd-network-generator.service' '/usr/lib/systemd/system/systemd-network-generator.service'
CreateLink '/etc/systemd/system/sysinit.target.wants/systemd-resolved.service' '/usr/lib/systemd/system/systemd-resolved.service'
CreateLink '/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service' '/usr/lib/systemd/system/systemd-timesyncd.service'
CreateLink '/etc/systemd/system/timers.target.wants/fstrim.timer' '/usr/lib/systemd/system/fstrim.timer'
CreateLink '/etc/systemd/system/timers.target.wants/paccache.timer' '/usr/lib/systemd/system/paccache.timer'
CreateLink '/etc/systemd/system/timers.target.wants/reflector.timer' '/usr/lib/systemd/system/reflector.timer'
CreateLink '/etc/systemd/user/default.target.wants/xdg-user-dirs-update.service' '/usr/lib/systemd/user/xdg-user-dirs-update.service'
CreateLink '/etc/systemd/user/pipewire-session-manager.service' '/usr/lib/systemd/user/wireplumber.service'
CreateLink '/etc/systemd/user/pipewire.service.wants/wireplumber.service' '/usr/lib/systemd/user/wireplumber.service'
CreateLink '/etc/systemd/user/sockets.target.wants/p11-kit-server.socket' '/usr/lib/systemd/user/p11-kit-server.socket'
CreateLink '/etc/systemd/user/sockets.target.wants/pipewire-pulse.socket' '/usr/lib/systemd/user/pipewire-pulse.socket'
CreateLink '/etc/systemd/user/sockets.target.wants/pipewire.socket' '/usr/lib/systemd/user/pipewire.socket'

SetFileProperty /boot/loader/entries/arch-lts.conf mode 755
SetFileProperty /boot/loader/entries/arch.conf mode 755
SetFileProperty /efi/loader/loader.conf mode 755
