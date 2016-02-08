#!/bin/bash

# gen json
cp coreos.json $1.json
sed -i -e 's/COREOS_PUBLIC_IP/'$2'/g' $1.json
sed -i -e 's/COREOS/'$1'/g' $1.json

# gen certs
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=client-server $1.json | cfssljson -bare coreos
chmod 0644 coreos-key.pem
rm $1.json

# copy over and set
scp coreos-key.pem coreos.pem core@$2:
ssh -A core@$2 'bash -s' < setCert.sh
rm coreos-key.pem coreos.pem

# save server
touch servers
echo $2 >> servers
