#!/bin/bash
install_hyprland() {
  sudo pacman -S hyprland hyprlock hypridle hyprpicker hyprpolkitagent thunar gvfs mako kitty wofi swww waybar pavucontrol brightnessctl polkit
  # https://github.com/Gustash/hyprshot.git
  paru -S hyprshot
  # https://font.subf.dev/zh-cn/download/
  paru -S ttf-maplemono-nf-cn-unhinted
}

install_commonly_used_software() {
  # fcitx5
  sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-material-color fcitx5-nord
  # obs
  sudo pacman -S obs-studio xdg-desktop-portal-hyprland

  sudo pacman -S feh w3m slurp grim wl-clipboard cliphist xclip

  sudo pacman -S yazi ffmpeg thumbnailer p7zip jq poppler fd ripgrep fzf zoxide imagemagick mpv
}

install_fonts() {
  sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji &&
    ttf-sourcecodepro-nerd wqy-zenhei &&
    ttf-font-awesome otf-font-awesome awesome-terminal-fonts powerline-fonts ttf-sarasa-gothic
}

link_dotfiles() {
  current=$(pwd)
  rm -rf $HOME/.config/hypr
  rm -rf $HOME/.config/kitty
  rm -rf $HOME/.config/waybar
  rm -rf $HOME/.config/mako
  rm -rf $HOME/.config/wallpaper
  rm -rf $HOME/.config/xfce4
  rm -rf $HOME/.config/wofi
  rm -rf $HOME/.config/yazi
  rm -rf $HOME/.config/zellij
  ln -sf ${current}/waybar $HOME/.config/
  ln -sf ${current}/hypr $HOME/.config/
  ln -sf ${current}/kitty $HOME/.config/
  ln -sf ${current}/mako $HOME/.config/
  ln -sf ${current}/wallpaper $HOME/.config/
  ln -sf ${current}/*flags.conf $HOME/.config/
  ln -sf ${current}/xfce4 $HOME/.config/
  ln -sf ${current}/wofi $HOME/.config/
  ln -sf ${current}/yazi $HOME/.config/
  ln -sf ${current}/zellij $HOME/.config/
}

install() {
  install_hyprland
  install_commonly_used_software
  install_fonts
  link_dotfiles
}
install
