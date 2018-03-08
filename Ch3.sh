#!/bin/bash
#Chapter 3

#create files 
touch file7 file8

#send blah blah
echo blah blah > /dev/null

#list contents of directory 
ls -l

#assign tp block device and check 
dd if=file7 of=fiile8 ibs=1k obs=1k count=2

ls -l
