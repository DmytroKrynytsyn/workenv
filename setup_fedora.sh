#!/bin/bash

echo common

sudo dnf upgrade -y --refresh


echo utilities

sudo dnf install -y \
    ripgrep \
    zsh \
    fzf \
    kitty \
    tmux


echo kitty

kitten themes alabaster

sudo echo "font_size 14" >> ~/.config/kitty/kitty.conf


echo tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux/.tmux.conf ~/


echo config

sudo echo "options hid_apple swap_opt_cmd=1 fnmode=2" > /etc/modprobe.d/hid_apple.conf

fzf --zsh > ~/.config/fzf_integration.sh
sudo echo "source ~/.config/fzf_integration.sh" >> .zshrc

cp -r texteditornvim/nvim ~/.config/

sudo echo "alias t=tmux" >> ~/.zshrc
sudo echo "alias e=exit" >> ~/.zshrc
sudo echo "alias v=nvim" >> ~/.zshrc
sudo echo "alias gs='git status'" >> ~/.zshrc
sudo echo "alias la='ls -al'" >> ~/.zshrc
