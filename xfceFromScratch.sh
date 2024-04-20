#!/bin/bash
# 
# Modified from drewgrif github
# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI and switching to testing

# Xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# Build-essential
sudo apt install -y build-essential 

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

#XFCE packages
sudo apt install -y xfce4 xfce4-goodies

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Network File Tools/System Events
sudo apt install -y dialog mtools acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Sound packages (pulseaudio installed prior)
sudo apt install -y alsa-utils volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# EXA installation (a better version of ls)
# replace ls command in .zshrc file with line below
# alias ls='exa --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
sudo apt install -y cups
sudo apt install -y bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups

# Command line text editor -- nano preinstalled  -- I like micro but vim is great
# sudo apt install -y micro
sudo apt install -y vim

# Install fonts
sudo apt install fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus ttf-mscorefonts-installer fonts-sil-gentium


# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)

sudo apt install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# Install Apps of Choice
sudo apt install -y emacs rsync curl git pandoc zsh ranger gparted openssh-server htop neofetch kdeconnect musescore3 handbrake vlc mpv ffmpeg samba gnome-disk-utility gimp nala hunspell-en-ca audacity filezilla kate texlive-full texlive-lang-all texlive-luatex texlive-xetex texlive-fonts-extra

# Install Flatpak & enable Flathub
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Flatpaks to Install
# ===================
# BraveBrowser
# Chromium
# Bitwarden
# K3B
# BalenaEtcher (AppImage)
# shotcut
# inkscape
# video trimmer
# keepassxc
# libreoffice (if on debian non testing)

# Other Sources
# =============
# Spacemacs
# OhMyZsh
# ytdlp
# makemkv
# Imaginary Teleprompter
# Image-Magick

# System Cleanup
sudo apt autoremove

print "Script is complete. Please reboot!"
