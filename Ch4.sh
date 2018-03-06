#!/bin/bash

cd Linux.zip
dd if=/dev/zero of=./8MB.img bs=2M count=13
hexdump ./8MB.img | less
sudo mkfs -t ext2 ./8MB.img
sudo mount ./8MB.img /mnt/tmp
mount; df -h
sudo umount /mnt/tmp
sudo mount /mnt/tmp -remount
sudo fsck /mnt/tmp 

#create 2 directory 
mkdir dir1 dir2 

#echo a through d 
echo a > dir1/file1
echo b > dir1/file2
echo c > dir2/fie3
echo d > dir2/file4

#in
in dir1/file1 dir2/file4

dd if=/dev/zero of=swap_file bs=10k count=15
mkswap swap_file
swapon swap_file
free 
swapoff swap_file
