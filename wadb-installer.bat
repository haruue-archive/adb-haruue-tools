@echo off

echo this is a cmd script to install wadb to a TEST ONLY device
echo you have to use usb to connect your device in this install

adb shell "su -c mount -o rw,remount /dev/block/mtdblock3 /system"
adb shell "su -c chmod 777 /system/build.prop"
adb shell "su -c echo service.adb.tcp.port=5555 >> /system/build.prop"
adb shell "su -c chmod 644 /system/build.prop"

adb shell "su -c echo setprop service.adb.tcp.port 5555 > /system/bin/wadb"
adb shell "su -c stop adbd >> /system/bin/wadb"
adb shell "su -c start adbd >> /system/bin/wadb"
adb shell "su -c chmod 777 /system/bin/wadb"
adb shell "su -c wadb"
