#!/bin/bash
install_hyprland(){
    sudo pacman -S hyprland thunar gvfs mako kitty wofi swww waybar
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
    current=$(pwd)
    rm -rf $HOME/.config/hypr
    rm -rf $HOME/.config/kitty
    rm -rf $HOME/.config/waybar
    rm -rf $HOME/.config/mako
    rm -rf $HOME/.config/wallpaper
    rm -rf $HOME/.config/xfce4
    rm -rf $HOME/.config/wofi
    ln -sf ${current}/waybar $HOME/.config/
    ln -sf ${current}/hypr $HOME/.config/
    ln -sf ${current}/kitty $HOME/.config/
    ln -sf ${current}/mako $HOME/.config/
    ln -sf ${current}/wallpaper $HOME/.config/
    ln -sf ${current}/*flags.conf $HOME/.config/
    ln -sf ${current}/xfce4 $HOME/.config/
    ln -sf ${current}/wofi $HOME/.config/
}

install(){
    install_hyprland
    install_commonly_used_software
    install_fonts
    link_dotfiles
}
install
