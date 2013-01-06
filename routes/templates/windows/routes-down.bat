@echo off

{{range $i, $ip := .Ips}}route delete {{$ip.Ip}}
{{end}}
