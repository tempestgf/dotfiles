# Tempestgf Dotfiles  

**[Arch Linux](https://github.com/tempestgf/ArchLinux)** dotfiles.

[Showcase](#showcase) ·
[Information](#information) ·
[Installation](#installation) ·
[Cheat sheet](#cheat-sheet) ·
[Support](#support)

**i3wm** és un gestor de finestres de mosaic antic molt senzill, però encara és potent i altament configurable. Tot i que es necessita temps i esforç per configurar-lo.

Aquesta és la tercera versió dels meus dotfiles, a mesura que adquireixo més experiència, puc crear dotfiles més professionals.

![](https://github.com/tempestgf/dotfiles/blob/main/Showcase/aperturadesk.png?raw=true)

[![](https://img.shields.io/github/stars/tempestgf/dotfiles?color=800101&style=for-the-badge)](https://github.com/tempestgf/dotfiles/stargazers)
[![](https://img.shields.io/github/forks/tempestgf/dotfiles?color=800101&style=for-the-badge)](https://github.com/tempestgf/dotfiles/network/members)
[![](https://img.shields.io/github/license/tempestgf/dotfiles?color=800101&style=for-the-badge)](https://www.gnu.org/licenses/gpl-3.0.html)
## Informació

- **SO:** [Arch Linux](https://archlinux.org)
- **Gestor de finestres:** [i3-gaps](https://github.com/Airblader/i3)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty)
- **NavBar:** [polybar](https://github.com/polybar/polybar)
- **Shell:** [zsh](https://www.zsh.org/)
- **Compositor:** [picom](https://github.com/yshui/picom)
- **Llançador d'aplicacions:** [rofi](https://github.com/davatorium/rofi)
- **Daemon de notificacions:** [dunst](https://github.com/dunst-project/dunst)

<detalls>
<resum><b>
Informació detallada i dependències
</b></summary>

### Info

**Reproductor de música:** [mpd](https://github.com/MusicPlayerDaemon/MPD)
**Editor de text:** [neovim](https://github.com/neovim/neovim) / [vim](https://www.vim.org/)
**Pantalla de bloqueig:** [i3lock-color](https://github.com/Raymo111/i3lock-color)
**Gestor de pantalla:** [sddm](https://github.com/sddm/sddm)
**Gestor de fitxers:** [ranger](https://github.com/ranger/ranger) / [nemo](https://github.com/linuxmint/nemo)
**Monitor de recursos:** [btop](https://github.com/aristocratos/btop)

### Temes utilitzats

**Shell Framework:** [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)    
**Vscode:** [One dark pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)    
**Neovim:** [AstroNvim](https://github.com/kabinspace/AstroVim) & [Cyberpunk](https://github.com/thedenisnikulin/vim-cyberpunk)
**Icones:** [Nerd Fonts](https://www.nerdfonts.com/)    
**GTK Theme:** [Tokyo night](https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme)    
**Display Manager Theme:** [sddm-slice](https://github.com/EricKotato/sddm-slice)    
	
### Fonts
	
**Icones:** [Fonts Nerd](https://www.nerdfonts.com/)
**Tipus de lletra de la interfície:** [Open sans](https://fonts.google.com/specimen/Open+Sans#standard-styles)
**Tipus de lletra monoespai:** [Roboto mono](https://fonts.google.com/specimen/Roboto+Mono#standard-styles)
**Font de la polybar:** [Titra de lletra Iosevka nerd](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)

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

## Instal·lació

### Utilitzant l'script d'instal·lació

Clonar el repositori.
```sh
git clone -b v3 --depth 1 https://www.github.com/tempestgf/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```

### Instal·lació manual

1. Clona aquest dipòsit.
    ```sh
    git clone https://github.com/tempestgf/dotfiles.git
    ```
    
2. Instal·lar dependències.
    ```sh
    sudo pacman --noconfirm -Sy acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit libcurl-gnutls dbus dbus-python python-pip python3 cmake qt5-graphicaleffects spotify-launcher python3 wget mpd kitty btop dunst feh firefox i3-gaps libnotify neofetch neovim picom polybar ranger rofi scrot slop xclip zsh lsd bat
    ```
3. Instal·leu les dependències AUR des de la font.
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
4. Creeu directoris per defecte.
    ```sh
	mkdir -p "$HOME"/.config
	mkdir -p  /usr/local/bin
	mkdir -p "$HOME"/Pictures
    ```

5. Entreu al repositori i copieu les configuracions (scripts, tipus de lletra, tema gtk, fons de pantalla, configuració zsh, ...) donant-los els permisos adequats.
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

6. Actualitzar: establiu zsh com a shell predeterminat, actualitzeu les extensions nvim, actualitzeu la memòria cau de fonts.
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
<summary>Keybinds / Dreceres de teclat</summary>

Aquestes són les combinacions de tecles bàsiques. Llegiu la configuració [i3](./config/i3/config) per obtenir més combinacions de tecles.

|        Drecera         |                 Funció                   |
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

Nota: "Win" es refereix a la tecla "Super/Mod".

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

## Suport

Podeu donar-me suport simplement deixant caure una **estrella** a **[github](https://github.com/tempestgf/dotfiles)**.

## Contributions

No dubteu a crear un problema o una sol·licitud d'extracció.
Si necessiteu ajuda, podeu fer preguntes aquí a **[discussions](https://github.com/Tempestgf/dotfiles)** o contactar amb mi a **[discord](https://discord.com/ usuaris/404362200623349762)** / **[reddit](https://www.reddit.com/user/Tempestgf)**.

Distribuït sota la llicència **[GPLv3+](https://www.gnu.org/licenses/gpl-3.0.html)**.
CopyLeft (C) 2022 Tempestgf.
