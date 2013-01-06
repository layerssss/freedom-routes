#!/bin/sh

export PATH="/bin:/sbin:/usr/sbin:/usr/bin"

OLDGW=`netstat -nr | grep '^default' | grep -v "$1" | sed 's/default *\\([0-9\.]*\\) .*/\\1/'`

if [ ! -e /tmp/freedom_oldgw ]; then
    echo "${OLDGW}" > /tmp/freedom_oldgw
fi

dscacheutil -flushcache

{{range $i, $ip := .Ips}}route add {{$ip.Ip}}/{{$ip.Cidr}} "${OLDGW}"
{{end}}
