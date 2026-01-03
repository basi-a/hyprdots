#!/bin/bash
sudo pacman -S niri fuzzel mako waybar xdg-desktop-portal-gtk xdg-desktop-portal-gnome alacritty swaybg swayidle swaylock xwayland-satellite
rm -rf ~/.config/niri
ln -sf $(pwd)/niri ~/.config/niri
