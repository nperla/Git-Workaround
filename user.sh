#!/bin/bash

echo -e "\n............................................"
echo " The script will use as a bootstraping"
echo -e ".............................................\n"


#sudo mkdir -p /home/azureuser/cloud_init

#USERNAME=""
#read -r -s -p "Please enter the user name:" $USERNAME

#sudo useradd Grafana -s /bin/bash
#sudo wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz

# Dependencies for Grafana server
#sudo apt-get install -y apt-transport-https
#sudo wget https://packages.ubuntu.com/bionic/ca-certificates
#sudo wget https://packages.ubuntu.com/bionic/gir1.2-glib-2.0
#sudo wget https://packages.ubuntu.com/bionic/python-apt-common
#sudo wget https://packages.ubuntu.com/bionic/python3
#sudo wget https://packages.ubuntu.com/bionic/python3-dbus
#sudo wget https://packages.ubuntu.com/bionic/python3-gi
#sudo wget https://packages.ubuntu.com/bionic/python3-software-properties

#sudo wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
#echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list 

sudo apt-get update
sudo apt-get install grafana-enterprise  # Installing Grafana

sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server

sudo systemctl enable grafana-server.service   #Configure the Grafana server to start at boot
