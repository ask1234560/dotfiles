# dotfiles
configs, scripts, themes and wallpapers included 

## Requirements
* pipenv
* zsh
* change shell to zsh
  * chsh -s $(which zsh)

## Installation 
```
* cd ~
* git clone https://github.com/ask1234560/dotfiles 
* cd dotfiles
* pipenv --three
* git submodule init 
* git submodule update --recursive 
* pipenv install -r dotdrop/requirements.txt
* pipenv shell
* substitute hostname 
   * awk '{gsub(/manjaro/,"hostname")} {print $0}' config.yaml | tee config.yaml
* ./dotdrop.sh install
* to remove backup files
   * find ~ -regextype grep -regex '.*/*dotdropbak' -exec rm {} \;
```
