![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge)

This is a backup of my i3wm setup for arch linux.
### Prerequisites
- `i3wm`
- `dunst`
- `flameshot`
- `kitty`
- `neovim`
- `picom`
- `polybar`
- `teevee` (AUR, ![Link](https://github.com/ThomasB3143/teevee))
- `powerprofilesdaemon`
- `xss-lock`, `i3lock` (lockscreen)
- `feh`
- `redshift`
- `ollama`
- `i3-auto-tiling` (AUR)
- `pipewire`, `wireplumber`
- `pfetch` (or a preferred fetch - change in `.bashrc`)

### Also Consider
- `ly`
- `vesktop` (AUR)
- `nnn`, `thunar`
- `starship.rs` (via ![starship.rs](https://starship.rs/))
- `pavucontrol`
- `bluetui`

This should get you most of the way!
### Notes
- When you clone this into your `.config/`, ensure that you either move `.bashrc`, `.xinitrc` back to `~/` or symlink with `ln -sfT ~/.config/<filename> ~/<filename>`.
