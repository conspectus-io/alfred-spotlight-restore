#!/bin/bash

choice='z'

echo $'\n This will uninstall all indexreset tools.'
echo -n $'\n Are you sure you want to remove indexreset (yes/no)? '

read choice

if [ $choice = "y" ] || [ $choice = "yes" ] || [ $choice = "Yes" ]; then

  echo $'\n Removing all scripts...\n'

  sleep 1

  sudo rm -vf /usr/bin/indexreset /usr/bin/indexresetdaemon
  sudo rm -vf /Library/LaunchDaemons/indexresetlaunchd
  sudo rm -vf /Library/LaunchAgents/indexresetlaunchd
  sleep 1

  echo $'\n All files related to alfred-spotlight-restore\n Have been removed successfully.\n'

  sleep 1

else
  echo $'\n Uninstall cancelled...Nothing Removed!\n'
  sleep 1
fi

echo $' Exiting...\n'

sleep 1
