#!/bin/bash


echo utilities

dnf install -y ripgrep zsh fzf



echo kitty

dnf upgrade --refresh
dnf install -y kitty
kitten themes alabaster


echo tmux


