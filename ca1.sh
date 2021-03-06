#!/bin/bash
cd /etc/pki/CA
touch index.txt 
echo 1000 > seria

openssl genrsa -des3 -out private/cakey.pem 2048
cp /private/cakey.pem >> /etc/pki/tls/private

openssl req -new -x509 -days 365 -key private/cakey.pem -out cacert.pem
