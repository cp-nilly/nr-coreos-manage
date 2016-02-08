#! /bin/bash

cp rules-save.tmp rules-save
for line in $(cat servers); do echo '-A INPUT -i eth0 -s '$line' -j ACCEPT' >> rules-save; done
echo COMMIT >> rules-save
echo '' >> rules-save
chmod 0644 rules-save

for line in $(cat servers); do
	echo 'Updating rules-save on 'core@$line
	scp rules-save core@$line: ;
	ssh -A core@$line 'sudo mv rules-save /var/lib/iptables/rules-save && sudo systemctl restart iptables-restore.service';
done
