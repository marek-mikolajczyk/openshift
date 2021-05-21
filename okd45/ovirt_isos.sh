
 mkdir /tmp/iso
 mkdir /tmp/iso-bootstrap
 mount -t iso9660 -o loop  fedora-coreosbootstrap.iso /tmp/iso/
 cd  /tmp/iso/
 tar cf - . | (cd /tmp/iso-bootstrap ; tar xfp -)
 cd /tmp/iso-bootstrap
 # modify stuff


mkisofs -o /tmp/okd4-control-plane4.iso -rational-rock -J -joliet-long -eltorito-boot isolinux/isolinux.bin -eltorito-catalog isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -V "fedora-coreos-34.20210427.3.0" .
scp /tmp/okd4-control-plane4.iso  root@rhv1.marekexample.com:/rhev/data-center/mnt/192.168.0.212:_volume1_redhat-iso/586f4fe3-ec40-484e-864b-d4d83baa8865/images/11111111-1111-1111-1111-111111111111/
