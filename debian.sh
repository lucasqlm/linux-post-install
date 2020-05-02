#/bin/bash
 
apt-add-repository non-free
apt-add-repository contrib
apt update
 
apt install -y flatpak gnome-software-plugin-flatpak
 
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 
apt install -y ansible python3-psutil \
    seahorse \
    seahorse-nautilus \
    gnome-tweaks \
    gnome-shell-extension-dashtodock
 
 
#vlc instala varios codecs ja
 
apt install -y libavcodec-extra \
gstreamer1.0-libav \
gstreamer1.0-plugins-base \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamer1.0-tools \
ffmpeg \
libmatroska6v5
 
 
#zsh
#tilix
