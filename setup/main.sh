fw_update -p /mnt/setup/firmware
sh /etc/netstart

cp /mnt/setup/configs/doas.conf /etc/

cp /mnt/setup/configs/hostname.iwx0 /etc/
sh /etc/netstart

echo "set timeout 1" | tee /etc/boot.conf

cp /mnt/setup/configs/.cwmrc /home/rookie/

cp /mnt/setup/configs/.xinitrc /home/rookie/

ln -s "$(which startx)" /usr/bin/x

cp /mnt/setup/configs/.img.jpg /home/rookie/

cp /mnt/setup/configs/.permissions.sh /home/rookie/

rcctl enable apmd
rcctl set apmd flags -A
rcctl start apmd

usermod -G staff rookie

sed -i '/google/d' /etc/ntpd.conf
rcctl restart ntpd

mkdir -p /home/rookie/.config/gtk-3.0
cp /mnt/setup/configs/settings.ini /home/rookie/.config/gtk-3.0/

sh /mnt/setup/configs/install.sh

mkdir /home/rookie/.config/alacritty
cp /mnt/setup/configs/alacritty.yml /home/rookie/.config/alacritty/

rm -rf /home/rookie/.vim/ /home/rookie/.vimrc /home/rookie/.viminfo
cp /mnt/setup/configs/.vimrc /home/rookie/

sh /home/rookie/.permissions.sh

syspatch
