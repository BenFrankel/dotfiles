# dotfiles

This repository contains my Linux dotfiles (configuration files) along with some system management utilities.

The purpose of this, for me, is:

- To quickly set up and configure a new system
- To share my configuration with other people and allow them to easily try it out
- To keep multiple systems syncronized
- To serve as a backup in case of fire or flood

See [here](dotfiles.github.io) for more information about dotfile repositories.


## Packages

This repository is based on the following packages:


### System

- *Operating System*: [Arch Linux](archlinux.org)
- *Display Manager*: [LightDM](freedesktop.org/wiki/Software/LightDM)
    - *Greeter*: [LightDM GTK+ Greeter](launchpad.net/lightdm-gtk-greeter)
- *Window Manager*: [i3-gaps](github.com/Airblader/i3) (tiling)
- *Info Bar*: [i3bar](i3wm.org/i3bar) with [i3blocks](vivien.github.io/i3blocks)
- *Screen Locker*: script using a fork of [i3lock](
    - *Inactivity Locker*: [xautolock](freecode.com/projects/xautolock)
- *Compositor*: [compton](github.com/chjj/compton)
- *Notification Daemon*: [dunst](dunst-project.org)
- *Application Launcher*: [rofi](davedavenport.github.io/rofi)


### Applications

- *Terminal*: [urxvt](rxvt.sourceforge.net)
    - *Shell*: [zsh](zsh.sourceforge.net)
- *Text Editor*: [Emacs](gnu.org/software/emacs)
- *IDEs*:
    - *Python*: [Pycharm Community Edition](jetbrains.com/pycharm)
- *Web Browser*: [Firefox Nightly](mozilla.org/en-US/firefox/channel/desktop)
- *File Manager*: [Thunar](git.xfce.org/xfe/thunar)
- *Multimedia Viewer*: [VLC](videolan.org/vlc)
- *Image Editor*: [GIMP](gimp.org)
- *Drawing*: [krita](krita.org)
- *Partition Manager*: [GParted](gparted.org)

Plus anything else I have installed.


## Usage

### Prerequisites

- Arch Linux
- Internet connection
- git


### Installation

#### Download

Navigate to your home directory and clone the repository with `git clone https://github.com/BenFrankel/dotfiles`.

#### Packages

Install all packages from the official Arch repositories with `pacman -S - < .pacman_packages`.

A handful of repositories come from AUR. Those packages can be installed with `yaourt -S - < .aur_packages`.

Alternatively, you can use the script `~/bin/package` to list, install, or save installed packages.

#### Zsh

Set zsh as your default shell with `chsh -s $(which zsh)`

#### Wallpaper

To set your wallpaper, download an image (probably to ~/Pictures/Wallpapers, but not necessarily) and make a link to it with `ln -s /path/to/image ~/.wallpaper`. The wallpaper will be dislayed when you reload i3 (Mod-space then r).


## Key Bindings

Customized key bindings should mostly be backwards compatible with the defaults, except where the defaults are particularly clumsy.


### Emacs

TODO


### i3

The i3 keybindings are heavily modified, with an emphasis on ergonomic keybindings for common actions. To this end, the caps lock key is used as an additional super key (intended to be the primary super key). Furthermore, no key binding requires more than one modifier except when particularly convenient, or for moving windows to workspaces.

The mod key is set to super key.

Default keybindings that were removed:

- *Start dmenu*: Mod-d -> Mod-/ or Mod-. or Mod-,
- *Layout stacking*: Mod-s -> <removed>
- *Scratchpad show*: Mod-minus -> Mod-+
- *Toggle focus tiling/floating*: Mod-space -> <removed>

Ergonomic keybindings for default commands:

- TODO

Keybindings for non-default commands:

- TODO


