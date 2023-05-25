

# Sun May 21 09:12:49 PM EDT 2023 - Unknown packages


AddPackage code # The Open Source build of Visual Studio Code (vscode) editor
AddPackage discord # All-in-one voice and text chat for gamers
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage evemu # Tools and bindings for kernel input event device emulation and data capture and replay
AddPackage evtest # Input device event monitor and query tool
AddPackage grub # GNU GRand Unified Bootloader (2)
AddPackage intel-media-driver # Intel Media Driver for VAAPI — Broadwell+ iGPUs
AddPackage intel-ucode # Microcode update files for Intel CPUs
AddPackage iptsd # Userspace daemon for Intel Precise Touch & Stylus
AddPackage iwd # Internet Wireless Daemon
AddPackage kde-applications-meta # Meta package for KDE Applications
AddPackage ldc # A D Compiler based on the LLVM Compiler Infrastructure including D runtime and libphobos2
AddPackage lib32-giflib # Library for reading and writing gif images
AddPackage lib32-gnutls # A library which provides a secure layer over a reliable transport layer (32-bit)
AddPackage lib32-gst-plugins-base-libs # Multimedia graph framework (32-bit) - base
AddPackage lib32-gtk3 # GObject-based multi-platform GUI toolkit
AddPackage lib32-libpulse # A featureful, general-purpose sound server (32-bit client libraries)
AddPackage lib32-libva # Video Acceleration (VA) API for Linux (32-bit)
AddPackage lib32-libxcomposite # X11 Composite extension library (32-bit)
AddPackage lib32-libxinerama # X11 Xinerama extension library (32-bit)
AddPackage lib32-libxslt # XML stylesheet transformation library (32-bit)
AddPackage lib32-mpg123 # A console based real time MPEG Audio Player for Layer 1, 2 and 3 (32-bit)
AddPackage lib32-ocl-icd # OpenCL ICD Bindings (32-bit)
AddPackage lib32-openal # Cross-platform 3D audio library, software implementation (32-bit)
AddPackage lib32-v4l-utils # Userspace tools and conversion library for Video 4 Linux (32-bit)
AddPackage libva-intel-driver # VA-API implementation for Intel G45 and HD Graphics family
AddPackage libva-utils # Intel VA-API Media Applications and Scripts for libva
AddPackage linux-firmware-marvell # Firmware files for Linux - marvell / Firmware for Marvell devices
AddPackage linux-surface # The Linux kernel and modules
AddPackage linux-surface-headers # Headers and scripts for building modules for the Linux kernel
AddPackage lynx # A text browser for the World Wide Web
AddPackage plasma-meta # Meta package to install KDE Plasma
AddPackage rebuild-detector # Detects which packages need to be rebuilt
AddPackage ssh-audit # SSH configuration auditing
AddPackage usbutils # A collection of USB tools to query connected USB devices
AddPackage wine # A compatibility layer for running Windows programs
AddPackage winetricks # Script to install various redistributable runtime libraries in Wine.
AddPackage wireless_tools # Tools allowing to manipulate the Wireless Extensions
AddPackage zsh # A very advanced and programmable command interpreter (shell) for UNIX
AddPackage zsh-autosuggestions # Fish-like autosuggestions for zsh
AddPackage zsh-completions # Additional completion definitions for Zsh
AddPackage zsh-doc # Info, HTML and PDF format of the ZSH documentation
AddPackage zsh-syntax-highlighting # Fish shell like syntax highlighting for Zsh


# Sun May 21 09:12:52 PM EDT 2023 - Missing packages


RemovePackage alacritty
RemovePackage amd-ucode
RemovePackage bash-completion
RemovePackage breeze-gtk
RemovePackage dolphin
RemovePackage gamemode
RemovePackage git-delta
RemovePackage gwenview
RemovePackage htop
RemovePackage kcalc
RemovePackage kde-gtk-config
RemovePackage konsole
RemovePackage kscreen
RemovePackage lib32-gamemode
RemovePackage lib32-nvidia-utils
RemovePackage lib32-pipewire
RemovePackage lib32-systemd
RemovePackage libappindicator-gtk3
RemovePackage linux-lts
RemovePackage man-pages
RemovePackage neovim
RemovePackage ntfs-3g
RemovePackage nvidia
RemovePackage pacman-contrib
RemovePackage phonon-qt5-vlc
RemovePackage pipewire-pulse
RemovePackage plasma-desktop
RemovePackage plasma-pa
RemovePackage plasma-systemmonitor
RemovePackage sddm-kcm
RemovePackage spectacle
RemovePackage texinfo
RemovePackage tig
RemovePackage xdg-desktop-portal
RemovePackage xdg-desktop-portal-kde


