adb shell "su -c 'mount -o remount,rw rootfs /'"
adb shell "su -c 'mount -o rw,remount /dev/block/mtdblock3 /system'"