#!/bin/bash

clear

echo "##::: ##:'##::::'##::::'###::::'########::::::::::::'######:::'######:::::'###::::'##::: ##:"
echo "###:: ##: ###::'###:::'## ##::: ##.... ##::::::::::'##... ##:'##... ##:::'## ##::: ###:: ##:"
echo "####: ##: ####'####::'##:. ##:: ##:::: ##:::::::::: ##:::..:: ##:::..:::'##:. ##:: ####: ##:"
echo "## ## ##: ## ### ##:'##:::. ##: ########::'#######:. ######:: ##:::::::'##:::. ##: ## ## ##:"
echo "##. ####: ##. #: ##: #########: ##.....:::........::..... ##: ##::::::: #########: ##. ####:"
echo "##:. ###: ##:.:: ##: ##.... ##: ##:::::::::::::::::'##::: ##: ##::: ##: ##.... ##: ##:. ###:"
echo "##::. ##: ##:::: ##: ##:::: ##: ##:::::::::::::::::. ######::. ######:: ##:::: ##: ##::. ##:"
echo "..::::..::..:::::..::..:::::..::..:::::::::::::::::::......::::......:::..:::::..::..::::..::"
echo
echo
blue="\e[34m"
printf "${blue}"

echo "Developed by D1vy@...."

echo "1- Port scanning"
echo "2- Port Versions"
echo "3- TCP Scanning"
echo "4- UDP scanning"
echo "5- OS Scanning"
echo -n "Enter Scan Type: "
read scan

case $scan in
	1) echo -n  "Enter a domain for scan: "
		read domain
		nmap -p 1-1000 $domain
	;;
	2) echo -n  "Enter a domain for scan: "
		read domain
		nmap -sV $domain
	;;
	3)echo -n  "Enter a domain for scan: "
		read domain
	 nmap -sT $domain
	;;
	4)echo -n  "Enter a domain for scan: "
		read domain
	 nmap -sU $domain
	;;
	5)echo -n  "Enter a domain for scan: "
		read domain
	 nmap -O $domain
	;;
	*) echo "Wrong Option Selected....."
	;;

esac

exit 0;