# Sun May 21 09:12:52 PM EDT 2023 - Unknown foreign packages


AddPackage --foreign iwgtk # Lightweight wireless networking GUI (front-end for iwd)
AddPackage --foreign onedrivegui-git # A simple GUI for OneDrive Linux client, with multi-account support.
AddPackage --foreign ttf-meslo-nerd-font-powerlevel10k # Meslo Nerd Font patched for Powerlevel10k
AddPackage --foreign zsh-theme-powerlevel10k-git # Powerlevel10k is a theme for Zsh. It emphasizes speed, flexibility and out-of-the-box experience.


# Sun May 21 09:12:53 PM EDT 2023 - Missing foreign packages


RemovePackage --foreign awakened-poe-trade-git
RemovePackage --foreign ckb-next
RemovePackage --foreign discord_arch_electron
RemovePackage --foreign dotter-rs-bin
RemovePackage --foreign ttf-ms-win10-auto
RemovePackage --foreign visual-studio-code-bin


# Sun May 21 09:12:53 PM EDT 2023 - Extra files


RemoveFile /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket
RemoveFile /etc/systemd/user/pipewire.service.wants/wireplumber.service
RemoveFile /etc/systemd/system/timers.target.wants/fstrim.timer
RemoveFile /etc/systemd/system/sysinit.target.wants/systemd-boot-update.service
RemoveFile /etc/systemd/system/multi-user.target.wants/ckb-next-daemon.service
RemoveFile /etc/sddm.conf.d/10-wayland.conf
RemoveFile /etc/pacman.d/hooks/nvidia.hook
RemoveFile /etc/pacman.d/hooks
RemoveFile /etc/pacman.d
RemoveFile /etc/mkinitcpio.d/linux-lts.preset
RemoveFile /etc/mkinitcpio.conf
RemoveFile /efi/loader/loader.conf
RemoveFile /efi/loader
RemoveFile /efi
RemoveFile /boot/loader/entries/arch.conf
RemoveFile /boot/loader/entries/arch-lts.conf
RemoveFile /boot/loader/entries
RemoveFile /boot/loader


# Sun May 21 09:12:53 PM EDT 2023 - New / changed files


