#!/bin/bash

# I would probably refrain from just running this. I only put this here so I remember the steps

# firewall rules
sudo firewall-cmd --permanent --add-service=dns
sudo firewall-cmd --reload

# copy the files in this repo to their designated location
sudo cp home.net.zone /var/named 
sudo cp 0.0.10.in-addr.net.zone /var/named/

# fix permissions. don't blob, dont recurse, be specific
sudo chmod 0640 /var/named/home.net.zone
sudo chmod 0640 /var/named/0.0.10.in-addr.net.zone
sudo chown root:named /var/named/home.net.zone
sudo chown root:named /var/named/0.0.10.in-addr.net.zone

# restore context
sudo restorecon -Rv /var/named
