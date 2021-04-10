#!/bin/bash
clear
echo "************************************"
echo "************************************"
echo "***********AZURE-CLOUD**************"
echo "****-----------------------------***"
echo "***1.-------CENTOS / REDHAT------***"
echo "***2.-------DEBIAN---------------***"
echo "***3.-------ORACLE-LINUX---------***"
echo "***4.-------SUSE-----------------***"
echo "***5.-------UBUNTU---------------***"
echo "****-----------------------------***"
echo "************************************"
echo "************************************"
echo
read -p "SECLECT AN OPTION:  " OPTION

case "$OPTION" in
	1)echo -e "\n\n\n-----SSHD SERVICE STATUS-----\n\n" 2>/dev/null > /tmp/diagnostic ; systemctl status sshd 2>/dev/null >> /tmp/diagnostic;
	echo -e "\n\n\n-----SSHD_CONFIG-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/ssh/sshd_config 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----NETWORK-MANAGER---------\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status NetworkManager 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----CLOUD-INIT--------------\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status cloud-init.service 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----HOST.ALLOW--------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/host.allow 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----HOST.DENY---------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/host.deny 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS-----\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status waagent 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT VERSION----\n\n" 2>/dev/null >> /tmp/diagnostic ; waagent --version 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----CONNECTIVITY TEST-------\n\n" 2>/dev/null >> /tmp/diagnostic ; ping -c 4 8.8.8.8 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----NETSTAT-----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----ROUTING TABLE-----------\n\n" 2>/dev/null >> /tmp/diagnostic ; route -n 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----RESOLV.CONF-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/resolv.conf 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----SELINUX STATUS----------\n\n" 2>/dev/null >> /tmp/diagnostic ; sestatus 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD SERVICE-------\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status firewalld 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD RULES---------\n\n" 2>/dev/null >> /tmp/diagnostic ; firewall-cmd --list-all 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES---------------\n\n" 2>/dev/null >> /tmp/diagnostic ; iptables -L 2>/dev/null >> /tmp/diagnostic ; clear ; /tmp/diagnostic ;
	echo -e "\n\n\n-----RHEL-RHUIS--------------\n\n" 2>/dev/null >> /tmp/diagnostic ; 
	for x in rhui-5.microsoft.com rhui-2.microsoft.com rhui-3.microsoft.com ; do echo -e "\n$x" && (echo >/dev/tcp/$x/443) && echo "Open 443" || echo "Close 443" >> /tmp/diagnostic 2>&1 ; done ;
	cat /tmp/diagnostic
	;;
	
	2)echo -e "\n\n\n-----SSHD SERVICE STATUS:-----\n\n" 2>/dev/null > /tmp/diagnostic ; systemctl status sshd 2>/dev/null >> /tmp/diagnostic;
	echo -e "\n\n\n-----SSHD_CONFIG:-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/ssh/sshd_config 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----HOSTS.DENY:--------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/hosts.deny 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS:-----\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status walinuxagent 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT VERSION:----\n\n" 2>/dev/null >> /tmp/diagnostic ; waagent --version 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----CONNECTIVITY TEST:-------\n\n" 2>/dev/null >> /tmp/diagnostic ; ping -c 4 8.8.8.8 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----NETSTAT:-----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----ROUTING TABLE:-----------\n\n" 2>/dev/null >> /tmp/diagnostic ; route -n 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----RESOLV.CONF:-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/resolv.conf 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----UFW STATUS---------------\n\n" 2>/dev/null >> /tmp/diagnostic ; ufw status 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; iptables -L 2>/dev/null >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;

	3)echo -e "\n\n\n-----SSHD SERVICE STATUS:-----\n\n" 2>/dev/null > /tmp/diagnostic ; systemctl status sshd 2>/dev/null >> /tmp/diagnostic; 
	echo -e "\n\n\n-----SSHD_CONFIG:-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/ssh/sshd_config 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----HOSTS.ALLOW:-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/hosts.allow 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS:-----\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status waagent 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT VERSION:----\n\n" 2>/dev/null >> /tmp/diagnostic ; waagent --version 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----CONNECTIVITY TEST:-------\n\n" 2>/dev/null >> /tmp/diagnostic ; ping -c 4 8.8.8.8 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----NETSTAT:-----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----ROUTING TABLE:-----------\n\n" 2>/dev/null >> /tmp/diagnostic ; route -n 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----RESOLV.CONF:-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/resolv.conf 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; iptables -L 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD SERVICE--------\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status firewalld 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD RULES----------\n\n" 2>/dev/null >> /tmp/diagnostic ; firewall-cmd --list-all 2>/dev/null >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;

	4)echo -e "\n\n\n-----SSHD SERVICE STATUS:-----\n\n" 2>/dev/null > /tmp/diagnostic ; systemctl status sshd 2>/dev/null >> /tmp/diagnostic; 
	echo -e "\n\n\n-----SSHD_CONFIG:-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/ssh/sshd_config 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----HOSTS.DENY:--------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/hosts.deny 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT STATUS:-----\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status waagent 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----WALINUXAGENT VERSION:----\n\n" 2>/dev/null >> /tmp/diagnostic ; waagent --version 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----CONNECTIVITY TEST:-------\n\n" 2>/dev/null >> /tmp/diagnostic ; ping -c 4 8.8.8.8 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----NETSTAT:-----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; ss -tupln 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----ROUTING TABLE:-----------\n\n" 2>/dev/null >> /tmp/diagnostic ; ip route2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----RESOLV.CONF:-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/resolv.conf 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; iptables -L 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD SERVICE--------\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status firewalld 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----FIREWALLD RULES----------\n\n" 2>/dev/null >> /tmp/diagnostic ; firewall-cmd --list-all 2>/dev/null >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;


	5)echo -e "\n\n\n-----SSHD SERVICE STATUS-----\n\n" 2>/dev/null > /tmp/diagnostic ; systemctl status sshd 2>/dev/null >> /tmp/diagnostic;
	echo -e "\n\n\n-----SSHD_CONFIG-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/ssh/sshd_config 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----HOSTS-------------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/hosts 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT STATUS-----\n\n" 2>/dev/null >> /tmp/diagnostic ; systemctl status walinuxagent 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----WALINUXAGENT VERSION----\n\n" 2>/dev/null >> /tmp/diagnostic ; waagent --version 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----CONNECTIVITY TEST-------\n\n" 2>/dev/null >> /tmp/diagnostic ; ping -c 4 8.8.8.8 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----NETSTAT-----------------\n\n" 2>/dev/null >> /tmp/diagnostic ; netstat -tulpn | grep LISTEN 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----ROUTING TABLE-----------\n\n" 2>/dev/null >> /tmp/diagnostic ; route -n 2>/dev/null >> /tmp/diagnostic ;
	echo -e "\n\n\n-----RESOLV.CONF-------------\n\n" 2>/dev/null >> /tmp/diagnostic ; cat /etc/resolv.conf 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----UFW STATUS--------------\n\n" 2>/dev/null >> /tmp/diagnostic ; ufw status verbose 2>/dev/null >> /tmp/diagnostic ; 
	echo -e "\n\n\n-----IP TABLES---------------\n\n" 2>/dev/null >> /tmp/diagnostic ; iptables -L 2>/dev/null >> /tmp/diagnostic ; clear ;
	cat /tmp/diagnostic
	;;
	
	*)
	echo "Invalid option"
	;;
esac
