#!/bin/bash

salt '*' cmd.run "sed -i '/#     DO NOT EDIT THIS FILE BY HAND -- YOUR CHANGES WILL BE OVERWRITTEN/a nameserver 10.254.0.10' /etc/resolv.conf"

salt 'ctl*' cmd.run 'curl -qL https://raw.githubusercontent.com/ohryhorov/ceph-rook/master/pre-req.sh | bash --'


