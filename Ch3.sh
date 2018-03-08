#!/bin/bash
#Chapter 3

#create files 
touch file7 file8

#send blah blah
echo blah blah > /dev/null

#list contents of directory 
ls -l

#create files and check to block device
dd if=file7 of=fiile8 ibs=1k obs=1k count=2

ls -l
