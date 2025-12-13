# ARCH
## CachyOS (Niri)
```bash
pacman -Syy kitty zen-browser-bin rust go helix starship lsd zoxide yazi stow python-black uv pyright ruff fx xan bottom glow marksman chezmoi yay zotero ttf-firacode-nerd cmake xan grim slurp satty papirus-icon-theme network-manager-applet nwg-look
yay -Syy dprint-bin ttf-work-sans-variable

pacman -R firefox alacritty

# hugo version manager
go install github.com/jmooring/hvm@latest

# dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Install dank material shell
curl -fsSL https://install.danklinux.com | sh
```

## Install
```bash
pacman -Syy zsh fzf stow zoxide eza bat tmux neovim yazi unarchiver serpl btop qtile ttf-maple ttf-firacode-nerd ttf-jetbrains-mono-nerd kitty rofi rofimoji rofi-calc lightdm-gtk-greeter eog eog-plugins picom thunar thunar-archive-plugin flameshot obs-studio obsidian go rustup docker fd thefuck yazi polkit-gnome inkscape helix qpdf ly nm-connection-editor brightnessctl github-cli ruff-lsp ripgrep xclip python-pipx discord diskonaut lazygit jupyterlab jupyterlab-pygments jupyterlab-widgets jupyterlab-lsp
```

- Reboot or logout for using qtile.
- Change default shell to zsh

```bash
chsh -s /usr/bin/zsh
```

```bash
yay -S visual-studio-code-bin micromamba-bin qtile-extras betterlockscreen ocs-url streamdeck-ui sioyek onedrive-abraunegg nvidia-container-toolkit catppuccin-gtk-theme-mocha pyright typst-lsp tdf-git oh-my-posh sampler
```

- Finish setting up micromamba

```bash
eval "$(micromamba shell hook --shell fish)"
micromamba config append channels conda-forge
micromamba self-update
micromamba shell init --shell fish --root-prefix=~/micromamba

sudo ln -s /usr/bin/micromamba /usr/bin/conda
```

- Setup tmux plugins

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
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
rustup component add rust-analyzer
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

## CachyOS (Cosmic)
```bash
pacman -Syy kitty rust go helix starship lsd zoxide yazi stow python-black uv pyright ruff fx xan bottom glow marksman chezmoi yay zotero ttf-firacode-nerd cmake xan grim slurp satty
yay -Syy dprint-bin ttf-work-sans-variable

# hugo version manager
go install github.com/jmooring/hvm@latest
```
Theme SDDM
https://github.com/uiriansan/SilentSDDM?tab=readme-ov-file#AUR-packages-for-arch

## CachyOS (Hyprland)
```bash
pacman -Syy neovim hyprlock hyprpaper hyprcurso wlogout kitty yazi stow yay zoxide ttf-iosevkaterm-nerd ttf-hack-nerd ttf-0xproto-nerd fd ripgrep firefox lazygit pyright nodejs npm rustup visidata openconnect blueman tabiew fx adw-gtk-theme python-pywal bottom starship satty libqalculate vicinae-bin luarocks glow marksman
yay -S oh-my-posh waypaper micromamba-bin proton-pass-bin network-manager-applet nwg-displays greetd-tuigreet ags-hyprpanel-git ptpython getnf dprint-bin
```

```bash
micromamba config append channels conda-forge
micromamba self-update
sudo ln -s /usr/bin/micromamba /usr/bin/conda

# If dotfiles are not downloaded
micromamba shell init --shell fish --root-prefix=~/micromamba
```

Create monitor config:
```bash
nwg-displays
```

Setup greetd (might need to delete current config in case of error):
```bash
systemctl enable greetd.service
```

Setup vicinae (launcher):
```bash
systemctl enable --now --user vicinae.service
```

Configure greetd (`/etc/greetd/config.toml`):
```toml
[terminal]
# The VT to run the greeter on. Can be "next", "current" or a number
# designating the VT.
vt = 1

# The default session, also known as the greeter.
[default_session]

# `agreety` is the bundled agetty/login-lookalike. You can replace `/bin/sh`
# with whatever you want started, such as `sway`.
command = "tuigreet -r --cmd Hyprland"

# The user to run the command as. The privileges this user must have depends
# on the greeter. A graphical greeter may for example require the user to be
# in the `video` group.
user = "greeter"
```
Install nerdfont
```bash
getnf -i Monaspace
```

Firefox Color theme:
[Theme](https://color.firefox.com/?theme=XQAAAAInAgAAAAAAAABBqYhm849SCicxcT-BCXcGHf3p79EhVPS3-jvQ_Kw8eaBdnrbHMhZhXx7H67W4vuBchVhCxt9o2Jz_Cg2qOXgtjKp_lZB8Qf_ZiZ_xjMq2lCE8jHzVkJiX8rEzneMPJxJMDB-IWd8Rju4sf1XvDQCNFjwwaUd9bHiwwQezEDKG8pIUyOXl_bgp3SeH0CBw5M2rXieWWXrT-pJA9km_KM7Z8daFdj2KXQwn-i1SGKDaXhBJB8pf1OiRbFXpyXGjSEhKvOLwqgYXwFT86gdSCv2uZHrlmj2_8HIv58CLFuTFtKj73Es83Au8T7eHDpYO8YuBravkgSGlMD2CDaGpziENlLs4hSyGmB2ad1Afm_b_qhqWsDdeJfFrMBB98Exf3puhWrfdTWmxuLMgrNo3uxJtqKcK223Y__3TFM8)
