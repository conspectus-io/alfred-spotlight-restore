# Alfred/Spotlight Restore Tool

### Many people use Alfred as the amazing productivity tool that it was designed to be. 
However, if you cannot launch all your apps from an Alfred search, you might be very frustrated. 
This script will fix your Alfred and can be ran anytime, saving you the *terrible* pain of manually using your mouse/trackpad to open things...

### This script force resets your volume's index then rebuilds it so that Alfred & Spotlight will show you the correct results of a given search. 

#### To Run Script
#####In Your Terminal Run:
```
$ git clone https://github.com/ev-dev/alfred-spotlight-restore.git
$ cd alfred-spotlight-restore
$ ./indexreset
```
#### To Install Script As Command
```
$ git clone https://github.com/ev-dev/alfred-spotlight-restore.git
$ cd alfred-spotlight-restore
$ ./install.sh
$ indexreset
```

#### For Those Unfamiliar With Command Lines:
* Select *Clone or download* on this repository
* 

#### Your volume index is how OS X catalogs the hierarchy of all your files and folders. Sometimes that index is not updated or generally does not match the actual paths of your files.

## Warning
This script does wipe your current index... nothing to be affraid of, none of your files or folders will be touched.

After script finishes, the actual index process can take a while depending on the amounts of files/folders you have and the relative size/speed of your drive. You probably don't want to power off/reboot while the indexing process is in progress...if you do this will not harm anything but your index might not be complete.

## Note!
You can check the indexing progress by searching for anything in Spotlight (not in Alfred) and in the Spotlight results you will see *Indexing...* with a progress bar. Even though a full rebuild of the index may take a while, the searching for apps and most files in Alfred are fixed right away. (Also, SSDs usually index within a minute).

## Other
Script was written because my Alfred constantly kept losing the ability to show applications. Even rebuilding the cache and reseting the index from within the Alfred settings menu, would not fix the problem. (Ex. A search for 'Chrome' would not display the Google Chrome result).
