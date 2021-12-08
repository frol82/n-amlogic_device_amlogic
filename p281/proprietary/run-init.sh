#!/system/bin/sh
# init.d support

for FILE in /system/etc/init.d/*; do 
  sh $FILE
done
