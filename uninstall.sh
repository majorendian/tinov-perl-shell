#!/bin/bash

read -n1 -p "Are you sure you want to uninstall and delete all mods and scripts related to tpsh? (y/n) [N] " confirm
echo

if [[ $confirm -eq "y" ]]; then
	echo "Uninstalling..."
	rm -vfr ~/.tpsh /.tpshrc
	rm -vf /usr/local/sbin/tpsh 
else
	echo "Uninstallation aborted"
fi
