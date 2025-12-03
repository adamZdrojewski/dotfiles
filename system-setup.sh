#!/bin/bash

# System Setup

# Install yay
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm base-devel git
cd ~/Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
rm -rf ~/Downloads/yay

# Install GNU stow & create symlinks for dotfiles
sudo pacman -S --noconfirm stow
cd ~
git clone https://github.com/adamZdrojewski/dotfiles.git

rm .bashrc
cd ~/dotfiles
stow bashrc
stow bin
stow ghostty
stow hypr
stow lazygit
stow nvim
stow rofi
stow starship
stow tmux
stow waybar

cd ~

# Install terminal packages
terminal_packages=(
	ghostty
	neovim
	ripgrep
	xclip
	tmux
	starship
	lazygit
	man-db
	ttf-hack-nerd
	wget
	github-cli
	fzf
)

for package in ${terminal_packages[@]}; do
	yay -S --noconfirm ${package}
done

# Install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh

# Create ~/Projects directory
mkdir ~/Projects

# Install Hyprland
hyprland_packages=(
	hyprland
	waybar
	swaync
	hyprlock
	hypridle
	hyprpaper
	hyprpolkitagent
	wlsunset
	rofi
	hyprshot
	catppuccin-cursors-mocha
	adw-gtk-theme-git
	brightnessctl
)

for package in ${hyprland_packages[@]}; do
	yay -S --noconfirm ${package}
done

# Install other misc packages
misc_packages=(
	google-chrome
	spotify-launcher
	vlc
	gimp
	nwg-look
	neofetch
	usbutils
	nodejs-lts-jod
	npm
)

for package in ${misc_packages[@]}; do
	yay -S --noconfirm ${package}
done

# Download profile pic from GitHub
wget -O ~/.face https://github.com/adamzdrojewski.png

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path

# All done!
echo "All done!"
echo "##########"
echo "You may still need to install Nvidia drivers."
echo "##########"
