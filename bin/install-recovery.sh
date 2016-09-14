#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:7632896:c18353fc5c61c4771178a5fc3632ec0439455bb2; then
  applypatch EMMC:/dev/block/mmcblk0p9:6971392:b6d24567e651ba66c33376a16e9cd2883592d2d4 EMMC:/dev/block/mmcblk0p10 c18353fc5c61c4771178a5fc3632ec0439455bb2 7632896 b6d24567e651ba66c33376a16e9cd2883592d2d4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
