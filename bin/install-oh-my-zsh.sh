#!/usr/bin/env bash

sudo apt-get install -y \
  zsh

rm /home/"${USER}"/.zshrc
rm -rf /home/"${USER}"/.oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/"${USER}"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/spaceship-prompt/spaceship-prompt.git /home/"${USER}"/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1
ln -s /home/"${USER}"/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme /home/"${USER}"/.oh-my-zsh/themes/spaceship.zsh-theme

sudo chsh -s /bin/zsh "${USER}"

sed -i 's/robbyrussell/spaceship/' ~/.zshrc
