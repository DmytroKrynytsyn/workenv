#!/bin/bash

echo common

dnf upgrade -y --refresh


echo utilities

dnf install -y \
    ripgrep \
    zsh \
    fzf \
    kitty \
    tmux


echo kitty

kitten themes alabaster

echo "font_size 14" >> ~/.config/kitty/kitty.conf


echo tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux/.tmux.conf ~/


echo config

echo "options hid_apple swap_opt_cmd=1 fnmode=2" > /etc/modprobe.d/hid_apple.conf

fzf --zsh > ~/.config/fzf_integration.sh
echo "source ~/.config/fzf_integration.sh" >> .zshrc

cp -r texteditornvim/nvim ~/.config/

