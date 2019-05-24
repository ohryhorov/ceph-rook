#!/bin/bash -xv

#ceph-rook specific requirements

#kubectl label nodes cmp1 role=ceph-mon-node
#kubectl label nodes cmp2 role=ceph-mon-node
#kubectl label nodes cmp3 role=ceph-mon-node

#kubectl get secret rook-ceph-admin-keyring -n rook-ceph --export -o yaml | sed -e 's/keyring:/key:/' | kubectl apply -n openstack -f-

#kubectl cp rook-ceph/$(kubectl -n rook-ceph get pod -l "app=rook-ceph-operator" -o jsonpath='{.items[0].metadata.name}'):/etc/ceph/ceph.conf /tmp/ && sed -i 's/[a-z]1\+://g' /tmp/ceph.conf
# REMOVE client.admin section
#kubectl create configmap rook-ceph-config -n openstack --from-file=/tmp/ceph.conf

#kubectl get svc -n rook-ceph -l app=rook-ceph-mon -o jsonpath='{.items[0].spec.clusterIP}:{.items[0].spec.ports[0].port},{.items[1].spec.clusterIP}:{.items[1].spec.ports[0].port},{.items[2].spec.clusterIP}:{.items[2].spec.ports[0].port}'
