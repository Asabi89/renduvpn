#!/bin/bash
iptables -A FORWARD -s 10.8.0.0/24 -p udp --dport 53 -j ACCEPT
iptables -A FORWARD -s 10.8.0.0/24 -p tcp --dport 53 -j ACCEPT
iptables -A FORWARD -s 10.8.0.0/24 -p tcp --dport 80 -j ACCEPT
iptables -A FORWARD -s 10.8.0.0/24 -p tcp --dport 443 -j ACCEPT
iptables -A FORWARD -s 10.8.0.0/24 -j DROP
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o enp0s3 -j MASQUERADE
iptables-save > /etc/iptables/rules.v4
