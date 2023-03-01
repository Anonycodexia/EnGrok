#!/bin/bash
echo
printf "\033[1;92m \n[+] Downloading requirements\n"
sleep 1
apt update
apt upgrade
apt install figlet
apt install toilet
apt install wget
cd ~/EnGrok
printf "\033[1;93m Download complete\n"
sleep 2
clear
menu() {
figlet -f font EnGrok|toilet -f term -F metal
echo
echo "===================================================="|toilet -f term -F gay
echo
echo -e "\033[1;92m Ngrok Installer Programmed By Anonycodexia"
echo
echo "===================================================="|toilet -f term -F gay
echo
echo -e -n "\033[1;93m Do you want to install ngrok\033[91m (\033[92my\033[96m/\033[94mn\033[91m) "
read a
case $a in
y|Y)
echo -e "\033[1;92m [+] Installing requirements"
echo
sleep 2
echo
sleep 1
echo -e "\033[1;93m [+] Downloading ngrok......"
sleep 2
echo
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
echo
mv ngrok-stable-linux-arm.zip ngrok.zip
sleep 1
echo -e "\033[1;96m Unzip ngrok.zip......."
unzip ngrok.zip
sleep 1
echo -e "\033[94m [-] Installing ngrok......"
sleep 2
cp -f ngrok $PREFIX/bin
cp -f ngrok ~
chmod 700 ~/ngrok
chmod 700 $PREFIX/bin/ngrok
rm -f ngrok
sleep 1
echo
echo
echo "If you don't have Ngrok Authtoken then please go to Ngrok official Website and Create your free or paid account there and get copied your Ngrok Authoken from the dashboard and paste it here"
echo 
echo "Please Enter Your Authtoken....."
read Authtoken
ngrok authtoken $Authtoken
echo
echo
echo "Process Completed....."
echo
sleep 1
clear
rm -rf $HOME/EnGrok
echo
echo -e "\033[1;96m [+] Ngrok  Successfully Installed"
echo
echo -e "\033[1;91m NOTE:- PLEASE RESTART YOUR TERMUX"

exit ;;
n|N)exit ;;
*)menu ;;
esac
}
menu
