#!/system/bin/sh

echo 0 > /sys/module/di/parameters/nr2_en

echo 1 > /sys/module/amvdec_h264/parameters/error_recovery_mode

echo 2 > /sys/class/tv/policy_fr_auto

busybox mount -o remount,rw /
busybox mkdir /mnt/temp
busybox chmod 1777 /mnt/temp
busybox mount -rw -t tmpfs tmpfs /mnt/temp
busybox mount -o remount,ro /

while [ ""`getprop dev.bootcomplete` != "1" ] ; do sleep 1; done 

# Remove Status bar
settings put global policy_control immersive.status=*

# Remove Navigation bar
#settings put global policy_control immersive.navigation=*

# Remove Both
settings put global policy_control immersive.full=*

# Disable
#settings put global policy_control null*
