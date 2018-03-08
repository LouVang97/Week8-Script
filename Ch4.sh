#!/bin/bash
#Chapter 4

#Change directory 
cd Linux.zip

#create a 8 MB file with the dd command
dd if=/dev/zero of=./8MB.img bs=2M count=13

#display 8MB file
hexdump ./8MB.img | less

#write the ext2 filesystem using mkfs 
sudo mkfs -t ext2 ./8MB.img

#make a mount point, and mount it 
sudo mount ./8MB.img /mnt/tmp
mount; df -h

#unmount
sudo umount /mnt/tmp

#remount
sudo mount /mnt/tmp -remount

#give the mount as the argument 
sudo fsck /mnt/tmp 

#create directories inode contains a list of filenames and then link to other inodes 
mkdir dir1 dir2 
echo a > dir1/file1
echo b > dir1/file2
echo c > dir2/fie3
echo d > dir2/file4
ln dir1/file1 dir2/file5

#view inode details 
ls -iR dir*

#create an empty file, initialize it as swap, and add it to the swap pool
dd if=/dev/zero of=swap_file bs=10k count=15
sudo mkswap swap_file
sudo swapon swap_file

#display the current swap
free 
