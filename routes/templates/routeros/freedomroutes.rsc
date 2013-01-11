# remove existing rules
:foreach i in=[/ip route rule find table="freedomroutes.domestic"] do={
    /ip route rule remove $i
}
{{range $i, $ip := .Ips}}/ip route rule add dst-address={{$ip.Ip}}/{{$ip.Cidr}} action=lookup table="freedomroutes.domestic"
{{end}}