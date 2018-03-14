#!/bin/bash
#Chapter 5

#Check on Kernel system log file
less /var/log/kernel.log

#Check dmesg 
dmesg | less

#press and hold SHIFT to access GRUB when BIOS startup

#Listing GRUB devices 
ls -l

#Determine the GRUB root with echo 
echo $ root

#view all current set GRUB variables 
set

#print the config
grub-mkconfig

#write and install new config file
grub-mkconfig -o /boot/gryb.cfg

#Chapter 6

#Check system's runlevel
who -r

#Change direcotry 
cd /etc/systemd

#View all unit's dependencies 
systemctl show --all

#Check the current systemd comfiguration
systemctl -p UnitPath show 

#Show lists os active units 
systemctl list-untis

#Get dev-mqueue.mount as a status 
systemctl status dev-mqueue.mount

#Display recent information from thw unit's journal 
journalctl _SYSTEMD_UNIT=dev-mqueue.mount

#Check on current job 
systemctl list-jobs

#Change directory
cd /etc/systemd system
