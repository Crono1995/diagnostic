#!/bin/bash
clear
echo "******************************"
echo "******************************"
echo "********AZURE-CLOUD***********"
echo "------------------------------"
echo "1.-------CENTOS / REDHAT------"
echo "2.-------DEBIAN---------------"
echo "3.-------ORACLE-LINUX---------"
echo "4.-------SUSE-----------------"
echo "5.-------UBUNTU---------------"
echo "------------------------------"
echo "******************************"
echo "******************************"
echo
read -p "SECLECT AN OPTION:  " OPTION

case "$OPTION" in
	1)echo -e "\n\n\n-----SSHD SERVICE STATUS-----\n\n" > /tmp/diagnostic ; systemctl status sshd >> /tmp/diagnostic;
	echo -e "\n\n\n-----SSHD_CONFIG-------------\n\n" >> /tmp/diagnostic ; cat /etc/ssh/sshd_config >> /tmp/diagnostic ;
	echo -e "\n\n\n-----NETWORK-MANAGER---------\n\n" >> /tmp/diagnostic ; systemctl status NetworkManager >> /tmp/diagnostic ;
	echo -e "\n\n\n-----CLOUD-INIT--------------\n\n" >> /tmp/diagnostic ; systemctl status cloud-init.service >> /tmp/diagnostic ;
	echo -e "\n\n\n-----HOST.ALLOW--------------\n\n" >> /tmp/diagnostic ; cat /etc/host.allow >> /tmp/diagnostic ;
	echo -e "\n\n\n-----HOST.DENY---------------\n\n" >> /tmp/diagnostic ; cat /etc/host.deny >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS-----\n\n" >> /tmp/diagnostic ; systemctl status waagent >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT VERSION----\n\n" >> /tmp/diagnostic ; waagent --version >> /tmp/diagnostic ;
	echo -e "\n\n\n-----CONNECTIVITY TEST-------\n\n" >> /tmp/diagnostic ; ping -c 4 8.8.8.8 >> /tmp/diagnostic ;
	echo -e "\n\n\n-----NETSTAT-----------------\n\n" >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN >> /tmp/diagnostic ;
	echo -e "\n\n\n-----ROUTING TABLE-----------\n\n" >> /tmp/diagnostic ; route -n >> /tmp/diagnostic ;
	echo -e "\n\n\n-----RESOLV.CONF-------------\n\n" >> /tmp/diagnostic ; cat /etc/resolv.conf >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----SELINUX STATUS----------\n\n" >> /tmp/diagnostic ; sestatus >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD SERVICE-------\n\n" >> /tmp/diagnostic ; systemctl status firewalld >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD RULES---------\n\n" >> /tmp/diagnostic ; firewall-cmd --list-all >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES---------------\n\n" >> /tmp/diagnostic ; iptables -L >> /tmp/diagnostic ;
	echo -e "\n\n\n-----RHEL-RHUIS--------------\n\n" >> /tmp/diagnostic ; (telnet rhui-1.microsoft.com 443 ; telnet rhui-2.microsoft.com 443 ; telnet rhui-3.microsoft.com 443 ; ping -c 4 rhui-1.microsoft.com ; ping -c 4 rhui-2.microsoft.com ; ping -c 4 rhui-3.microsoft.com >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;
	
	2)echo -e "\n\n\n-----SSHD SERVICE STATUS:-----\n\n" > /tmp/diagnostic ; systemctl status sshd >> /tmp/diagnostic;
	echo -e "\n\n\n-----SSHD_CONFIG:-------------\n\n" >> /tmp/diagnostic ; cat /etc/ssh/sshd_config >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----HOSTS.DENY:--------------\n\n" >> /tmp/diagnostic ; cat /etc/hosts.deny >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS:-----\n\n" >> /tmp/diagnostic ; systemctl status walinuxagent >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT VERSION:----\n\n" >> /tmp/diagnostic ; waagent --version >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----CONNECTIVITY TEST:-------\n\n" >> /tmp/diagnostic ; ping -c 4 8.8.8.8 >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----NETSTAT:-----------------\n\n" >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----ROUTING TABLE:-----------\n\n" >> /tmp/diagnostic ; route -n >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----RESOLV.CONF:-------------\n\n" >> /tmp/diagnostic ; cat /etc/resolv.conf >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----UFW STATUS---------------\n\n" >> /tmp/diagnostic ; ufw status >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES----------------\n\n" >> /tmp/diagnostic ; iptables -L >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;

	3)echo -e "\n\n\n-----SSHD SERVICE STATUS:-----\n\n" > /tmp/diagnostic ; systemctl status sshd >> /tmp/diagnostic; 
	echo -e "\n\n\n-----SSHD_CONFIG:-------------\n\n" >> /tmp/diagnostic ; cat /etc/ssh/sshd_config >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----HOSTS.ALLOW:-------------\n\n" >> /tmp/diagnostic ; cat /etc/hosts.allow >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS:-----\n\n" >> /tmp/diagnostic ; systemctl status waagent >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT VERSION:----\n\n" >> /tmp/diagnostic ; waagent --version >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----CONNECTIVITY TEST:-------\n\n" >> /tmp/diagnostic ; ping -c 4 8.8.8.8 >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----NETSTAT:-----------------\n\n" >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----ROUTING TABLE:-----------\n\n" >> /tmp/diagnostic ; route -n >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----RESOLV.CONF:-------------\n\n" >> /tmp/diagnostic ; cat /etc/resolv.conf >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES----------------\n\n" >> /tmp/diagnostic ; iptables -L >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD SERVICE--------\n\n" >> /tmp/diagnostic ; systemctl status firewalld >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD RULES----------\n\n" >> /tmp/diagnostic ; firewall-cmd --list-all >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;

	4)echo -e "\n\n\n-----SSHD SERVICE STATUS:-----\n\n" > /tmp/diagnostic ; systemctl status sshd >> /tmp/diagnostic; 
	echo -e "\n\n\n-----SSHD_CONFIG:-------------\n\n" >> /tmp/diagnostic ; cat /etc/ssh/sshd_config >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----HOSTS.DENY:--------------\n\n" >> /tmp/diagnostic ; cat /etc/hosts.deny >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT STATUS:-----\n\n" >> /tmp/diagnostic ; systemctl status waagent >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT VERSION:----\n\n" >> /tmp/diagnostic ; waagent --version >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----CONNECTIVITY TEST:-------\n\n" >> /tmp/diagnostic ; ping -c 4 8.8.8.8 >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----NETSTAT:-----------------\n\n" >> /tmp/diagnostic ; ss -tupln >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----ROUTING TABLE:-----------\n\n" >> /tmp/diagnostic ; ip route>> /tmp/diagnostic ; 
	echo -e "\n\n\n-----RESOLV.CONF:-------------\n\n" >> /tmp/diagnostic ; cat /etc/resolv.conf >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES----------------\n\n" >> /tmp/diagnostic ; iptables -L >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD SERVICE--------\n\n" >> /tmp/diagnostic ; systemctl status firewalld >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD RULES----------\n\n" >> /tmp/diagnostic ; firewall-cmd --list-all >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;


	5)echo -e "\n\n\n-----SSHD SERVICE STATUS-----\n\n" > /tmp/diagnostic ; systemctl status sshd >> /tmp/diagnostic;
	echo -e "\n\n\n-----SSHD_CONFIG-------------\n\n" >> /tmp/diagnostic ; cat /etc/ssh/sshd_config >> /tmp/diagnostic ;
	echo -e "\n\n\n-----HOSTS-------------------\n\n" >> /tmp/diagnostic ; cat /etc/hosts >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS-----\n\n" >> /tmp/diagnostic ; systemctl status walinuxagent >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT VERSION----\n\n" >> /tmp/diagnostic ; waagent --version >> /tmp/diagnostic ;
	echo -e "\n\n\n-----CONNECTIVITY TEST-------\n\n" >> /tmp/diagnostic ; ping -c 4 8.8.8.8 >> /tmp/diagnostic ;
	echo -e "\n\n\n-----NETSTAT-----------------\n\n" >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN >> /tmp/diagnostic ;
	echo -e "\n\n\n-----ROUTING TABLE-----------\n\n" >> /tmp/diagnostic ; route -n >> /tmp/diagnostic ;
	echo -e "\n\n\n-----RESOLV.CONF-------------\n\n" >> /tmp/diagnostic ; cat /etc/resolv.conf >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----UFW STATUS--------------\n\n" >> /tmp/diagnostic ; ufw status verbose >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES---------------\n\n" >> /tmp/diagnostic ; iptables -L >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;
	
	*)
	echo "Invalid option"
	;;
esac
