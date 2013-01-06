#!/bin/bash 

export PATH="/bin:/sbin:/usr/sbin:/usr/bin"
OLDGW=$(ip route show 0/0 | head -n1 | grep 'via' | grep -Po '\d+\.\d+\.\d+\.\d+')

ip -batch - <<EOF
  {{range $i, $ip := .Ips}}route add {{$ip.Ip}}/{{$ip.Cidr}} via $OLDGW
  {{end}}
EOF
