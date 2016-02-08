sudo mkdir /etc/ssl/etcd
sudo mkdir /etc/ssl/etcd/certs
sudo mkdir /etc/ssl/etcd/private
sudo mv coreos.pem /etc/ssl/etcd/certs/coreos.pem
sudo mv coreos-key.pem /etc/ssl/etcd/private/coreos-key.pem
