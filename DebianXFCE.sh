#!/bin/bash
#
# Debian with XFCE (installed from live installer)
# ================================================
#
# Make sure root account is activated during install
#
#
# XFCE Musthaves:
# ===============
# Network File Tools/System Events
#
sudo apt install -y dialog mtools acpi acpid gvfs-backends
#
# Essentials:
# ===========
#
sudo apt install -y nala neovim rsync curl git pandoc zsh ranger gparted openssh-server bpytop neofetch kdeconnect mpv ffmpeg samba gnome-disk-utility gimp hunspell-en-ca plank kate scrot i3lock exa evince
#
# EXA installation (a better version of ls) replace ls command in .zshrc file with line below
# alias ls='exa --color=always --group-directories-first' 
#
sudo apt install -y exa
#
# Printing and bluetooth (if needed)
sudo apt install -y cups bluez blueman
#
# Install fonts
sudo apt install -y fonts-font-awesome fonts-powerline fonts-liberation2 fonts-liberation fonts-terminus fonts-sil-gentium fonts-firacode
#
# Install Greeter GUI
sudo apt install -y lightdm-gtk-greeter-settings
#
# Install Flatpak & enable Flathub
sudo apt install flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#
# Flatpaks:
# ====================
flatpak install Brave Chromium Chrome Bitwarden Flatseal Zoom
#
# Latex:
# ======
# sudo apt install -y texlive-full texlive-lang-all texlive-luatex texlive-xetex texlive-fonts-extra

# Other Sources:
# ==============
# OhMyZsh: sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# ytdlp: https://github.com/yt-dlp/yt-dlp

# Theming:
# ========
# theme: arc-theme
# icons: papirus-icon-theme
# cursor: breeze-cursor-theme
# kde: kde-style-breeze (for kate editor)
#
sudo apt install -y arc-theme papirus-icon-theme breeze-cursor-theme kde-style-breeze
#
# Ham Radio:
# ==========
sudo apt install -y flrig fldigi wsjtx wsjtx-data wsjtx-doc js8call ax25-apps ax25-tools ax25mail-utils libax25 libax25-dev talkd
#
# *Get GridTracker*: curl https://debian.gridtracker.org/gridtracker_deb_install.sh | sudo bash
#
# Post-Install Configs:
# =====================
#
# *Enable the greeter*
# sudo systemctl enable lightdm
#
# *Enable the network stuff*
# sudo systemctl enable avahi-daemon && sudo systemctl enable acpid
#
# *Make Lightdm remember your user*:
# sudo nvim /etc/lightdm/lightdm.conf  Remove hashtag on this line: #greeter-hide-users=false
#
# *Remove Grub timeout*:(Set GRUB_TIMEOUT=0)
# sudo nvim /etc/default/grub && sudo update-grub
#
# *Add user to the dialout group*
# sudo usermod -G dialout jason
# *Add user to sudoers*
# sudo adduser jason sudo
