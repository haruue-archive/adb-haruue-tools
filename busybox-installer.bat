@echo off
echo this is a cmd script to install busybox to your devices
echo busybox version is BusyBox v1.24.0.git (2015-10-04 23:30:53 UTC) multi-call binary

adb push D:\Android\sdk\haruue-tools\busybox /data/local/
adb shell "su -c mount -o rw,remount /dev/block/mtdblock3 /system"
adb shell "su -c cp /data/local/busybox /system/xbin/"
adb shell "su -c busybox --install -s /system/xbin"