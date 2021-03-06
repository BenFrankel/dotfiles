# dotfiles

This repository contains my Linux dotfiles (configuration files) along with some system management utilities.

The purpose of this, for me, is:

- To quickly set up and configure a new system
- To share my configuration with other people
- To keep multiple systems synchronized
- To serve as a backup in case of flood

See [here](https://dotfiles.github.io) for more information on dotfile repositories.


## Packages

This repository is based on the following packages:


### System

- **Operating System** - [Arch Linux](https://archlinux.org)
- **Display Manager** - [LightDM](https://freedesktop.org/wiki/Software/LightDM)
    - **Greeter** - [LightDM GTK+ Greeter](https://launchpad.net/lightdm-gtk-greeter)
- **Window Manager** - [i3-gaps](https://github.com/Airblader/i3)
- **Info Bar** - [i3bar](https://i3wm.org/i3bar) with [i3blocks](https://vivien.github.io/i3blocks)
- **Screen Locker** - [light-locker](https://github.com/the-cavalry/light-locker)
    - **Inactivity Locker** - [xautolock](https://freecode.com/projects/xautolock)
- **Compositor** - [Picom](https://github.com/yshui/picom)
- **Notification Daemon** - [Dunst](https://dunst-project.org)
- **Application Launcher** - [Rofi](https://davedavenport.github.io/rofi)


### Applications

- **Terminal** - [rxvt](http://rxvt.sourceforge.net)
    - **Shell** - [Zsh](https://zsh.sourceforge.net)
- **Text Editor** - [Emacs](https://gnu.org/software/emacs)
- **IDEs**
    - **Python** - [Pycharm Community Edition](https://jetbrains.com/pycharm)
- **Web Browser** - [Firefox](https://www.mozilla.org/en-US/firefox/)
- **File Manager** - [Thunar](https://git.xfce.org/xfe/thunar)
- **Multimedia Player** - [VLC](https://videolan.org/vlc)
- **Image Editor** - [GIMP](https://gimp.org)
- **Drawing** - [Krita](https://krita.org)
- **Vector Editor** - [Inkscape](https://inkscape.org/en/)
- **Partition Manager** - [GParted](https://gparted.org)

Plus anything else I have installed.


## Installation


### Prerequisites

- Arch Linux
- An Internet connection
- [git](https://git-scm.com)


### Download

Clone the repository with `git clone https://github.com/BenFrankel/dotfiles ~/.dotfiles`.

### Setup

Run the command `~/.dotfiles/script/dot get`.

This will automatically do the following:

- Get the most recent version of this repository
- **NOT DONE**: Set LightDM as your display manager and greeter
- **NOT DONE**: Set i3-gaps as your default X window manager
- Set up links in your filesystem to activate the configuration files
- Set up links in your `~/bin/` directory to activate the scripts
- Sync your system's packages with the package list
    - Remove local packages not found on the list
    - Run `pacman -Syu`
    - Install missing packages from the list
- Change your default (login) shell to Zsh

The command also saves any files it replaces in `~/.dotfiles/backup/`, and a list of your packages pre-install in `~/.dotfiles/pack/`. Use `dot restore` to restore from backup.

You can also use `dot get` to update to the newest version.

### Wallpaper

To set your wallpaper, move an image to `~/data/image/screens/` and activate it with `dot-wall image-name`. The change should take effect immediately.


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


