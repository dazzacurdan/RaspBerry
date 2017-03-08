#From https://github.com/magdesign/PocketVJ-CP-v3

#General
sudo apt-get -y install lxde-core lxterminal lxappearance xinit lightdm ntfs-3g python-pexpect figlet firmware-ralink hostapd isc-dhcp-server lighttpd  php5-common php5-cgi php5 php5-mysql screen fbi ttf-mscorefonts-installer mediainfo gparted php5-cli iptables xtightvncviewer imagemagick dosfstools exfat-utils exfat-fuse hfsplus hfsprogs hfsutils xdotool expect expect-dev avahi-daemon libavahi-compat-libdnssd-dev feh libjpeg8 libjpeg8-dev libao-dev avahi-utils libavahi-compat-libdnssd-dev libva-dev youtube-dl python-smbus mpg321 mpg123 libreoffice-impress rc-gui python-pip iceweasel python-dbus xpdf x11-xserver-utils libncurses5-dev shellinabox tk okular mountusb 
#Remote
sudo apt-get -y install samba samba-common-bin
#Editor
sudo apt-get -y install vim
#GStreamer
sudo apt-get -y install libgstreamer0.10-0 libgstreamer0.10-dev gstreamer0.10-tools gstreamer0.10-plugins-base libgstreamer-plugins-base0.10-dev gstreamer0.10-plugins-good gstreamer0.10-plugins-ugly gstreamer0.10-plugins-bad libgstreamer-plugins-base1.0-dev gstreamer1.0
#Python Stuffs
sudo pip install pjlink python-osc svgtools svgpathtools svgwrite

#PocketVJ
if [ ! -d "PocketVJ-CP-v3" ]; then
  git clone https://github.com/magdesign/PocketVJ-CP-v3.git
fi

#OMX-Player
if [ ! -d "omxplayer-sync" ]; then
  git clone https://github.com/turingmachine/omxplayer-sync.git
fi

#OFX
if [ ! -d "of_v0.9.8_linuxarmv7l_release" ]; then
  wget http://openframeworks.cc/versions/v0.9.8/of_v0.9.8_linuxarmv7l_release.tar.gz
  tar xvf of_v0.9.8_linuxarmv7l_release.tar.gz
  cd of_v0.9.8_linuxarmv7l_release/scripts/linux/debian/
  sudo ./install_codecs.sh
  sudo ./install_dependencies.sh
  cd -
fi