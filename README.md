# Clonar repositorio

en el $HOME:

    git clone https://github.com/CamiaCL/.dotfiles.git

Instalacion de bspwm

paquetes necesarios para bspwm
para el modo grafico se usara "startx"

    sudo pacman -S xorg-server xorg-xinit xf86-video-qxl bspwm sxhkd rofi picom alacritty arandr

# Configuracion inicial

    mkdir ~/.config/bspwm
    mkdir ~/.config/sxhkd

    cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm

    cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd

despues edita .config/sxhkd/sxhkdrc y pones tu terminal en mi caso alacritty
    nvim .config/sxhkd/sxhkdrc

    # terminal emulator
    super + Return
      alacritty
    # program launcher
    super + space
      rofi show -run


# Configura Xinit
    cp /etc/X11/xinit/xinitrc ./xinitrc

luego removemos las ultimas 5 lineas y ponemos
    sxhkd &
    exec bspwm

# Instalar fuentes
	cd fonts
	sudo cp * /usr/share/fonts/  -- Archlinux
	sudo cp * /usr/share/fonts/truetype  -- Pop_Os

regenera la cache
	fc-cache -f -v

# Instalar polybar
	yay polybar
