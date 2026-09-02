#!/bin/bash
cd ~/easy-rsa || cd /usr/share/easy-rsa
./easyrsa gen-req client1 nopass
./easyrsa sign-req client client1
./easyrsa gen-req client2 nopass
./easyrsa sign-req client client2
