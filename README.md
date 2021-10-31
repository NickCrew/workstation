# Workstation Management

Automated provisoning and configuration management for my development workstation.

## Machine

These are the specs of the current machine I am using:  

__Model:__ Dell Inc. XPS 15 7590  
__Integrated Graphics:__ Intel® UHD Graphics 630 (CFL GT2)  
__Discrete Graphics:__  NVIDIA GeForce GTX 1650 (4GB GDDR5)  
__Display:__ 15.6-inch UHD touchscreen  
__External Display Support:__ HDMI 2.0b x 1  
__Processor:__ Intel® Core™ i9-9980HK CPU @ 2.40GHz × 16  
__Memory:__ 32.0 GiB  
__Disk Capacity:__ 1.0 TB  
__Operating System:__ [Fedora Workstation 34](https://getfedora.org)

__Manual:__ [XPS 15 7590 Setup and Specifications](https://www.dell.com/support/manuals/en-us/xps-15-7590-laptop/xps-15-7590-setup-and-specifications/xps-15-7590-setup-and-specifications?guid=guid-5b8de7b7-879f-45a4-88e0-732155904029&lang=en-us)  

## Prerequisites

1. Adminstrator (`sudo`) access by your user is required

## Quick Start

Restore dependencies and run all playbooks:

````bash
sh run.sh
````

## Usage

### Dependencies

First restore python and ansible dependencies with the restore script. By default, these packages all install to the user scope (`$HOME`).

````bash
./restore.sh
````

> NOTE: Most of the Python packages from `requirements.txt` are also necessary for various functionality in `dotfiles` or other user config as well. Therefore, if you want to install ansible to a virtualenv, you should do that manually by creating the virtualenv and `pip install ansible`

The `community.general` Ansible collection will be installed.  
This playbook will also install rust, golang and some of their packages using the roles `fubarhouse.rust` and `fubarhouse.golang`. 

### Files and Templates
Some files like fonts, static configuration files, or binary archives are included in `playbooks/files/` for use by the Ansible tasks.  

Use the playbook variables to customize any of the templates from `playbooks/templates/`.  

### Packages Playbook

Install all required packages (from multiple package managers) and start+enable any services.

````bash
ansible-playbook playbooks/packages.yml
````

> If this is your first run of the playbook, you will want to reboot afterwards.

#### Tags
There are some tags used to categorize and filter the tasks.  
- packages
- buildtools
- utilities
- virtualization
- drivers
- flatpak
- storage
- network

### Gnome UI Playbook

Apply GNOME settings, including themes, fonts, and other UI configurations. 

````bash
ansible-playbook playbooks/gnome.yml
````

### Tags
And some tags used for the user interface tasks as well...  
- packages
- ui
- files
- repos
- fonts
- color
- power
- appimages
- desktop
- themes
- terminal
- gsettings
- gnome




