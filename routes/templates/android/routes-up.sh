#!/bin/sh                                                                   

alias nestat='/system/xbin/busybox netstat'                                 
alias grep='/system/xbin/busybox grep'                                      
alias awk='/system/xbin/busybox awk'                                        
alias route='/system/xbin/busybox route'                                    
																																						
OLDGW=`netstat -rn | grep ^0\.0\.0\.0 | awk '{print $2}'`                   

{{range $i, $ip := .Ips}}route add -net {{$ip.Ip}} netmask {{$ip.Mask}} gw $OLDGW
{{end}}
