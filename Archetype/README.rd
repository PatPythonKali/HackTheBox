# Connect to VPN 

# Store IP in a shell variable
export IP=10.10.10.27

# Run NMAP
nmap -sV -sC -A $IP -oN nmap_results.txt

# Open Ports 
PORT     STATE SERVICE      VERSION
135/tcp  open  msrpc        Microsoft Windows RPC
139/tcp  open  netbios-ssn  Microsoft Windows netbios-ssn
445/tcp  open  microsoft-ds Windows Server 2019 Standard 17763 microsoft-ds
1433/tcp open  ms-sql-s     Microsoft SQL Server 2017 14.00.1000.00; RTM

Target Name: ARCHETYPE
Computer Name: Archetype
SMB was detected
Account: guest
auth_level: user

# Users 
Sharename       Type      Comment
	---------       ----      -------
	ADMIN$          Disk      Remote Admin
	backups         Disk      
	C$              Disk      Default share
	IPC$            IPC       Remote IPC
