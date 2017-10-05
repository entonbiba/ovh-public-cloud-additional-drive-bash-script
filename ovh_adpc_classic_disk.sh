#!/bin/bash 
# https://github.com/entonbiba/ovh-public-cloud-additional-drive-bash-script
# ovh additional drive mount and partition
sudo lsblk
# create a partition
#
# if its a high performance disk it will start with the letter v
# vdb is the first additional drive and should be changed accordingly
# other additional drives will be alpha increment on third character such as sdb sdc sdd sde sdf...
sudo fdisk /dev/sdb <<EOF
n



w
EOF
#format the partition
sudo mkfs.ext4 /dev/sdb1
<<EOF

EOF
# mount the additional drive
sudo mkdir -p /mnt/disk
sudo mount /dev/sdb1 /mnt/disk/
# view mounted drives
sudo df -h
