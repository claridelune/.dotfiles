unzip() {
  bsdtar xvf $1
}

fiu() {
	fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'
}

wii() {
  cd $HOME/Projects && lsd
}

dw() {
  cd $HOME/Downloads && lsd
}

cf() {
  cd $HOME/.config && lsd
}

dt() {
  cd $HOME/.dotfiles && lsd
}
