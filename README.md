# personal-arch
Personal arch install script

#To DO

## XFCE Configuration in code
    
    ### shortcuts

        - Dmenu             | mod + d
        - Browser           | mod + b
        - Terminal          | mod + enter
        - File explorer     | mod + f

    Themes
        Mayu-Dark

## LightDM configuration

    themes for the greeter

# Programs to install and steps

## Dmenu

mkdir -p ~/.local/src
git clone git://git.suckless.org/dmenu ~/.local/src/dmenu
edit config.mk
comment out the lines 
    XINERAMALIBS = -lXinerama
    XINERAMAFLAGS = -DXINERAMA
make clean
sudo make install

## dotfiles install script



# Pacman Installer

    - dmenu
    - alacritty
    - stow
    - zsh
    - lightdm
    - lightdm-greeter
    - lightdm-webkit2
    - xfce4?

