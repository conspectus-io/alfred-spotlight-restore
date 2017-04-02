# Alfred & Spotlight Refresh Tool

### Many people use Alfred as the amazing productivity tool that it was designed to be. 
However, if you cannot launch all your apps from an Alfred search, you might be very frustrated. 
This script will fix your Alfred and can be run anytime, saving you the *terrible* pain of manually using your mouse/trackpad to open things...

Your volume index is how OS X catalogs the hierarchy of all your files and folders. Sometimes that index is not updated or generally does not match the actual paths of your files.

### This script force resets your volume's index, then rebuilds it.
Once rebuilt, Alfred & Spotlight will show the correct search results.

### For Those Unfamiliar With The Terminal:
* Select *Clone or download* on this repository and click *Download ZIP*
* Open alfred-spotlight-refresher-master.zip to unzip
* Open alfred-spotlight-refresher-master folder
* Double click indexreset and enter user password when prompted
* Enter "yes" to begin the refreshing process

### For CLI Lovers:
#### Run The Script:
```
$ git clone https://github.com/ev-dev/alfred-spotlight-refresher.git && cd alfred-spotlight-refresher
$ ./indexreset
```
#### Install Script As Command:
```
$ git clone https://github.com/ev-dev/alfred-spotlight-refresher.git && cd alfred-spotlight-refresher
$ ./install.sh
$ indexreset
```
#### Install Script With Scheduler (EXPERIMENTAL)
Caution this feature is not fully functional
```
$ git clone https://github.com/ev-dev/alfred-spotlight-refresher.git && cd alfred-spotlight-refresher/scheduler
$ ./install-with-launchd.sh
```
## Warning
This script does wipe your current index... nothing to be affraid of, none of your files or folders will be touched.
After script finishes, the actual index process can take a while depending on the amounts of files/folders you have and the relative size/speed of your drive.
You probably don't want to power off/reboot while the indexing process is in progress...if you do this will not harm anything but your index might not be complete.

## Note!
You can check the indexing progress by searching for something from Spotlight (not in Alfred). In the Spotlight's results you will see *Indexing...* with a progress bar.
Even though a full rebuild of the index may take a while, searching for apps and most files in Alfred is usually fixed right away. (Plus if you have an SSD, it should index in full within a minute).

## Uninstall Instructions
* Run ./uninstall-all.sh in Terminal or by double-clicking to open

## Other
I wrote this script because my Alfred constantly kept losing the ability to show applications. Even rebuilding the cache and reseting the index from within the Alfred settings menu would not fix the problem. (Ex. A search for 'Chrome' would not display the Google Chrome result).
