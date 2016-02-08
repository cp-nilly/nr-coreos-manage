n=0
until [ $n -ge 6 ]
do
  sudo locksmithctl -endpoint=https://127.0.0.1:2379 -etcd-cafile=/etc/ssl/certs/ca.pem -etcd-certfile=/etc/ssl/etcd/certs/coreos.pem -etcd-keyfile=/etc/ssl/etcd/private/coreos-key.pem reboot && break
  n=$[$n+1]
  sleep 20
done
