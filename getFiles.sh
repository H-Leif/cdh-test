#!/bin/bash
# NOTE: this is not an automated script. It is a reference for personal use.

#check SELinux
# as root
#echo 0 > /sys/fs/selinux/enforce

#sudo sysctl vm.swappiness=1
#cat /proc/sys/vm/swappiness



#sudo yum -y install oracle-j2sdk1.7
#sudo yum -y install wget ntp nscd lsof

cd /tmp/
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.45.tar.gz
tar zxvf mysql-connector-java-5.1.45.tar.gz
sudo mkdir -p /usr/share/java
sudo cp mysql-connector-java-5.1.45/mysql-connector-java-5.1.45-bin.jar /usr/share/java/mysql-connector-java.jar

wget http://repo.mysql.com/yum/mysql-5.5-community/el/7/x86_64/mysql-community-server-5.5.58-2.el7.x86_64.rpm
wget http://repo.mysql.com/yum/mysql-5.5-community/el/7/x86_64/mysql-client-common-5.5.58-2.el7.x86_64.rpm
wget http://repo.mysql.com/yum/mysql-5.5-community/el/7/x86_64/mysql-community-client-5.5.58-2.el7.x86_64.rpm
wget http://repo.mysql.com/yum/mysql-5.5-community/el/7/x86_64/mysql-community-libs-5.5.58-2.el7.x86_64.rpm
#sudo yum install --nogpgcheck mysql-community-server-5.5.58-2.el7.x86_64.rpm mysql-community-client-5.5.58-2.el7.x86_64.rpm mysql-community-libs-5.5.58-2.el7.x86_64.rpm
#sudo /usr/bin/mysql_secure_installation

