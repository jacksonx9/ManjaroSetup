# Manjaro Installation and Config

### Manjaro Installation

<https://manjaro.org/download/>

### Install Packages

```Linux
$ wget https://github.com/jacksonx9/manjaro_post_installation_script.git
$ chmod a+x packages.sh
$ sudo ./packages.sh
$ rm packages.sh
$ chsh -s /bin/zsh
```

Note: will install software required for brother-mfc-7460dn specific

### Install Recommended Plugins

```Linux
vim ~/.zshrc
```

Change the following lines in the file:

```
ZSH_THEME="agnoster"

plugins=(
  git
  sudo
  zsh-autosuggestions
  autojump
  zsh-syntax-highlighting
  extract
  copyfile
  timer
  archlinux
  docker
  npm
)
```

### Others

octave-5.1.0-4 has a bug, downgrade to previous version. Recommend:

```Linux
DOWNGRADE_FROM_ALA=1 downgrade octave 
```

and then select version 4.4.1



Also recommend betterlockscreen: https://github.com/pavanjadhaw/betterlockscreen>

Read their README.md for further details. Different setup procedure for kde, gnome, i3, etc.

