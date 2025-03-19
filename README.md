# My dotfiles

## Clone Repository

    git clone https://github.com/claridelune/.dotfiles.git

### Instalacion de bspwm

#### Bspwm, xserver dependencies

    sudo pacman -S xorg-server xorg-xinit xf86-video-qxl bspwm sxhkd rofi picom alacritty arandr

'startx'

## Symlinks

    chmod +x script/symlinks.sh 
    ./script/symlinks.sh 

## Configura Xinit
    #cp /etc/X11/xinit/xinitrc ./xinitrc

add the following lines on ./xinitrc:

    sxhkd &
    exec bspwm

# Instalar fuentes
	cd fonts
	sudo cp * /usr/share/fonts/  -- Archlinux
	sudo cp * /usr/share/fonts/truetype  -- Pop_Os

rebuild cache:

	fc-cache -f -v

## Get an AUR Helper(yay)

    pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si

# Install polybar

	yay polybar

## Wifi

    nmcli device wifi list
    nmcli device wifi connect "wifi" password "password"
    nmcli radio wifi on
    nmcli radio wifi off

## Keyboard

    sudo localectl set-keymap  "your-layout"

## Audio
    
    sudo pacman -S alsa-utils
    wpctl status


