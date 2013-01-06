#!/bin/bash 

export PATH="/bin:/sbin:/usr/sbin:/usr/bin"

ip -batch - <<EOF
  {{range $i, $ip := .Ips}}route del {{$ip.Ip}}/{{$ip.Cidr}}
  {{end}}
EOF
