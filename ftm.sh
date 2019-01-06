#!/bin/sh
echo "Welcome to Sunday Samayal"
echo "xinput list"
xinput --list
read -p "Disable(0) or Enable(1) or Exit(2): " ftm_option
while [ $ftm_option -ne 2 ]; do
	if [ $ftm_option -eq 0 ]; then
		echo first
		read -p "Enter device ID : " ftm_device_id
		xinput set-int-prop $ftm_device_id "Device Enabled" 8 0
	elif [ $ftm_option -eq 1 ]; then
		echo second
		read -p "Enter device ID : " ftm_device_id
		xinput set-int-prop $ftm_device_id "Device Enabled" 8 1
	else 
		echo "Enter correct value"
	fi
	read -p "Disable(0) or Enable(1) or Exit(2): " ftm_option
done
echo "Potatto"