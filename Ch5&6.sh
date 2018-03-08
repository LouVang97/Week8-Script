#!/bin/bash
#Chapter 5

#Check on Kernel system log file
/var/log/kernel.log

#Check dmesg 
dmesg | less

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

#Used nano to write units
nano Unit.target

#Inside nano Unit.target
[Unit]
Description=file 1

[Unit]
Description=file 2
Wants=file1.target

[Install[
WantedBy=multi-user.target

#Activate the file2.traget
systemctl start Unit.target

#Verify that both units are active
systemctl status Unit.target

#Enable the units
systemctl enable Unit.targetls

#nano to write socket unit 
nano SocketUnit.echo 

[Unit]
Description=echo socket 

[Socket]
ListenStream=22222
Accept=yes

#create another nano to write service 
nano service.echo 

[Unit]
Description=echo service 

[Service]
ExecStart=-/bin/cat
StandardInput=socket 

#run the unit 
systemctl start SocketUnit.echo 

#test the service
telnet localhost 22222

#stop the SocketUnit
systemctl stop SocketUnit.echo 

#view jobs
initictl list

#start, stop, restart, emit an Upstart job
initictl start job
initictl stop job
initictl restart job
initictl emit job 

