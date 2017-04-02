#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  exec sudo "$0" "$@"
fi

echo $'______________________________________________________\n'
echo $'     Alfred/Spotlight Restore Tool Installation '
echo $'______________________________________________________\n'

echo " This will install the restoring script to your path."
echo $' It can then be ran as the command:\n'
echo $'\t           indexreset\n'

choice='z'

echo $' Script will install to /usr/bin/indexreset'
echo $'       * Requires sudo privileges *'
echo -n $'\n Are you sure you want to continue (yes/no)? '

read choice

if [ $choice = "y" ] || [ $choice = "Yes" ] || [ $choice = "yes" ]; then

    echo $'\n______________________________________________________\n'
    echo $' * Installing Alfred/Spotlight Restore Tool...\n'
	sleep 1
    sudo cp -v ./indexreset /usr/bin/
	sleep 1
    echo $'\n * Complete!\n'
    echo $' To run the Alfred/Spotlight Restore Tool:\n'
    echo $'       Enter the command:   indexreset\n'
    echo $'______________________________________________________\n'
else
  echo $'\n______________________________________________________\n'
  echo $'                 Exited Installation...\n'
  echo $' * Please run install.sh again to get back to menu *\n'
fi

sleep 1

exit 0
