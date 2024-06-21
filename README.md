# ARCH

## Install
```bash
pacman -Syy zsh fzf stow zoxide eza bat zellij neovim yazi btop qtile ttf-maple ttf-firacode-nerd ttf-jetbrains-mono-nerd kitty rofi rofimoji rofi-calc lightdm-gtk-greeter eog eog-plugins picom thunar thunar-archive-plugin flameshot obs-studio obsidian go rustup docker fd thefuck yazi polkit-gnome inkscape helix qpdf ly nm-connection-editor brightnessctl github-cli ruff-lsp ripgrep xclip python-pipx
```

- Reboot or logout for using qtile.
- Change default shell to zsh

```bash
chsh -s /usr/bin/zsh
```

```bash
yay -S visual-studio-code-bin micromamba-bin qtile-extras betterlockscreen ocs-url streamdeck-ui sioyek lsix-git onedrive-abraunegg nvidia-container-toolkit catppuccin-gtk-theme-mocha pyright typst-lsp tdf-git oh-my-posh
```

- Finish setting up micromamba

```bash
eval "$(micromamba shell hook --shell fish)"
micromamba config append channels conda-forge
micromamba self-update
micromamba shell init --shell fish --root-prefix=~/micromamba
```

- eval ssh-agent in fish

```bash
eval (ssh-agent -c)
```

- Set lockscreen background image

```bash
betterlockscreen -u [path]
```

- Disable gdm and enable ly

```bash
systemctl disable gdm.service
systemctl enable ly.service
```

## Config

```bash
chmod +x ~/.config/qtile/autostart_once.sh
xdg-mime default sioyek.desktop application/pdf
```
nnn config
```bash
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"
export NNN_PLUG='v:imgview;b:nbak;o:organize;r:renamer;s:suedit;x:xdgdefault'
```

rust
```bash
rustup default stable
rustup toolchain install stable --component rust-src
```

docker
```bash
sudo systemctl enable docker.service	
sudo usermod -aG docker $USER
```

openconnect with 2fa
```bash
alias vpnconnect="sudo echo \"sudo\" && openconnect https://<vpn_server> --useragent=AnyConnect --cookieonly | sudo openconnect https://<vpn_server> --useragent=AnyConnect --cookie-on-stdin"
```

helix
```bash
set -gx EDITOR
sudo ln -s $(which helix) /bin/hx
```

pacman/yay: Change `debug` to `!debug` in `/etc/makepkg.conf`.

## Themes
Icons: https://www.gnome-look.org/p/1477945
Cursors: https://www.gnome-look.org/p/1795042

Then set with `lxappearance`. The GTK theme for catppuccin is already installed from AUR.

## Hyprland
```bash
pacman -Syy hyprland waybar hyprpaper
```
