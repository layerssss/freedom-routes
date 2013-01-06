#!/bin/sh

alias route='/system/xbin/busybox route'

{{range $i, $ip := .Ips}}route del -net {{$ip.Ip}} netmask {{$ip.Mask}}
{{end}}
