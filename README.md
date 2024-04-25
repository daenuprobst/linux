# ARCH

## Install
```bash
pacman -Syy fish neovim btop qtile ttf-0xproto-nerd ttf-firacode-nerd ttf-jetbrains-mono-nerd kitty rofi rofimoji rofi-calc eog eog-plugins picom thunar thunar-archive-plugin flameshot obs-studio obsidian nnn go rustup docker fd thefuck yazi polkit-gnome inkscape helix qpdf ly
```

- Reboot or logout for using qtile.
- Change default shell to fish

```bash
chsh -s /usr/bin/fish
```

```bash
yay -S visual-studio-code-bin micromamba-bin qtile-extras betterlockscreen ocs-url streamdeck-ui sioyek lsix-git onedrive-abraunegg nvidia-container-toolkit
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

# NIXOS
Hardware configs: https://github.com/NixOS/nixos-hardware/tree/master

Enable fractional scaling
```bash
dconf write /org/gnome/mutter/experimental-features "['scale-monitor-framebuffer']"
```
