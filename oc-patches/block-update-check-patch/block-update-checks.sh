#!/bin/sh

iptables -A OUTPUT -d mms.chituiot.com -j REJECT
sleep 5
iptables -A OUTPUT -d mms.chituiot.com -j REJECT
sleep 25
iptables -A OUTPUT -d mms.chituiot.com -j REJECT