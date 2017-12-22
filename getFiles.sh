#!/bin/bash
# NOTE: this is not an automated script. It is a reference for personal use.

#check SELinux
# as root
#echo 0 > /sys/fs/selinux/enforce

#sudo sysctl vm.swappiness=1
#cat /proc/sys/vm/swappiness

ssh -i Leif.pem centos@ec2-52-71-129-222.compute-1.amazonaws.com 'sudo useradd -u 2200 winston -p PASSWORD; sudo useradd -u 3200 cutler -p PASSWORD; sudo groupadd dolphins; sudo groupadd bucs; sudo usermod -a -G bucs winston; sudo usermod -a -G dolphins cutler'
ssh -i Leif.pem centos@ec2-54-242-177-65.compute-1.amazonaws.com 'sudo useradd -u 2200 winston -p PASSWORD; sudo useradd -u 3200 cutler -p PASSWORD; sudo groupadd dolphins; sudo groupadd bucs; sudo usermod -a -G bucs winston; sudo usermod -a -G dolphins cutler'
ssh -i Leif.pem centos@ec2-34-204-71-148.compute-1.amazonaws.com sudo useradd -u 2200 winston -p PASSWORD; sudo useradd -u 3200 cutler -p PASSWORD; sudo groupadd dolphins; sudo groupadd bucs; sudo usermod -a -G bucs winston; sudo usermod -a -G dolphins cutler'
ssh -i Leif.pem centos@ec2-54-157-192-93.compute-1.amazonaws.com 'sudo useradd -u 2200 winston -p PASSWORD; sudo useradd -u 3200 cutler -p PASSWORD; sudo groupadd dolphins; sudo groupadd bucs; sudo usermod -a -G bucs winston; sudo usermod -a -G dolphins cutler'



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

# sudo yum install 
# sudo yum install cloudera-manager-daemons cloudera-manager-server
# sudo yum install cloudera-manager-agent cloudera-manager-daemons

# do on other nodes:
# possibly as root
cat /etc/sysconfig/selinux

sudo sysctl vm.swappiness=1
echo never > /sys/kernel/mm/transparent_hugepage/enabled
sudo echo 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' >> /etc/rc.local

echo never > /sys/kernel/mm/transparent_hugepage/defrag
sudo echo 'echo never > /sys/kernel/mm/transparent_hugepage/defrag' >> /etc/rc.local

# small Taragen test
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen 1000 /benchmarks/teragen-1gb-test-3

