# Tempestgf Dotfiles  

**[Arch Linux](https://github.com/tempestgf/ArchLinux)** dotfiles.

[Showcase](#showcase) ·
[Information](#information) ·
[Installation](#installation) ·
[Cheat sheet](#cheat-sheet) ·
[Support](#support)

**i3wm** is very simple, old tiling window manager, but it is still powerful and highly configurable. Although it takes time and effort to configure it, but I'm very satisfied with the result.

This is the third version of my dotfiles, as I gain more experience I am able to create more profesional dotfiles.

![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/aperturadesk.png?raw=true)

[![](https://img.shields.io/github/stars/tempestgf/dotfiles?color=800101&style=for-the-badge)](https://github.com/tempestgf/dotfiles/stargazers)
[![](https://img.shields.io/github/forks/tempestgf/dotfiles?color=800101&style=for-the-badge)](https://github.com/tempestgf/dotfiles/network/members)
[![](https://img.shields.io/github/license/tempestgf/dotfiles?color=800101&style=for-the-badge)](https://www.gnu.org/licenses/gpl-3.0.html)
## Information

- **OS:** [Arch Linux](https://archlinux.org)
- **Window Manager:** [i3-gaps](https://github.com/Airblader/i3)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty)
- **NavBar:** [polybar](https://github.com/polybar/polybar)
- **Shell:** [zsh](https://www.zsh.org/)
- **Compositor:** [picom](https://github.com/yshui/picom)
- **Application Launcher:** [rofi](https://github.com/davatorium/rofi)
- **Notification Deamon:** [dunst](https://github.com/dunst-project/dunst)

<details>
<summary><b>
Detailed information and dependencies
</b></summary>

### Info

**Music Player:** [mpd](https://github.com/MusicPlayerDaemon/MPD)   
**Editor:** [neovim](https://github.com/neovim/neovim) / [vim](https://www.vim.org/)    
**Lockscreen:** [i3lock-color](https://github.com/Raymo111/i3lock-color)    
**Display Manager:** [sddm](https://github.com/sddm/sddm)    
**File manager:** [ranger](https://github.com/ranger/ranger) / [nemo](https://github.com/linuxmint/nemo)    
**Monitor of Resources:** [btop](https://github.com/aristocratos/btop)    

### Used themes

**Shell Framework:** [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)    
**Vscode Theme:** [One dark pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)    
**Neovim Theme:** [AstroNvim](https://github.com/kabinspace/AstroVim) & [Cyberpunk](https://github.com/thedenisnikulin/vim-cyberpunk)
**Icons:** [Nerd Fonts](https://www.nerdfonts.com/)    
**GTK Theme:** [Tokyo night](https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme)    
**Display Manager Theme:** [sddm-slice](https://github.com/EricKotato/sddm-slice)    
	
### Fonts
	
**Icons:** [Nerd Fonts](https://www.nerdfonts.com/)   
**Interface Font:** [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)    
**Monospace Font:** [Roboto mono](https://fonts.google.com/specimen/Roboto+Mono#standard-styles)    
**Polybar Font:** [Iosevka nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)

### Dependencies

acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit libcurl-gnutls dbus dbus-python python-pip python3 cmake qt5-graphicaleffects spotify-launcher python3 wget mpd kitty btop dunst feh firefox i3-gaps libnotify neofetch neovim picom polybar ranger rofi scrot slop xclip zsh lsd bat

</details>

## Showcase

|Desktop|rofi & dunst|
|-|-|
|![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/desktop.png?raw=true)|![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/rofi-dunst.png?raw=true)|
|nvim|Bento|
|![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/nvim.png?raw=true)|![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/Bento.png?raw=true)|
|i3lock-color|sddm|
|![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/i3lock-color.png?raw=true)|![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/sddm.png?raw=true)|

## Installation

### Using install script 

Clone the repository.
```sh
git clone -b v3 --depth 1 https://www.github.com/tempestgf/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```

### Manual Installation

1. Clone this repository.
    ```sh
    git clone https://github.com/tempestgf/dotfiles.git
    ```
    
2. Install dependencies.
    ```sh
    sudo pacman --noconfirm -Sy acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit libcurl-gnutls dbus dbus-python python-pip python3 cmake qt5-graphicaleffects spotify-launcher python3 wget mpd kitty btop dunst feh firefox i3-gaps libnotify neofetch neovim picom polybar ranger rofi scrot slop xclip zsh lsd bat
    ```
3. Install AUR dependencies from source.
    ```sh
	Oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	git clone https://aur.archlinux.org/i3lock-color.git
	cd i3lock-color 
	makepkg -si
	cd

	PlugInstall Nvim
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```
4. Create default directories.
    ```sh
	mkdir -p "$HOME"/.config
	mkdir -p  /usr/local/bin
	mkdir -p "$HOME"/Pictures
    ```

5. Get inside the repository and copy configs (scripts, fonts, gtk theme, wallpaper, zsh config, ...) giving them the right permissions.
    ```sh
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
    ```

6. Refresh: set zsh as default shell, update nvim extensions, refresh font cache.
    ```sh
	chsh -s /bin/zsh
	sudo chsh -s /bin/zsh
	fc-cache -fv
	sudo cp -r scripts/* /usr/local/bin
	nvim +PlugInstall
	sudo systemctl enable mpd
	systemctl start mpd
    ```
## Cheat sheet


<details>
<summary>Keybinds</summary>

These are the basic keybinds. Read through the [i3](./config/i3/config) config for more keybinds.

|        Keybind         |                 Function                 |
| ---------------------- | ---------------------------------------- |
| `Win + Enter`          | Launch terminal (alacritty)              |
| `Win + Shift + Q`      | Close window                             |
| `Win + Q`              | Stacking layout                          |
| `Win + W`              | Tabbed layout                            |
| `Win + E`              | Default layout                           |
| `Win + R`              | Resize mode                              |
| `Win + T`              | Restore layout                           |
| `Win + Y`              | Save layout                              |
| `Win + A`              | Rofi open windows menu                   |
| `Win + S`              | Rofi full menu                           |
| `Win + D`              | Rofi menu                                |
| `Win + Z`              | Rofi bookmarks                           |
| `Win + X`              | Rofi powermenu                           |
| `Win + C`              | Rofi screenshot script                   |
| `Win + G`              | Gaps settings                            |
| `Win + V`              | Set vertical orientation                 |
| `Win + H`              | Set horizontal orientation               |
| `Win + I`              | Lock screen                              |
| `Win + O`              | Show polybar                             |
| `Win + P`              | Hide polybar                             |
| `Win + B`              | Move workspace to another monitor        |
| `Win + N`              | Dual monitor mode                        |
| `Win + M`              | Single monitor mode                      |
| `Win + arrows (jkl;)`  | Resizing, moving windows                 |
| `Win + Shift + E`      | Exit i3                                  |
| `Win + Shift + R`      | Restart i3                               |

Note: `Win` refers to the `Super/Mod` key.

</details>

<details>
<summary>Colors</summary>

|        Color           |                 Hex code                 |
| ---------------------- | ---------------------------------------- |
|  background            | #1b1b25                                  |
|  background 2          | #282A36                                  |
|  background 3          | #16161e                                  |
|  border                | #343746                                  |
|  foreground            | #dedede                                  |
|  white                 | #eeffff                                  |
|  black                 | #15121c                                  |
|  red                   | #cb5760                                  |
|  green                 | #999f63                                  |
|  yellow                | #d4a067                                  |
|  blue                  | #6c90a8                                  |
|  purple                | #776690                                  |
|  cyan                  | #528a9b                                  |
|  pink                  | #ffa8c5                                  |
|  orange                | #c87c3e                                  |

</details>

## Support

You can support me simply by dropping a **star** on **[github](https://github.com/tempestgf/dotfiles)**.

## Contributions

Feel free to create issue or pull request.    
If you need any help, you can ask questions here on **[discussions](https://github.com/Tempestgf/dotfiles)** or contact me on **[discord](https://discord.com/users/404362200623349762)** / **[reddit](https://www.reddit.com/user/Tempestgf)**.

Distributed under the **[GPLv3+](https://www.gnu.org/licenses/gpl-3.0.html) License**.    
CopyLeft (C) 2022 Tempestgf.
