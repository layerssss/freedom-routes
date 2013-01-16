# remove existing rules
/ip route rule remove [/ip route rule find table="freedomroutes.domestic"]

{{range $i, $ip := .Ips}}/ip route rule add dst-address={{$ip.Ip}}/{{$ip.Cidr}} action=lookup table="freedomroutes.domestic"
{{end}}
