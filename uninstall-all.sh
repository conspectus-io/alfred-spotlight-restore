#!/bin/bash

echo $'\n Removing all scripts...\n'

sleep 1

sudo rm -vf /usr/bin/indexreset /usr/bin/indexresetdaemon
sudo rm -vf /Library/LaunchDaemons/indexresetlaunchd
sudo rm -vf /Library/LaunchAgents/indexresetlaunchd

sleep 1

echo $'\n All files related to alfred-spotlight-restore\n Have been removed successfully.\n'

sleep 1

echo $' Exiting...\n'

sleep 1
