#!/bin/bash
#Chapter 1 and 2

#print work directory
pwd

#create directory 
mkdir MidtermScript 

#change directory 
cd MidtermScript 

#create file1 & file2
touch file1 file2 

#list the contents of directory  
ls 

#define the difference between file1 and file2
diff file1 file2

#copy file1 into file2
cp file1 file2

#move file1 to file2
mv file1 file2

#find the format of file1
file file1

#create text editor
nano echo.sh 

echo "Hello"
echo "What is your name?"
read MY_NAME
echo "Nice to meet you!"
return 0 

#exit nano 

#display echo.sh 
cat ./echo.sh

#assign permission 
chmod u+x echo.sh 

#run echo.sh 
./echo.sh 

