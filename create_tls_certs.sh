#!/bin/sh
openssl genrsa -aes256 -out ca-key.pem 4096
openssl req -new -x509 -days 365 -key ca-key.pem -sha256 -out ca.pem
openssl genrsa -out server-key.pem 4096
openssl req -subj "/CN=fanlens.io" -sha256 -new -key server-key.pem -out server.csr
echo subjectAltName = DNS:fanlens.io > extfile.cnf
openssl x509 -req -days 365 -sha256 -in server.csr -CA ca.pem -CAkey ca-key.pem \
  -CAcreateserial -out server-cert.pem -extfile extfile.cnf
openssl genrsa -out client-key.pem 4096
openssl req -subj /CN=client -new -key client-key.pem -out client.csr
echo extendedKeyUsage = clientAuth > client-extfile.cnf
openssl x509 -req -days 365 -sha256 -in client.csr -CA ca.pem -CAkey ca-key.pem \
  -CAcreateserial -out client-cert.pem -extfile client-extfile.cnf
rm client.csr server.csr
