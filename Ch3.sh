#!/bin/bash
#Chapter 3

#create files 
touch file7 file8

#echo /dev/null
echo blah blah > /dev/null

#list contents of directory 
ls -l

#copies data in block of a fixed size
dd if=file87 of=fiile88 ibs=1k obs=1k count=2

ls -l
