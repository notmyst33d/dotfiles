#!/bin/bash

# Folders
rsync -a --delete --info=progress2 ~/.icons/ ./.icons
rsync -a --delete --info=progress2 ~/.config/nvim/ ./.config/nvim
rsync -a --delete --info=progress2 ~/.config/mpv/ ./.config/mpv
rsync -a --delete --info=progress2 ~/.config/alacritty/ ./.config/alacritty

# Files
rsync -a --delete --info=progress2 ~/.profile ./.profile
rsync -a --delete --info=progress2 ~/.bashrc ./.bashrc
rsync -a --delete --info=progress2 ~/.config/fish/config.fish ./.config/fish/config.fish
rsync -a --delete --info=progress2 ~/.config/fish/functions/fish_prompt.fish ./.config/fish/functions/fish_prompt.fish
rsync -a --delete --info=progress2 ~/.config/VSCodium/User/settings.json ./.config/VSCodium/User/settings.json

