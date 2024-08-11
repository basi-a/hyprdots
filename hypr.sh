#!/bin/bash
install_hyprland(){
    sudo pacman -S hyprland thunar mako kitty wofi
}

install_commonly_used_software(){
    # fcitx5
    sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-material-color fcitx5-nord
    # obs
    sudo pacman -S obs-studio xdg-desktop-portal-hyprland

    sudo pacman -S feh w3m slurp grim
}

install_fonts(){
    sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji &&\
    ttf-sourcecodepro-nerd wqy-zenhei && \
    ttf-font-awesome otf-font-awesome awesome-terminal-fonts powerline-fonts ttf-sarasa-gothic
}

link_dotfiles(){
    ln -sf waybar $HOME/.config/waybar
    ln -sf hypr $HOME/.config/hypr
    ln -sf kitty $HOME/.config/kitty
    ln -sf mako $HOME/.config/mako
    ln -sf wallpaper $HOME/.config/wallpaper
}

install(){
    install_hyprland
    install_commonly_used_software
    install_fonts
    link_dotfiles
}
install
