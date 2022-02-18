#!/usr/bin/env bash
echo -ne "
-------------------------------------------------------------------------
                    Automated Arch Linux Installer
                    SCRIPTHOME: automated-arch-install
-------------------------------------------------------------------------

Installing AUR Softwares
"
# You can solve users running this script as root with this and then doing the same for the next for statement. However I will leave this up to you.
source $HOME/automated-arch-install/setup.conf
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ~/yay
makepkg -si --noconfirm
cd ~
touch "~/.cache/zshhistory"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

yay -S --noconfirm --needed - < ~/automated-arch-install/pkg-files/aur-pkgs.txt

export PATH=$PATH:~/.local/bin

echo -ne "
-------------------------------------------------------------------------
                    SYSTEM READY FOR 3-post-setup.sh
-------------------------------------------------------------------------
"
exit