CopyFile /boot/grub/fonts/unicode.pf2
CopyFile /boot/grub/grub.cfg 600
CopyFile /boot/grub/grubenv
CopyFile /boot/grub/locale/ast.mo
CopyFile /boot/grub/locale/ca.mo
CopyFile /boot/grub/locale/da.mo
CopyFile /boot/grub/locale/de.mo
CopyFile /boot/grub/locale/de@hebrew.mo
CopyFile /boot/grub/locale/de_CH.mo
CopyFile /boot/grub/locale/en@arabic.mo
CopyFile /boot/grub/locale/en@cyrillic.mo
CopyFile /boot/grub/locale/en@greek.mo
CopyFile /boot/grub/locale/en@hebrew.mo
CopyFile /boot/grub/locale/en@piglatin.mo
CopyFile /boot/grub/locale/en@quot.mo
CopyFile /boot/grub/locale/eo.mo
CopyFile /boot/grub/locale/es.mo
CopyFile /boot/grub/locale/fi.mo
CopyFile /boot/grub/locale/fr.mo
CopyFile /boot/grub/locale/gl.mo
CopyFile /boot/grub/locale/hr.mo
CopyFile /boot/grub/locale/hu.mo
CopyFile /boot/grub/locale/id.mo
CopyFile /boot/grub/locale/it.mo
CopyFile /boot/grub/locale/ja.mo
CopyFile /boot/grub/locale/ka.mo
CopyFile /boot/grub/locale/ko.mo
CopyFile /boot/grub/locale/lg.mo
CopyFile /boot/grub/locale/lt.mo
CopyFile /boot/grub/locale/nb.mo
CopyFile /boot/grub/locale/nl.mo
CopyFile /boot/grub/locale/pa.mo
CopyFile /boot/grub/locale/pl.mo
CopyFile /boot/grub/locale/pt.mo
CopyFile /boot/grub/locale/pt_BR.mo
CopyFile /boot/grub/locale/ro.mo
CopyFile /boot/grub/locale/ru.mo
CopyFile /boot/grub/locale/sl.mo
CopyFile /boot/grub/locale/sr.mo
CopyFile /boot/grub/locale/sv.mo
CopyFile /boot/grub/locale/tr.mo
CopyFile /boot/grub/locale/uk.mo
CopyFile /boot/grub/locale/vi.mo
CopyFile /boot/grub/locale/zh_CN.mo
CopyFile /boot/grub/locale/zh_TW.mo
CopyFile /boot/grub/themes/starfield/COPYING.CC-BY-SA-3.0
CopyFile /boot/grub/themes/starfield/README
CopyFile /boot/grub/themes/starfield/blob_w.png
CopyFile /boot/grub/themes/starfield/boot_menu_c.png
CopyFile /boot/grub/themes/starfield/boot_menu_e.png
CopyFile /boot/grub/themes/starfield/boot_menu_n.png
CopyFile /boot/grub/themes/starfield/boot_menu_ne.png
CopyFile /boot/grub/themes/starfield/boot_menu_nw.png
CopyFile /boot/grub/themes/starfield/boot_menu_s.png
CopyFile /boot/grub/themes/starfield/boot_menu_se.png
CopyFile /boot/grub/themes/starfield/boot_menu_sw.png
CopyFile /boot/grub/themes/starfield/boot_menu_w.png
CopyFile /boot/grub/themes/starfield/dejavu_10.pf2
CopyFile /boot/grub/themes/starfield/dejavu_12.pf2
CopyFile /boot/grub/themes/starfield/dejavu_14.pf2
CopyFile /boot/grub/themes/starfield/dejavu_16.pf2
CopyFile /boot/grub/themes/starfield/dejavu_bold_14.pf2
CopyFile /boot/grub/themes/starfield/slider_c.png
CopyFile /boot/grub/themes/starfield/slider_n.png
CopyFile /boot/grub/themes/starfield/slider_s.png
CopyFile /boot/grub/themes/starfield/starfield.png
CopyFile /boot/grub/themes/starfield/terminal_box_c.png
CopyFile /boot/grub/themes/starfield/terminal_box_e.png
CopyFile /boot/grub/themes/starfield/terminal_box_n.png
CopyFile /boot/grub/themes/starfield/terminal_box_ne.png
CopyFile /boot/grub/themes/starfield/terminal_box_nw.png
CopyFile /boot/grub/themes/starfield/terminal_box_s.png
CopyFile /boot/grub/themes/starfield/terminal_box_se.png
CopyFile /boot/grub/themes/starfield/terminal_box_sw.png
CopyFile /boot/grub/themes/starfield/terminal_box_w.png
CopyFile /boot/grub/themes/starfield/theme.txt
CopyFile /boot/grub/x86_64-efi/acpi.mod
CopyFile /boot/grub/x86_64-efi/adler32.mod
CopyFile /boot/grub/x86_64-efi/affs.mod
CopyFile /boot/grub/x86_64-efi/afs.mod
CopyFile /boot/grub/x86_64-efi/afsplitter.mod
CopyFile /boot/grub/x86_64-efi/ahci.mod
CopyFile /boot/grub/x86_64-efi/all_video.mod
CopyFile /boot/grub/x86_64-efi/aout.mod
CopyFile /boot/grub/x86_64-efi/appleldr.mod
CopyFile /boot/grub/x86_64-efi/archelp.mod
CopyFile /boot/grub/x86_64-efi/at_keyboard.mod
CopyFile /boot/grub/x86_64-efi/ata.mod
CopyFile /boot/grub/x86_64-efi/backtrace.mod
CopyFile /boot/grub/x86_64-efi/bfs.mod
CopyFile /boot/grub/x86_64-efi/bitmap.mod
CopyFile /boot/grub/x86_64-efi/bitmap_scale.mod
CopyFile /boot/grub/x86_64-efi/blocklist.mod
CopyFile /boot/grub/x86_64-efi/boot.mod
CopyFile /boot/grub/x86_64-efi/boottime.mod
CopyFile /boot/grub/x86_64-efi/bsd.mod
CopyFile /boot/grub/x86_64-efi/bswap_test.mod
CopyFile /boot/grub/x86_64-efi/btrfs.mod
CopyFile /boot/grub/x86_64-efi/bufio.mod
CopyFile /boot/grub/x86_64-efi/cacheinfo.mod
CopyFile /boot/grub/x86_64-efi/cat.mod
CopyFile /boot/grub/x86_64-efi/cbfs.mod
CopyFile /boot/grub/x86_64-efi/cbls.mod
CopyFile /boot/grub/x86_64-efi/cbmemc.mod
CopyFile /boot/grub/x86_64-efi/cbtable.mod
CopyFile /boot/grub/x86_64-efi/cbtime.mod
CopyFile /boot/grub/x86_64-efi/chain.mod
CopyFile /boot/grub/x86_64-efi/cmdline_cat_test.mod
CopyFile /boot/grub/x86_64-efi/cmp.mod
CopyFile /boot/grub/x86_64-efi/cmp_test.mod
CopyFile /boot/grub/x86_64-efi/command.lst
CopyFile /boot/grub/x86_64-efi/configfile.mod
CopyFile /boot/grub/x86_64-efi/core.efi
CopyFile /boot/grub/x86_64-efi/cpio.mod
CopyFile /boot/grub/x86_64-efi/cpio_be.mod
CopyFile /boot/grub/x86_64-efi/cpuid.mod
CopyFile /boot/grub/x86_64-efi/crc64.mod
CopyFile /boot/grub/x86_64-efi/crypto.lst
CopyFile /boot/grub/x86_64-efi/crypto.mod
CopyFile /boot/grub/x86_64-efi/cryptodisk.mod
CopyFile /boot/grub/x86_64-efi/cs5536.mod
CopyFile /boot/grub/x86_64-efi/ctz_test.mod
CopyFile /boot/grub/x86_64-efi/date.mod
CopyFile /boot/grub/x86_64-efi/datehook.mod
CopyFile /boot/grub/x86_64-efi/datetime.mod
CopyFile /boot/grub/x86_64-efi/disk.mod
CopyFile /boot/grub/x86_64-efi/diskfilter.mod
CopyFile /boot/grub/x86_64-efi/div.mod
CopyFile /boot/grub/x86_64-efi/div_test.mod
CopyFile /boot/grub/x86_64-efi/dm_nv.mod
CopyFile /boot/grub/x86_64-efi/echo.mod
CopyFile /boot/grub/x86_64-efi/efi_gop.mod
CopyFile /boot/grub/x86_64-efi/efi_uga.mod
CopyFile /boot/grub/x86_64-efi/efifwsetup.mod
CopyFile /boot/grub/x86_64-efi/efinet.mod
CopyFile /boot/grub/x86_64-efi/efitextmode.mod
CopyFile /boot/grub/x86_64-efi/ehci.mod
CopyFile /boot/grub/x86_64-efi/elf.mod
CopyFile /boot/grub/x86_64-efi/eval.mod
CopyFile /boot/grub/x86_64-efi/exfat.mod
CopyFile /boot/grub/x86_64-efi/exfctest.mod
CopyFile /boot/grub/x86_64-efi/ext2.mod
CopyFile /boot/grub/x86_64-efi/extcmd.mod
CopyFile /boot/grub/x86_64-efi/f2fs.mod
CopyFile /boot/grub/x86_64-efi/fat.mod
CopyFile /boot/grub/x86_64-efi/file.mod
CopyFile /boot/grub/x86_64-efi/fixvideo.mod
CopyFile /boot/grub/x86_64-efi/font.mod
CopyFile /boot/grub/x86_64-efi/fs.lst
CopyFile /boot/grub/x86_64-efi/fshelp.mod
CopyFile /boot/grub/x86_64-efi/functional_test.mod
CopyFile /boot/grub/x86_64-efi/gcry_arcfour.mod
CopyFile /boot/grub/x86_64-efi/gcry_blowfish.mod
CopyFile /boot/grub/x86_64-efi/gcry_camellia.mod
CopyFile /boot/grub/x86_64-efi/gcry_cast5.mod
CopyFile /boot/grub/x86_64-efi/gcry_crc.mod
CopyFile /boot/grub/x86_64-efi/gcry_des.mod
CopyFile /boot/grub/x86_64-efi/gcry_dsa.mod
CopyFile /boot/grub/x86_64-efi/gcry_idea.mod
CopyFile /boot/grub/x86_64-efi/gcry_md4.mod
CopyFile /boot/grub/x86_64-efi/gcry_md5.mod
CopyFile /boot/grub/x86_64-efi/gcry_rfc2268.mod
CopyFile /boot/grub/x86_64-efi/gcry_rijndael.mod
CopyFile /boot/grub/x86_64-efi/gcry_rmd160.mod
CopyFile /boot/grub/x86_64-efi/gcry_rsa.mod
CopyFile /boot/grub/x86_64-efi/gcry_seed.mod
CopyFile /boot/grub/x86_64-efi/gcry_serpent.mod
CopyFile /boot/grub/x86_64-efi/gcry_sha1.mod
CopyFile /boot/grub/x86_64-efi/gcry_sha256.mod
CopyFile /boot/grub/x86_64-efi/gcry_sha512.mod
CopyFile /boot/grub/x86_64-efi/gcry_tiger.mod
CopyFile /boot/grub/x86_64-efi/gcry_twofish.mod
CopyFile /boot/grub/x86_64-efi/gcry_whirlpool.mod
CopyFile /boot/grub/x86_64-efi/geli.mod
CopyFile /boot/grub/x86_64-efi/gettext.mod
CopyFile /boot/grub/x86_64-efi/gfxmenu.mod
CopyFile /boot/grub/x86_64-efi/gfxterm.mod
CopyFile /boot/grub/x86_64-efi/gfxterm_background.mod
CopyFile /boot/grub/x86_64-efi/gfxterm_menu.mod
CopyFile /boot/grub/x86_64-efi/gptsync.mod
CopyFile /boot/grub/x86_64-efi/grub.efi
CopyFile /boot/grub/x86_64-efi/gzio.mod
CopyFile /boot/grub/x86_64-efi/halt.mod
CopyFile /boot/grub/x86_64-efi/hashsum.mod
CopyFile /boot/grub/x86_64-efi/hdparm.mod
CopyFile /boot/grub/x86_64-efi/hello.mod
CopyFile /boot/grub/x86_64-efi/help.mod
CopyFile /boot/grub/x86_64-efi/hexdump.mod
CopyFile /boot/grub/x86_64-efi/hfs.mod
CopyFile /boot/grub/x86_64-efi/hfsplus.mod
CopyFile /boot/grub/x86_64-efi/hfspluscomp.mod
CopyFile /boot/grub/x86_64-efi/http.mod
CopyFile /boot/grub/x86_64-efi/iorw.mod
CopyFile /boot/grub/x86_64-efi/iso9660.mod
CopyFile /boot/grub/x86_64-efi/jfs.mod
CopyFile /boot/grub/x86_64-efi/jpeg.mod
CopyFile /boot/grub/x86_64-efi/json.mod
CopyFile /boot/grub/x86_64-efi/keylayouts.mod
CopyFile /boot/grub/x86_64-efi/keystatus.mod
CopyFile /boot/grub/x86_64-efi/ldm.mod
CopyFile /boot/grub/x86_64-efi/legacy_password_test.mod
CopyFile /boot/grub/x86_64-efi/legacycfg.mod
CopyFile /boot/grub/x86_64-efi/linux.mod
CopyFile /boot/grub/x86_64-efi/linux16.mod
CopyFile /boot/grub/x86_64-efi/loadbios.mod
CopyFile /boot/grub/x86_64-efi/loadenv.mod
CopyFile /boot/grub/x86_64-efi/loopback.mod
CopyFile /boot/grub/x86_64-efi/ls.mod
CopyFile /boot/grub/x86_64-efi/lsacpi.mod
CopyFile /boot/grub/x86_64-efi/lsefi.mod
CopyFile /boot/grub/x86_64-efi/lsefimmap.mod
CopyFile /boot/grub/x86_64-efi/lsefisystab.mod
CopyFile /boot/grub/x86_64-efi/lsmmap.mod
CopyFile /boot/grub/x86_64-efi/lspci.mod
CopyFile /boot/grub/x86_64-efi/lssal.mod
CopyFile /boot/grub/x86_64-efi/luks.mod
CopyFile /boot/grub/x86_64-efi/luks2.mod
CopyFile /boot/grub/x86_64-efi/lvm.mod
CopyFile /boot/grub/x86_64-efi/lzopio.mod
CopyFile /boot/grub/x86_64-efi/macbless.mod
CopyFile /boot/grub/x86_64-efi/macho.mod
CopyFile /boot/grub/x86_64-efi/mdraid09.mod
CopyFile /boot/grub/x86_64-efi/mdraid09_be.mod
CopyFile /boot/grub/x86_64-efi/mdraid1x.mod
CopyFile /boot/grub/x86_64-efi/memdisk.mod
CopyFile /boot/grub/x86_64-efi/memrw.mod
CopyFile /boot/grub/x86_64-efi/minicmd.mod
CopyFile /boot/grub/x86_64-efi/minix.mod
CopyFile /boot/grub/x86_64-efi/minix2.mod
CopyFile /boot/grub/x86_64-efi/minix2_be.mod
CopyFile /boot/grub/x86_64-efi/minix3.mod
CopyFile /boot/grub/x86_64-efi/minix3_be.mod
CopyFile /boot/grub/x86_64-efi/minix_be.mod
CopyFile /boot/grub/x86_64-efi/mmap.mod
CopyFile /boot/grub/x86_64-efi/moddep.lst
CopyFile /boot/grub/x86_64-efi/modinfo.sh
CopyFile /boot/grub/x86_64-efi/morse.mod
CopyFile /boot/grub/x86_64-efi/mpi.mod
CopyFile /boot/grub/x86_64-efi/msdospart.mod
CopyFile /boot/grub/x86_64-efi/mul_test.mod
CopyFile /boot/grub/x86_64-efi/multiboot.mod
CopyFile /boot/grub/x86_64-efi/multiboot2.mod
CopyFile /boot/grub/x86_64-efi/nativedisk.mod
CopyFile /boot/grub/x86_64-efi/net.mod
CopyFile /boot/grub/x86_64-efi/newc.mod
CopyFile /boot/grub/x86_64-efi/nilfs2.mod
CopyFile /boot/grub/x86_64-efi/normal.mod
CopyFile /boot/grub/x86_64-efi/ntfs.mod
CopyFile /boot/grub/x86_64-efi/ntfscomp.mod
CopyFile /boot/grub/x86_64-efi/odc.mod
CopyFile /boot/grub/x86_64-efi/offsetio.mod
CopyFile /boot/grub/x86_64-efi/ohci.mod
CopyFile /boot/grub/x86_64-efi/part_acorn.mod
CopyFile /boot/grub/x86_64-efi/part_amiga.mod
CopyFile /boot/grub/x86_64-efi/part_apple.mod
CopyFile /boot/grub/x86_64-efi/part_bsd.mod
CopyFile /boot/grub/x86_64-efi/part_dfly.mod
CopyFile /boot/grub/x86_64-efi/part_dvh.mod
CopyFile /boot/grub/x86_64-efi/part_gpt.mod
CopyFile /boot/grub/x86_64-efi/part_msdos.mod
CopyFile /boot/grub/x86_64-efi/part_plan.mod
CopyFile /boot/grub/x86_64-efi/part_sun.mod
CopyFile /boot/grub/x86_64-efi/part_sunpc.mod
CopyFile /boot/grub/x86_64-efi/partmap.lst
CopyFile /boot/grub/x86_64-efi/parttool.lst
CopyFile /boot/grub/x86_64-efi/parttool.mod
CopyFile /boot/grub/x86_64-efi/password.mod
CopyFile /boot/grub/x86_64-efi/password_pbkdf2.mod
CopyFile /boot/grub/x86_64-efi/pata.mod
CopyFile /boot/grub/x86_64-efi/pbkdf2.mod
CopyFile /boot/grub/x86_64-efi/pbkdf2_test.mod
CopyFile /boot/grub/x86_64-efi/pcidump.mod
CopyFile /boot/grub/x86_64-efi/pgp.mod
CopyFile /boot/grub/x86_64-efi/play.mod
CopyFile /boot/grub/x86_64-efi/png.mod
CopyFile /boot/grub/x86_64-efi/priority_queue.mod
CopyFile /boot/grub/x86_64-efi/probe.mod
CopyFile /boot/grub/x86_64-efi/procfs.mod
CopyFile /boot/grub/x86_64-efi/progress.mod
CopyFile /boot/grub/x86_64-efi/raid5rec.mod
CopyFile /boot/grub/x86_64-efi/raid6rec.mod
CopyFile /boot/grub/x86_64-efi/random.mod
CopyFile /boot/grub/x86_64-efi/rdmsr.mod
CopyFile /boot/grub/x86_64-efi/read.mod
CopyFile /boot/grub/x86_64-efi/reboot.mod
CopyFile /boot/grub/x86_64-efi/regexp.mod
CopyFile /boot/grub/x86_64-efi/reiserfs.mod
CopyFile /boot/grub/x86_64-efi/relocator.mod
CopyFile /boot/grub/x86_64-efi/romfs.mod
CopyFile /boot/grub/x86_64-efi/scsi.mod
CopyFile /boot/grub/x86_64-efi/search.mod
CopyFile /boot/grub/x86_64-efi/search_fs_file.mod
CopyFile /boot/grub/x86_64-efi/search_fs_uuid.mod
CopyFile /boot/grub/x86_64-efi/search_label.mod
CopyFile /boot/grub/x86_64-efi/serial.mod
CopyFile /boot/grub/x86_64-efi/setjmp.mod
CopyFile /boot/grub/x86_64-efi/setjmp_test.mod
CopyFile /boot/grub/x86_64-efi/setpci.mod
CopyFile /boot/grub/x86_64-efi/sfs.mod
CopyFile /boot/grub/x86_64-efi/shift_test.mod
CopyFile /boot/grub/x86_64-efi/signature_test.mod
CopyFile /boot/grub/x86_64-efi/sleep.mod
CopyFile /boot/grub/x86_64-efi/sleep_test.mod
CopyFile /boot/grub/x86_64-efi/smbios.mod
CopyFile /boot/grub/x86_64-efi/spkmodem.mod
CopyFile /boot/grub/x86_64-efi/squash4.mod
CopyFile /boot/grub/x86_64-efi/strtoull_test.mod
CopyFile /boot/grub/x86_64-efi/syslinuxcfg.mod
CopyFile /boot/grub/x86_64-efi/tar.mod
CopyFile /boot/grub/x86_64-efi/terminal.lst
CopyFile /boot/grub/x86_64-efi/terminal.mod
CopyFile /boot/grub/x86_64-efi/terminfo.mod
CopyFile /boot/grub/x86_64-efi/test.mod
CopyFile /boot/grub/x86_64-efi/test_blockarg.mod
CopyFile /boot/grub/x86_64-efi/testload.mod
CopyFile /boot/grub/x86_64-efi/testspeed.mod
CopyFile /boot/grub/x86_64-efi/tftp.mod
CopyFile /boot/grub/x86_64-efi/tga.mod
CopyFile /boot/grub/x86_64-efi/time.mod
CopyFile /boot/grub/x86_64-efi/tpm.mod
CopyFile /boot/grub/x86_64-efi/tr.mod
CopyFile /boot/grub/x86_64-efi/trig.mod
CopyFile /boot/grub/x86_64-efi/true.mod
CopyFile /boot/grub/x86_64-efi/udf.mod
CopyFile /boot/grub/x86_64-efi/ufs1.mod
CopyFile /boot/grub/x86_64-efi/ufs1_be.mod
CopyFile /boot/grub/x86_64-efi/ufs2.mod
CopyFile /boot/grub/x86_64-efi/uhci.mod
CopyFile /boot/grub/x86_64-efi/usb.mod
CopyFile /boot/grub/x86_64-efi/usb_keyboard.mod
CopyFile /boot/grub/x86_64-efi/usbms.mod
CopyFile /boot/grub/x86_64-efi/usbserial_common.mod
CopyFile /boot/grub/x86_64-efi/usbserial_ftdi.mod
CopyFile /boot/grub/x86_64-efi/usbserial_pl2303.mod
CopyFile /boot/grub/x86_64-efi/usbserial_usbdebug.mod
CopyFile /boot/grub/x86_64-efi/usbtest.mod
CopyFile /boot/grub/x86_64-efi/video.lst
CopyFile /boot/grub/x86_64-efi/video.mod
CopyFile /boot/grub/x86_64-efi/video_bochs.mod
CopyFile /boot/grub/x86_64-efi/video_cirrus.mod
CopyFile /boot/grub/x86_64-efi/video_colors.mod
CopyFile /boot/grub/x86_64-efi/video_fb.mod
CopyFile /boot/grub/x86_64-efi/videoinfo.mod
CopyFile /boot/grub/x86_64-efi/videotest.mod
CopyFile /boot/grub/x86_64-efi/videotest_checksum.mod
CopyFile /boot/grub/x86_64-efi/wrmsr.mod
CopyFile /boot/grub/x86_64-efi/xfs.mod
CopyFile /boot/grub/x86_64-efi/xnu.mod
CopyFile /boot/grub/x86_64-efi/xnu_uuid.mod
CopyFile /boot/grub/x86_64-efi/xnu_uuid_test.mod
CopyFile /boot/grub/x86_64-efi/xzio.mod
CopyFile /boot/grub/x86_64-efi/zfs.mod
CopyFile /boot/grub/x86_64-efi/zfscrypt.mod
CopyFile /boot/grub/x86_64-efi/zfsinfo.mod
CopyFile /boot/grub/x86_64-efi/zstd.mod
CopyFile /etc/grub.d/40_custom
CreateDir /etc/iwd
CopyFile /etc/mkinitcpio.d/linux-surface.preset
CopyFile /etc/systemd/network/20-wlan.network
CopyFile /etc/systemd/network/20-wwan.network
CreateLink /etc/systemd/system/multi-user.target.wants/iwd.service /usr/lib/systemd/system/iwd.service
CreateLink /etc/systemd/system/multi-user.target.wants/reflector.service /usr/lib/systemd/system/reflector.service
CreateLink /etc/systemd/user/pipewire.service.wants/pipewire-media-session.service /usr/lib/systemd/user/pipewire-media-session.service
CreateLink /etc/systemd/user/sockets.target.wants/pulseaudio.socket /usr/lib/systemd/user/pulseaudio.socket
CopyFile /etc/udev/rules.d/99-disable-surface-touch.rules
CopyFile /usr/lib32/gdk-pixbuf-2.0/2.10.0/loaders.cache
CopyFile /usr/lib32/gtk-3.0/3.0.0/immodules.cache
CopyFile /etc/fstab
CopyFile /etc/hostname
CopyFile /etc/locale.gen
CopyFile /etc/mkinitcpio.d/linux.preset
CopyFile /etc/pacman.conf
CopyFile /etc/sddm.conf.d/kde_settings.conf
RemoveFile /etc/systemd/user/pipewire-session-manager.service # Replacing symbolic link with symbolic link
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/pipewire-media-session.service
CopyFile /etc/udev/hwdb.d/10-keyboard.hwdb
CopyFile /etc/xdg/reflector/reflector.conf


# Sun May 21 09:12:56 PM EDT 2023 - Extra file properties


SetFileProperty /boot/loader/entries/arch-lts.conf mode ''
SetFileProperty /boot/loader/entries/arch.conf mode ''
SetFileProperty /efi/loader/loader.conf mode ''
