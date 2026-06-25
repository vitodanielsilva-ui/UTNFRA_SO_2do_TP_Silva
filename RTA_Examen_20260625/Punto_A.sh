#!/bin/bash
pvcreate /dev/sdc /dev/sdd
vgcreate vg_datos /dev/sdc
vgcreate vg_temp /dev/sdd
lvcreate -L 5MB -n lv_docker vg_datos
lvcreate -L 1.5G -n lv_workareas vg_datos
lvcreate -L 512MB -n lv_swap vg_temp
mkfs.ext4 /dev/vg_datos/lv_docker
mkfs.ext4 /dev/vg_datos/lv_workareas
mkswap /dev/vg_temp/lv_swap
mkdir -p /var/lib/docker
mkdir -p /work
mount /dev/vg_datos/lv_docker /var/lib/docker
mount /dev/vg_datos/lv_workareas /work
swapon /dev/vg_temp/lv_swap
echo '/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0' | tee -a /etc/fstab
echo '/dev/vg_datos/lv_workareas /work ext4 defaults 0 0' | tee -a /etc/fstab
echo '/dev/vg_temp/lv_swap none swap sw 0 0' | tee -a /etc/fstab
