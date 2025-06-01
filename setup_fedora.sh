#!/bin/bash

echo common

sudo dnf upgrade -y --refresh


echo utilities

sudo dnf install -y \
    ripgrep \
    zsh \
    fzf \
    kitty \
    tmux \
    curl \
    nvim \
    chromium


echo zsh 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="zhann"/' ~/.zshrc


echo kitty

kitten themes alabaster
sudo echo "font_size 14" >> ~/.config/kitty/kitty.conf


echo tmux

sudo rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux/.tmux.conf ~/


echo config

echo "options hid_apple swap_opt_cmd=1 fnmode=2" | sudo tee /etc/modprobe.d/hid_apple.conf > /dev/null

fzf --zsh > ~/.config/fzf_integration.sh
sudo echo "source ~/.config/fzf_integration.sh" >> ~/.zshrc

cp -r texteditornvim/nvim ~/.config/

sudo echo "alias t=tmux" >> ~/.zshrc
sudo echo "alias e=exit" >> ~/.zshrc
sudo echo "alias v=nvim" >> ~/.zshrc
sudo echo "alias gs='git status'" >> ~/.zshrc
sudo echo "alias la='ls -al'" >> ~/.zshrc
