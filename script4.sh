#!/bin/bash
sudo apt update -y
sudo apt install mc vim -y

useradd -m -s /bin/bash -p '$6$od7NhkcxXVPn6pYE$V29pbonKk8z5qMAoUd0D/UXRUTWR1sjq/34qJcQZlHtWg8jHw3T9712o3vNfOpm2CCjkoi7OEVIqkNkyi7ast0' adminuser  
usermod -aG sudo adminuser 
useradd -m -s /bin/bash poweruser  
passwd -d poweruser 

echo "poweruser ALL=(ALL:ALL) /sbin/iptables" >> /etc/sudoers

sudo chmod 755 /home/adminuser

cd /home/poweruser
ln -s /etc/mtab softlink