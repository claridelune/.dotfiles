unzip() {
  bsdtar xvf $1
}

fiu() {
	fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'
}

vf () {
  $EDITOR $(fiu)
}

wii() {
  cd $HOME/Projects && lsd
}

wuju() {
  cd $HOME/Projects/Eternal-Dreamers && lsd
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

take() {
  mkdir $1 && cd $1
}
