#!/bin/sh

export PATH="/bin:/sbin:/usr/sbin:/usr/bin"

if [ ! -e /tmp/freedom_oldgw ]; then
        exit 0
fi

OLDGW=`cat /tmp/freedom_oldgw`

{{range $i, $ip := .Ips}}route delete {{$ip.Ip}}/{{$ip.Cidr}} "${OLDGW}"
{{end}}

rm /tmp/freedom_oldgw
