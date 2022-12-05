sudo pacman -Sy archlinux-keyring
sudo pacman -Syyu
sudo pacman -Sy virtualbox-guest-utils
sudo systemctl enable vboxservice.service
sudo systemctl start vboxservice.service
VBoxClient-all

1 \n | sudo pacman -Sy base-devel
sudo pacman --noconfirm -Sy acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit libcurl-gnutls dbus dbus-python python-pip python3 cmake qt5-graphicaleffects spotify-launcher python3 wget mpd kitty btop dunst feh firefox i3-gaps libnotify neofetch neovim picom polybar ranger rofi scrot slop xclip zsh lsd bat

git clone https://github.com/tempestgf/dotfiles.git

mkdir -p "$HOME"/.config
mkdir -p  /usr/local/bin
mkdir -p "$HOME"/Pictures

Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://aur.archlinux.org/i3lock-color.git
cd i3lock-color 
makepkg -si
cd

PlugInstall Nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cd dotfiles
find * -type f -exec chmod +x {} \;
cd .config/
find * -type f -exec chmod +x {} \; 
cd ..   
cp -r .config/* "$HOME"/.config
sudo cp -r fonts/* /usr/share/fonts

cp -r Pictures/* "$HOME"/Pictures
cp .p10k.zsh .zshrc "$HOME"
mv powerlevel10k/ .powerlevel10k/
cp -r .powerlevel10k/ "$HOME"

sudo cp -r sddm.conf /etc
sudo cp -r sddm-slice /usr/share/sddm/themes

chsh -s /bin/zsh
sudo chsh -s /bin/zsh
fc-cache -fv
sudo cp -r scripts/* /usr/local/bin
nvim +PlugInstall
sudo systemctl enable mpd
systemctl start mpd

gsettings set org.gnome.desktop.interface color-scheme prefer-dark