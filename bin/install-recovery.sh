#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:7657472:5e820fda6a7401d6c43891fe0b560adc945099af; then
  applypatch EMMC:/dev/block/mmcblk0p9:6991872:503f5831fdd46806c528da0bc8ca259f002bbb62 EMMC:/dev/block/mmcblk0p10 5e820fda6a7401d6c43891fe0b560adc945099af 7657472 503f5831fdd46806c528da0bc8ca259f002bbb62:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
