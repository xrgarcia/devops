# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04
sudo rm -rf /opt/tomcat/*
cd /tmp
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.12/bin/apache-tomcat-8.5.12.zip
sudo apt install unzip
unzip apache-tomcat-8.5.12.zip
sudo mv apache-tomcat-8.5.12/* /opt/tomcat
cd /opt/tomcat/bin
chmod +x *.sh
