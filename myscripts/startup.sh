# run rescuetime
rescuetime

# mount Disk C
mkdir /media/dlcc/Windows
mount /dev/nvme0n1p3 /media/dlcc/Windows

# mount Disk D
mkdir /media/dlcc/DATA
mount /dev/sda1 /media/dlcc/DATA

# rclone remote to local
rclone sync zubar: "/mnt/c/Google Drive zubar"
