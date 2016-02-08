#!/bin/bash -x

for server in $(cat servers); do
	ssh core@$server 'bash -s' < reboot.sh 
done
