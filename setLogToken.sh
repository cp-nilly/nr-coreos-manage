#! /bin/bash

server=$(head -n 1 servers)
ssh -A core@$server 'etcdctl --endpoint=https://127.0.0.1:2379 --cert-file=/etc/ssl/etcd/certs/coreos.pem --key-file=/etc/ssl/etcd/private/coreos-key.pem --ca-file=/etc/ssl/certs/ca.pem set /logentries.com/token '$1
