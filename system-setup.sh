#!/bin/bash

# Omarchy System Setup

# Install GNU stow & create symlinks for dotfiles
sudo pacman -S --noconfirm stow
cd ~
git clone https://github.com/adamZdrojewski/dotfiles.git

rm -rf ~/.config/ghostty
rm -rf ~/.config/hypr
rm -rf ~/.config/nvim
rm -rf ~/.config/tmux
cd ~/dotfiles
stow bashrc
stow ghostty
stow hypr
stow nvim
stow scripts
stow tmux

cd ~

# Source my bashrc file
if ! grep -qF "~/.bashrc.local" ~/.bashrc 2>/dev/null; then
    echo "" >> ~/.bashrc
    echo "# Source stuff from my dotfiles" >> ~/.bashrc
    echo '[ -f ~/.bashrc.local ] && source ~/.bashrc.local' >> ~/.bashrc
    echo "Added ~/.bashrc.local hook to ~/.bashrc"
fi

# Install packages
my_packages=(
	ghostty
	ripgrep
	xclip
	wget
	google-chrome
	feishin
	vlc
	gimp
	dnsutils
)

for package in ${my_packages[@]}; do
	yay -S --noconfirm ${package}
done

# Set default apps
omarchy default terminal ghostty
omarchy default browser chrome

# Install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path

# Set Omarchy theme
omarchy theme set catppuccin

# Set Omarchy clock format
omarchy bar set omarchy.clock format "dddd, MMM d h:mm AP"

# All done!
echo "All done!"
