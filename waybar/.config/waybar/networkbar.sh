#!/usr/bin/bash

strength=''
symbol=''

connected_wifi="$(nmcli -t device wifi list | grep '\*')"

if [[ connected_wifi ]]; then
	symbol=""
	strength="$(echo $connected_wifi | cut -d ':' -f6)"
	if [[ $strength -gt 70 ]]; then
		strength="▂▄▆█"
	elif [[ $strength -gt 50 ]]; then
		strength="▂▄▆_"
	elif [[ $strength -gt 30 ]]; then
		strength="▂▄__"
	else
		strength="▂___"
	fi
else
	eth_status="$($nmcli -t device status | grep ethernet)"
	connected_eth="$(echo eth_status | grep connected)"
	if [[ connected_eth ]]; then
		symbol="🖧 "
	else
		symbol="⋯ ⋯"
	fi
fi

echo "  $symbol $strength  "

unset symbol
unset strength
unset eth_status
unset connected_wifi
