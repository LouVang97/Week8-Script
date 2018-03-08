#!/bin/bash
#Chapter 5

#Check on Kernel system log file
/var/log/kernel.log

#Check dmesg 
dmesg | less

#Press and hold SHIFT to access GRUB when BIOS or firmware startup 

#Listing GRUB devices
ls -l

#Determine the GRUB root with echo 
echo $ root 

#View all currently set GRUB variables 
set

#print the configure
sudo grub-mkconfig

#write and install new configure file 
sudo grub-mkconfig -o /boot/grub.cfg
