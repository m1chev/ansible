# Dev Machine Setup

## Synopsis

Aims to simplify setting up a new machine, by installing and configuring tools
automatically using Ansible.

## Requirements

Installation of Ansible.

Instructions for some of the distros:

- Fedora: `sudo dnf install ansible -y`
- OpenSuse: `sudo zypper install ansible -y`
- Debian: `sudo apt install ansible -y`
- Arch: `sudo pacman -S ansible -y`

## Execution Command

`ansible-playbook playbook.yml --ask-become-pass`

## TODO - manual steps for future implementation (based on Fedora)

### Setting BTRFS on installation

In "Installation Destination" choose _Custom_ then _Create them Automatically_
Rename root &rarr; `@` and home &rarr; `@home`

After Installation completes use the terminal to edit the _/etc/fstab_
to increase the performance of the system
_(some of the options are ONLY for SSD)_.  
`sudo vi /etc/fstab`  
Add the text below before `subvol=@` and `subvol=@home`  
`compress=zstd,noatime,space_cache=v2,ssd,discard=async,`

### Install and configure Timeshift

`dnf install timeshift`  
Select _BTRFS_ then for "Schedule" select

- _Weekly_ &rarr; 2
- _Daily_ &rarr; 2
- _Hourly_ &rarr; 1

### Set dnf config

`sudo vi /erc/dnf/dnf.conf`  
Add the following lines at the end:  
`max_parallel_downloads=10'

'defaultyes=True`

### Install Flatpack

Needed for Element, Gnome-tweaks extensions

<https://flatpak.org/setup/Fedora>  
`flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`

### Install Nerd Fonts

Create the flowing folder for local install:  
`mkdir -p ~/.local/share/fonts`  
Download Fonts and Icons from <https://github.com/ryanoasis/nerd-fonts>

### Applicatoins

- docker
- intellij
- goland
- element
- lens
- postman
- andorid studio
- obs
