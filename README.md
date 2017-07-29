# dotfiles

This repository contains my Linux dotfiles (configuration files) along with some system management utilities.

The purpose of this, for me, is:

- To quickly set up and configure a new system
- To share my configuration with other people
- To keep multiple systems synchronized
- To serve as a backup in case of flood

See [here](dotfiles.github.io) for more information about dotfile repositories.


## Packages

This repository is based on the following packages:


### System

- **Operating System** - [Arch Linux](archlinux.org)
- **Display Manager** - [LightDM](freedesktop.org/wiki/Software/LightDM)
    - **Greeter** - [LightDM GTK+ Greeter](launchpad.net/lightdm-gtk-greeter)
- **Window Manager** - [i3-gaps](github.com/Airblader/i3) (tiling)
- **Info Bar** - [i3bar](i3wm.org/i3bar) with [i3blocks](vivien.github.io/i3blocks)
- **Screen Locker** - script using a fork of [i3lock](
    - **Inactivity Locker** - [xautolock](freecode.com/projects/xautolock)
- **Compositor** - [compton](github.com/chjj/compton)
- **Notification Daemon** - [dunst](dunst-project.org)
- **Application Launcher** - [rofi](davedavenport.github.io/rofi)


### Applications

- **Terminal** - [urxvt](rxvt.sourceforge.net)
    - **Shell** - [Zsh](zsh.sourceforge.net)
- **Text Editor** - [Emacs](gnu.org/software/emacs)
- **IDEs**
    - **Python** - [Pycharm Community Edition](jetbrains.com/pycharm)
- **Web Browser** - [Firefox Nightly](mozilla.org/en-US/firefox/channel/desktop)
- **File Manager** - [Thunar](git.xfce.org/xfe/thunar)
- **Multimedia Player** - [VLC](videolan.org/vlc)
- **Image Editor** - [GIMP](gimp.org)
- **Drawing** - [krita](krita.org)
- **Partition Manager** - [GParted](gparted.org)

Plus anything else I have installed.


## Installation


### Prerequisites

- Arch Linux
- Internet connection
- git


### Download

Clone the repository with `git clone https://github.com/BenFrankel/dotfiles ~/.dotfiles`.

### Setup

Run the command `~/.dotfiles/script/dot get`.

This will automatically do the following:

- Get the most recent version of this repository
- Set up links in your filesystem to activate the configuration files
- Put links to any dotfile scripts in your `~/bin` directory
- Sync your system's packages with the package list
    - Install missing packages from the list
    - Remove packages not found on the list
- Change your default (login) shell to Zsh

The command also saves any files it would overwrite in `~/.dotfiles/backup/`, and a list of your installed packages pre-install in `~/.dotfiles/pack/`. Use `dot restore` to restore from backup.

You can also use `dot get` to update to the newest version.

### Wallpaper

To set your wallpaper, download an image (probably to `~/Pictures/Wallpapers/`, but not necessarily) and make a link to it with `ln -s /path/to/image ~/.wallpaper`. The wallpaper will be dislayed when you reload i3 (Mod-space then r).


## Key Bindings

Customized key bindings should mostly be backwards compatible with the defaults, except where the defaults are particularly clumsy.


### Emacs

This section isn't written yet.


### i3

The i3 keybindings are heavily modified, with an emphasis on ergonomic keybindings for common actions. To this end, the caps lock key is used as an additional super key (intended to be the primary super key). Furthermore, no key binding requires more than one modifier except when particularly convenient, or for moving windows to workspaces.

The mod key is set to super key.

Default keybindings that were removed:

- **Start dmenu**: Mod-d -> Mod-/ or Mod-. or Mod-,
- **Layout stacking**: Mod-s -> <removed>
- **Scratchpad show**: Mod-minus -> Mod-+
- **Toggle focus tiling/floating**: Mod-space -> <removed>

Ergonomic keybindings for default commands:

This section isn't written yet.

Keybindings for non-default commands:

This section isn't written yet.


