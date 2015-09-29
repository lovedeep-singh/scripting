#!/bin/bash
# this script lists all the setuid and setgid regular iles in/usr
# the files are dispalyed using ls -l amd sorted by user and group
# respectively

echo "these  files are set-uid"
 echo "============================"
find /usr -type f -perm  -4000 -exec ls -l {} \; | sort -k 3
echo "these  files are  set-gid"
 echo "============"
find /usr -type f -perm  -2000 -exec ls -l {} \; |  sort -k 4
