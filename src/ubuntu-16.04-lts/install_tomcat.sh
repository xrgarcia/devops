# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04
sudo apt-get update
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
sudo rm -rf /opt/tomcat/*
cd /tmp
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.12/bin/apache-tomcat-8.5.12.zip
sudo apt install unzip
unzip apache-tomcat-8.5.12.zip
sudo mv apache-tomcat-8.5.12/* /opt/tomcat
cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs
cd /opt/tomcat/bin
chmod +x *.sh
sudo update-java-alternatives -l
sudo cp ./tomcat.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl status tomcat
