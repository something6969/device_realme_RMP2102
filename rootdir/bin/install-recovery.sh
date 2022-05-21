#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:948a9f30bd05f27e2721e62965df637fdf8c5fd5; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:948a9f30bd05f27e2721e62965df637fdf8c5fd5 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
