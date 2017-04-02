#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  exec sudo "$0" "$@"
fi

echo $'______________________________________________________\n'
echo $'     Alfred/Spotlight Refresh Tool Installation '
echo $'______________________________________________________\n'

echo " This will install the index refresh script to your path."
echo $' It will also schedule the index to be refreshed every two days.\n'
echo $' After installation, this tool can be run as the command:\n'
echo $'\t           indexreset\n'

choice='z'

echo $' Script will install to /usr/bin/indexreset'
echo $'       * Requires sudo privileges *'
echo -n $'\n Are you sure you want to continue (yes/no)? '

read choice

if [ $choice = "y" ] || [ $choice = "yes" ] || [ $choice = "Yes" ] || [ $choice = "n" ]; then

  case $choice in
    [yY]|[yY][eE][sS])
    echo $'\n__________________________________________________\n'
    echo $' * Installing Alfred/Spotlight Restore Tool...\n'
	sleep 1
    sudo cp -v ../indexreset ./indexresetdaemon /usr/bin/
	sudo cp -v ./indexresetlaunchd /Library/LaunchDaemons/
	sudo cp -v ./indexresetlaunchd /Library/LaunchAgents/
	sudo chmod +x /Library/LaunchDaemons/indexresetlaunchd
 	sudo chmod +x /Library/LaunchAgents/indexresetlaunchd
    echo $'\n * Complete!\n'
    echo $' Index is now set to refresh itself every two days.'
    echo $' However, you CAN still run the command at any time.\n'
    echo $' To run the Alfred/Spotlight Restore Tool:\n'
    echo $'       Enter the command:   indexreset\n'
    echo $'____________________________________________________\n' ;;
  esac

  case $choice in
    [nN]|[nN][oO])
    echo $'\n_________________________________________________\n'
    echo $'               Exited Installation...\n'
    echo $' * Please run install.sh again to get back to menu *\n' ;;
  esac

else
  echo $'\n___________________________________________________\n'
  echo $'                 Exited Installation...\n'
  echo $'  Sorry, you did not enter (Y)es or (N)o\n'
  echo $' * Please run install.sh again to get back to menu *\n'
fi

sleep 1

exit 0
