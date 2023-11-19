#!/bin/sh

ip_address=$(cat /home/xen4id/.config/polybar/scripts/target | awk '{print $1}')
machine_name=$(cat /home/xen4id/.config/polybar/scripts/target | awk '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
		echo " $ip_address%{u-} - $machine_name"
else
		echo " %{u-}No target"
fi
