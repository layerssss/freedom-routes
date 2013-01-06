@echo off

for /F "tokens=3" %%* in ('route print ^| findstr "\\<0.0.0.0\\>"') do set "gw=%%*"

ipconfig /flushdns

{{range $i, $ip := .Ips}}route add {{$ip.Ip}} mask {{$ip.Mask}} %gw% metric 5
{{end}}
