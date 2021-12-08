#!/system/bin/sh

MARK=/data/local/symbol_thirdpart_apks_installed
PKGS=/system/preinstall/
LOGTEXT=/data/local/log.txt

#/system/bin/myplayer /system/etc/bootvideo &
if [ -e /system/bin/FD628Service ];then
	/system/bin/FD628Service &
   cat /sys/class/ethernet/linkspeed | grep unlink
   if [ $? != 0 ];then
	   echo eth > /sys/class/leds/fd628_dev/led_on
   fi
	HOURS_TYPE=`settings get system time_12_24`
    if [ $HOURS_TYPE == 24 ];then
        setprop persist.sys.12_24hours 24
    else
        setprop persist.sys.12_24hours 12
    fi
fi




if [ ! -e $MARK ]; then
touch $LOGTEXT
echo "booting the first time, so pre-install some APKs." >> /data/local/log.txt

settings put secure accessibility_large_pointer_icon 1
settings put secure default_input_method com.android.inputmethod.latin/.LatinIME
#settings put system power_key_definition 1

busybox find $PKGS -name "*\.apk" -exec sh /system/bin/pm install -g {} \;
#APKLIST='ls /system/preinstall/*.apk'
#for INFILES in $APKLIST
#do
#  echo $INFILES >> /data/local/log.txt
#  /system/bin/pm install -r $INFILES
#done

# NO NEED to delete these APKs since we keep a mark under data partition.
# And the mark will be wiped out after doing factory reset, so you can install
# these APKs again if files are still there.
# busybox rm -rf $PKGS

echo "OK, installation complete." >> /data/local/log.txt
touch $MARK
fi
