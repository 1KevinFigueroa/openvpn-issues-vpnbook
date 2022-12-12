#!/bin/bash

echo -e "\n Current Director: " $PWD
echo -e "\n 0VPNBOOK .ovpn files search... \n"
find . -type f -name "vpnbook-*.ovpn"
echo -e "\n^--| Following vpnbook .ovpn file(s) FOUND!"
echo -e "\nModify which file: "
read fileName
echo -e "\n"
cat $fileName
echo -e " \n Searching for cipher AES-128-CBC string to replace...\n" 
newCiphers='data-ciphers AES-256-CBC:AES-256-GCM:AES-128-GCM:CHACHA20-POLY1305'
rts='remote-cert-tls server'
tlsCipher='tls-cipher "DEFAULT:@SECLEVEL=0"'
commPWD=$(pwd)
commPWD+="/"
commPWD+=$fileName

echo "Path file to modified .ovpn file: $commPWD"
sed -i "14 i $newCiphers\n$rts\n$tlsCipher" $commPWD
echo "File insert process complete!" 
