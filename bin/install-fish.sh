#!/usr/bin/env bash

sudo apt-get install fish -y
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
curl -sS https://starship.rs/install.sh | sh -s -- -y
echo "starship init fish | source" >> ~/.config/fish/config.fish
sudo chsh -s /usr/bin/fish "${USER}"
