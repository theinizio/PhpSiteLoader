Mysql ports

 listens on a TCP or UDP port with 
 ```bash
 netstat -tuplen
 ```
 my.cnf file:
 ```bash
 skip-networking
 bind-address = 127.0.0.1
 ```
 
 firewall:
 ```bash
 iptables -A INPUT -p tcp --dport 3306 -s xxx.xxx.xxx.xxx -j ACCEPT
 iptables -A INPUT -p tcp --dport 3306 -j DROP
 ```
 
 nmap 95.179.163.160