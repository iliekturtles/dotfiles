# Base packages.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign dotter-rs-bin # A dotfile manager and templater written in Rust (git)
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages
AddPackage pkgstats # Submit a list of installed packages to the Arch Linux project
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage unzip # For extracting and viewing files in .zip archives
{{#if dotter.packages.alacritty}}AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator{{/if}}
{{#if dotter.packages.amd}}AddPackage --foreign amd-zen-ucode-platomav # Microcode update image for AMD Zen CPUs (family 17h and 19h) from platomav's github{{/if}}
{{#if dotter.packages.bash}}AddPackage bash-completion # Programmable completion for the bash shell{{/if}}
{{#if dotter.packages.bash}}AddPackage shellcheck # Shell script analysis tool{{/if}}
{{#if dotter.packages.bat}}AddPackage bat # Cat clone with syntax highlighting and git integration{{/if}}
{{#if dotter.packages.chrome}}AddPackage --foreign google-chrome # The popular web browser by Google (Stable Channel){{/if}}
{{#if dotter.packages.ckb-next}}AddPackage ckb-next # Corsair Keyboard and Mouse RGB Driver{{/if}}
{{#if dotter.packages.delta}}AddPackage git-delta # Syntax-highlighting pager for git and diff output{{/if}}
{{#if dotter.packages.dotnet}}AddPackage dotnet-sdk # The .NET Core SDK{{/if}}
{{#if dotter.packages.firefox}}AddPackage firefox # Standalone web browser from mozilla.org{{/if}}
{{#if dotter.packages.fish}}AddPackage fish # Smart and user friendly shell intended mostly for interactive use{{/if}}
{{#if dotter.packages.games}}AddPackage --foreign proton-ge-custom-bin # A fancy custom distribution of Valves Proton with various patches{{/if}}
{{#if dotter.packages.games}}AddPackage --foreign protontricks # A simple wrapper that does winetricks things for Proton enabled games.{{/if}}
{{#if dotter.packages.games}}AddPackage discord # All-in-one voice and text chat for gamers{{/if}}
{{#if dotter.packages.games}}AddPackage gamemode # A daemon/lib combo that allows games to request a set of optimisations be temporarily applied to the host OS{{/if}}
{{#if dotter.packages.games}}AddPackage lib32-gamemode # A daemon/lib combo that allows games to request a set of optimisations be temporarily applied to the host OS{{/if}}
{{#if dotter.packages.games}}AddPackage steam # Valve's digital software delivery system{{/if}}
{{#if dotter.packages.games}}AddPackage ttf-liberation # Font family which aims at metric compatibility with Arial, Times New Roman, and Courier New{{/if}}
{{#if dotter.packages.games}}{{#if games.minecraft}}AddPackage --foreign minecraft-launcher # Official Minecraft Launcher{{/if}}{{/if}}
{{#if dotter.packages.games}}{{#if games.poe.awakened}}AddPackage --foreign awakened-poe-trade-bin # Path of Exile trading app for price checking{{/if}}{{/if}}
{{#if dotter.packages.games}}{{#if games.poe.pob}}AddPackage --foreign path-of-building-community-git # An offline build planner for Path of Exile using PoBFrontend, LocalIdentity's fork{{/if}}{{/if}}
{{#if dotter.packages.games}}{{#if games.steam.screensaver-fix}}AddPackage --foreign steam-screensaver-fix # Fix for steam screensaving bug.{{/if}}{{/if}}
{{#if dotter.packages.games}}{{#if games.wow.curseforge}}AddPackage --foreign curseforge # CurseForge desktop client for Linux{{/if}}{{/if}}
{{#if dotter.packages.git}}AddPackage git # the fast distributed version control system{{/if}}
{{#if dotter.packages.helix}}AddPackage helix # A post-modern modal text editor{{/if}}
{{#if dotter.packages.htop}}AddPackage htop # Interactive process viewer{{/if}}
{{#if dotter.packages.intel}}AddPackage intel-ucode # Microcode update files for Intel CPUs{{/if}}
{{#if dotter.packages.jellyfin}}AddPackage jellyfin-server # Jellyfin server backend{{/if}}
{{#if dotter.packages.jellyfin}}AddPackage jellyfin-web # Web client for Jellyfin{{/if}}
{{#if dotter.packages.kde}}#AddPackage libappindicator-gtk3 # Allow applications to extend a menu via Ayatana indicators in Unity, KDE or Systray (GTK+ 3 library){{/if}}
{{#if dotter.packages.kde}}AddPackage dolphin # KDE File Manager{{/if}}
{{#if dotter.packages.kde}}AddPackage gwenview # A fast and easy to use image viewer{{/if}}
{{#if dotter.packages.kde}}AddPackage kcalc # Scientific Calculator{{/if}}
{{#if dotter.packages.kde}}AddPackage kde-gtk-config # GTK2 and GTK3 Configurator for KDE{{/if}}
{{#if dotter.packages.kde}}AddPackage kscreen # KDE screen management software{{/if}}
{{#if dotter.packages.kde}}AddPackage ktorrent # A powerful BitTorrent client for KDE{{/if}}
{{#if dotter.packages.kde}}AddPackage plasma-desktop # KDE Plasma Desktop{{/if}}
{{#if dotter.packages.kde}}AddPackage plasma-pa # Plasma applet for audio volume management using PulseAudio{{/if}}
{{#if dotter.packages.kde}}AddPackage plasma-systemmonitor # An interface for monitoring system sensors, process information and other system resources{{/if}}
{{#if dotter.packages.kde}}AddPackage sddm # QML based X11 and Wayland display manager{{/if}}
{{#if dotter.packages.kde}}AddPackage sddm-kcm # KDE Config Module for SDDM{{/if}}
{{#if dotter.packages.kde}}AddPackage spectacle # KDE screenshot capture utility{{/if}}
{{#if dotter.packages.kde}}AddPackage xdg-desktop-portal-kde # A backend implementation for xdg-desktop-portal using Qt/KF5{{/if}}
{{#if dotter.packages.kde}}{{#if systemd-networkd.wlan}}AddPackage plasma-nm # Plasma applet written in QML for managing network connections{{/if}}{{/if}}
{{#if dotter.packages.keepassxc}}AddPackage keepassxc # Cross-platform community-driven port of Keepass password manager{{/if}}
{{#if dotter.packages.linux}}AddPackage fwupd # Simple daemon to allow session software to update firmware{{/if}}
{{#if dotter.packages.linux}}AddPackage linux # The Linux kernel and modules{{/if}}
{{#if dotter.packages.linux}}AddPackage linux-firmware # Firmware files for Linux{{/if}}
{{#if dotter.packages.linux}}AddPackage power-profiles-daemon # Makes power profiles handling available over D-Bus{{/if}}
{{#if dotter.packages.linux}}{{#if dotter.packages.nvidia}}AddPackage linux-headers # Headers and scripts for building modules for the Linux kernel{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}AddPackage --foreign rog-control-center # Asus laptop control utilities{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}AddPackage --foreign supergfxctl # A utility for Linux graphics switching on Intel/AMD iGPU + nVidia dGPU laptops{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}AddPackage --foreign plasma6-applets-supergfxctl # KDE Plasma plasmoid for supergfxctl{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.g14}}AddPackage --foreign linux-g14 # The g14 Linux kernel and modules{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.g14}}{{#if dotter.packages.nvidia}}AddPackage --foreign linux-g14-headers # Headers and scripts for building modules for the Linux kernel{{/if}}{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.lts}}AddPackage linux-lts # The LTS Linux kernel and modules{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.lts}}{{#if dotter.packages.nvidia}}AddPackage linux-lts-headers # Headers and scripts for building modules for the LTS Linux kernel{{/if}}{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}AddPackage iptsd # Userspace daemon for Intel Precise Touch & Stylus{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}AddPackage linux-firmware-marvell # Firmware files for Linux - marvell / Firmware for Marvell devices{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}AddPackage linux-surface # The Linux kernel and modules{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}{{#if dotter.packages.nvidia}}AddPackage linux-surface-headers # Headers and scripts for building modules for the Linux kernel{{/if}}{{/if}}{{/if}}
{{#if dotter.packages.marksman}}AddPackage marksman # Write Markdown with code assist and intelligence in the comfort of your favourite editor.{{/if}}
{{#if dotter.packages.meld}}AddPackage meld # Compare files, directories and working copies{{/if}}
{{#if dotter.packages.mullvad-vpn}}AddPackage --foreign mullvad-vpn-bin # The Mullvad VPN client app for desktop{{/if}}
{{#if dotter.packages.neovide}}AddPackage neovide # No Nonsense Neovim Client in Rust{{/if}}
{{#if dotter.packages.neovim-qt}}AddPackage neovim-qt # GUI for Neovim{{/if}}
{{#if dotter.packages.neovim}}AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs{{/if}}
{{#if dotter.packages.nvidia}}AddPackage lib32-nvidia-utils # NVIDIA drivers utilities (32-bit){{/if}}
{{#if dotter.packages.nvidia}}AddPackage nvidia-open-dkms # NVIDIA drivers - module sources{{/if}}
{{#if dotter.packages.onedrive}}AddPackage --foreign onedrive-abraunegg # Free OneDrive client written in D - abraunegg's fork. Follows the releases on https://github.com/abraunegg/onedrive/releases{{/if}}
{{#if dotter.packages.pacman}}AddPackage --foreign pacdiff-pacman-hook-git # Pacman hook to review .pacnew files automatically{{/if}}
{{#if dotter.packages.pacman}}AddPackage pacman-contrib # Contributed scripts and tools for pacman systems{{/if}}
{{#if dotter.packages.paru}}AddPackage --foreign paru-bin # Feature packed AUR helper{{/if}}
{{#if dotter.packages.ripgrep}}AddPackage ripgrep # A search tool that combines the usability of ag with the raw speed of grep{{/if}}
{{#if dotter.packages.rust}}AddPackage bacon # A background rust code checker{{/if}}
{{#if dotter.packages.rust}}AddPackage cargo-expand # Subcommand to show result of macro expansion{{/if}}
{{#if dotter.packages.rust}}AddPackage cargo-outdated # A cargo subcommand for displaying when Rust dependencies are out of date{{/if}}
{{#if dotter.packages.rust}}AddPackage cargo-sweep # A cargo subcommand for cleaning up unused build files generated by Cargo{{/if}}
{{#if dotter.packages.rust}}AddPackage cargo-update # A cargo subcommand for checking and applying updates to installed executables{{/if}}
{{#if dotter.packages.rust}}AddPackage hexyl # Colored command-line hex viewer{{/if}}
{{#if dotter.packages.rust}}AddPackage hyperfine # A command-line benchmarking tool{{/if}}
{{#if dotter.packages.rust}}AddPackage lldb # Next generation, high-performance debugger{{/if}}
{{#if dotter.packages.rust}}AddPackage rustup # The Rust toolchain installer{{/if}}
{{#if dotter.packages.signal}}AddPackage signal-desktop # Signal Private Messenger for Linux{{/if}}
{{#if dotter.packages.ssh}}AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer{{/if}}
{{#if dotter.packages.starship}}AddPackage starship # The cross-shell prompt for astronauts{{/if}}
{{#if dotter.packages.systemd-networkd}}{{#if systemd-networkd.wlan}}AddPackage networkmanager # Network connection manager and user applications{{/if}}{{/if}}
{{#if dotter.packages.tig}}AddPackage tig # Text-mode interface for Git.{{/if}}
{{#if dotter.packages.tmux}}AddPackage tmux # Terminal multiplexer{{/if}}
{{#if dotter.packages.vscode}}AddPackage --foreign visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version){{/if}}
{{#if dotter.packages.xsv}}AddPackage xsv # A CLI for indexing, slicing, analyzing, splitting and joining CSV files{{/if}}

# Configuration files.
#CopyFile '/etc/fstab'
CopyFile '/etc/hostname'
CopyFile '/etc/locale.conf'
CopyFile '/etc/locale.gen'
CopyFile '/etc/sudoers'
CopyFile '/etc/xdg/reflector/reflector.conf'
CreateLink '/etc/localtime' '/usr/share/zoneinfo/{{shell.LocalTimeZone}}'
{{#if dotter.packages.jellyfin}}CopyFile /etc/jellyfin/encoding.xml '' jellyfin jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}CopyFile /etc/jellyfin/logging.default.json '' jellyfin jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}CopyFile /etc/jellyfin/migrations.xml '' jellyfin jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}CopyFile /etc/jellyfin/network.xml '' jellyfin jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}CopyFile /etc/jellyfin/system.xml '' jellyfin jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}SetFileProperty /etc/jellyfin group jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}SetFileProperty /etc/jellyfin mode 750{{/if}}
{{#if dotter.packages.jellyfin}}SetFileProperty /etc/jellyfin owner jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}SetFileProperty /etc/jellyfin/jellyfin.env group jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}SetFileProperty /etc/jellyfin/jellyfin.env owner jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}SetFileProperty /etc/jellyfin/logging.json group jellyfin{{/if}}
{{#if dotter.packages.jellyfin}}SetFileProperty /etc/jellyfin/logging.json owner jellyfin{{/if}}
{{#if dotter.packages.kde}}CopyFile '/etc/sddm.conf.d/kde_settings.conf'{{/if}}
{{#if dotter.packages.kde}}CreateFile '/etc/sddm.conf' > /dev/null{{/if}}
{{#if dotter.packages.linux}}CopyFile '/boot/loader/entries/arch-fallback.conf' 755{{/if}}
{{#if dotter.packages.linux}}CopyFile '/boot/loader/entries/arch.conf' 755{{/if}}
{{#if dotter.packages.linux}}CopyFile '/boot/loader/loader.conf' 755{{/if}}
{{#if dotter.packages.linux}}CopyFile '/etc/mkinitcpio.conf'{{/if}}
{{#if dotter.packages.linux}}CopyFile '/etc/mkinitcpio.d/linux.preset'{{/if}}
{{#if dotter.packages.linux}}CopyFile '/etc/udev/hwdb.d/10-keyboard.hwdb'{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}CopyFile /etc/asusd/asusd.ron{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}CopyFile /etc/asusd/aura_19b6.ron{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}CopyFile /etc/asusd/fan_curves.ron{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}CopyFile /etc/mkinitcpio.conf.d/asus.conf{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}CopyFile /etc/modprobe.d/supergfxd.conf{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.asus}}CopyFile /etc/supergfxd.conf{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.bluetooth}}CopyFile /etc/bluetooth/input.conf{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.bluetooth}}CopyFile /etc/bluetooth/main.conf{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.bluetooth}}CopyFile /etc/bluetooth/network.conf{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.g14}}CopyFile '/boot/loader/entries/arch-g14-fallback.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.g14}}CopyFile '/boot/loader/entries/arch-g14.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.g14}}CopyFile '/etc/mkinitcpio.d/linux-g14.preset'{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.lts}}CopyFile '/boot/loader/entries/arch-lts-fallback.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.lts}}CopyFile '/boot/loader/entries/arch-lts.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.lts}}CopyFile '/etc/mkinitcpio.d/linux-lts.preset'{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}CopyFile '/boot/loader/entries/arch-surface-fallback.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}CopyFile '/boot/loader/entries/arch-surface.conf' 755{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}CopyFile '/etc/mkinitcpio.d/linux-surface.preset'{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.surface}}CopyFile '/etc/udev/rules.d/99-disable-surface-touch.rules'{{/if}}{{/if}}
{{#if dotter.packages.linux}}{{#if linux.tpmoverride}}CreateLink /etc/systemd/system/dev-tpmrm0.device /dev/null{{/if}}{{/if}}
{{#if dotter.packages.mullvad-vpn}}CopyFile '/etc/mullvad-vpn/settings.json'{{/if}}
{{#if dotter.packages.nvidia}}CopyFile '/etc/modprobe.d/nvidia.conf'{{/if}}
{{#if dotter.packages.pacman}}CopyFile '/etc/pacman.conf'{{/if}}
{{#if dotter.packages.pacman}}CopyFile '/etc/makepkg.conf.d/localcompression.conf'{{/if}}
{{#if dotter.packages.sshd}}CopyFile '/etc/ssh/sshd_config.d/90-override.conf'{{/if}}
{{#if dotter.packages.systemd-networkd}}CopyFile '/usr/lib/systemd/system/systemd-networkd-wait-online.service'{{/if}}
{{#if dotter.packages.tmux}}SetFileProperty '/usr/lib/utempter/utempter' group utmp{{/if}}
{{#if dotter.packages.tmux}}SetFileProperty '/usr/lib/utempter/utempter' mode 2755{{/if}}
{{#if dotter.packages.wsl}}CopyFile '/etc/wsl.conf'{{/if}}
{{#if dotter.packages.wsl}}CreateLink '/etc/resolv.conf' '/run/systemd/resolve/resolv.conf'{{/if}}
{{#if systemd-networkd.ethernet}}CopyFile '/etc/systemd/network/10-ethernet.network'{{/if}}
{{#if systemd-networkd.wlan}}CopyFile '/etc/systemd/network/20-wlan.network'{{/if}}
{{#if systemd-networkd.wwan}}CopyFile '/etc/systemd/network/30-wwan.network'{{/if}}
{{#unless dotter.packages.wsl}}CreateLink '/etc/resolv.conf' '../run/systemd/resolve/stub-resolv.conf'{{/unless}}

# Ignored paths.
IgnorePath '*/lost+found'
IgnorePath '/boot/*-ucode.img'
IgnorePath '/boot/EFI/*'
IgnorePath '/boot/initramfs-linux*.img'
IgnorePath '/boot/loader/entries.srel'
IgnorePath '/boot/loader/keys'
IgnorePath '/boot/loader/random-seed'
IgnorePath '/boot/vmlinuz-linux*'
IgnorePath '/data'
IgnorePath '/etc/.#*'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/.updated'
IgnorePath '/etc/X11/xorg.conf.d/00-keyoard.conf'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/fonts/conf.d/*'
IgnorePath '/etc/fstab'
IgnorePath '/etc/group*'
IgnorePath '/etc/gshadow*'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/os-release'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/pacman.d/gnupg/*.gpg*'
IgnorePath '/etc/pacman.d/mirrorlist' # Managed by reflector
IgnorePath '/etc/passim.conf'
IgnorePath '/etc/passwd*'
IgnorePath '/etc/shadow*'
IgnorePath '/etc/shells'
IgnorePath '/etc/ssh/ssh_host_*'
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
IgnorePath '/etc/udev/hwdb.bin'
IgnorePath '/etc/vconsole.conf'
IgnorePath '/etc/xml/catalog'
IgnorePath '/swapfile'
IgnorePath '/usr/bin/groupmems'
IgnorePath '/usr/lib/**/*.cache'
IgnorePath '/usr/lib/clock-epoch'
IgnorePath '/usr/lib/ghc-*'
IgnorePath '/usr/lib/gtk-*'
IgnorePath '/usr/lib/locale/locale-archive'
IgnorePath '/usr/lib/modules/*'
IgnorePath '/usr/lib/perl5/*'
IgnorePath '/usr/lib/udev/hwdb.bin'
IgnorePath '/usr/lib/vlc/plugins/plugins.dat'
IgnorePath '/usr/lib32/**/*.cache'
IgnorePath '/usr/share/*'
IgnorePath '/var/*'
{{#if dotter.packages.mullvad-vpn}}IgnorePath '/etc/mullvad-vpn/account-history.json'{{/if}}
{{#if dotter.packages.mullvad-vpn}}IgnorePath '/etc/mullvad-vpn/device.json'{{/if}}
{{#if dotter.packages.systemd-networkd}}{{#if systemd-networkd.wlan}}IgnorePath '/etc/NetworkManager'{{/if}}{{/if}}
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
