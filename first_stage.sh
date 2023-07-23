echo "AOSP initexited! DMESG:"
read
./busybox dmesg
echo "/sys listing:"
read
ls /sys
echo "/sys/fs:"
read
ls /sys/fs
