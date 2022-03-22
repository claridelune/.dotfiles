unzip(){
  bsdtar xvf $1
}

fiu() {
	fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'
}
