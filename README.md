# LINUX

## Install
```bash
pacman -S fish neovim btop qtile ttf-0xproto-nerd ttf-firacode-nerd ttf-jetbrains-mono-nerd alacritty
```

- Reboot or logout for using qtile.
- Change default shell to fish

```bash
chsh -s /usr/bin/fish
```

```bash
yay -S visual-studio-code-bin micromamba-bin
```

- Finish setting up micromamba

```bash
eval "$(micromamba shell hook --shell fish)"
micromamba config append channels conda-forge
micromamba self-update
micromamba shell init --shell fish --root-prefix=~/micromamba
```

## Config
