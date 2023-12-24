# LINUX

## Install
```bash
pacman -S fish neovim btop qtile ttf-0xproto-nerd ttf-firacode-nerd ttf-jetbrains-mono-nerd alacritty rofi rofimoji rofi-calc eog eog-plugins picom thunar thunar-archive-plugin flameshot obs-studio obsidian
```

- Reboot or logout for using qtile.
- Change default shell to fish

```bash
chsh -s /usr/bin/fish
```

```bash
yay -S visual-studio-code-bin micromamba-bin qtile-extras betterlockscreen ocs-url
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

## Config

```bash
chmod +x ~/.config/qtile/autostart_once.sh
```
