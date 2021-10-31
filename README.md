# Workstation Management

Automated provisoning and configuration management for my development workstation.

## Machine

These are the specs of the current machine I am using
__Model:__ Dell Inc. XPS 15 7590  
__Integrated Graphics:__ Intel® UHD Graphics 630 (CFL GT2)  
__Discrete Graphics:__  NVIDIA GeForce GTX 1650 (4GB GDDR5)  
__Display:__ 15.6-inch UHD touchscreen  
__External Display Support:__ HDMI 2.0b x 1  
__Processor:__ Intel® Core™ i9-9980HK CPU @ 2.40GHz × 16  
__Memory:__ 32.0 GiB  
__Disk Capacity:__ 1.0 TB  

__Manual:__ [XPS 15 7590 Setup and Specifications](https://www.dell.com/support/manuals/en-us/xps-15-7590-laptop/xps-15-7590-setup-and-specifications/xps-15-7590-setup-and-specifications?guid=guid-5b8de7b7-879f-45a4-88e0-732155904029&lang=en-us)  

## Usage


First restore python and ansible dependencies with the restore script. By default, these packages all install to the user scope (`$HOME`).

````bash
./restore.sh
````

Now you can run the _workstation_ playbook.

````bash
ansible-playbook playbooks/workstation.yml
````

Gnome settings, including themes, fonts, and other UI configurations, have been separated into the `gnome.yml` playbook: 
````bash
ansible-playbook playbooks/gnome.yml
````




