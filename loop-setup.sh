#!/bin/bash

dd if=/dev/zero of=/ceph-osd.img bs=100M count=200
losetup -fP /ceph-osd.img
losetup -a
