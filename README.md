# Alfred/Spotlight Restore Tool

### This script force resets the index of your volume and then rebuilds the index so that Alfred/Spotlight can correctly show you results of a given search. 

### Many people use Alfred as the amazing productivity tool that it was designed to be. 
However, if you cannot launch all your apps from an Alfred search, you might be very frustrated. 
This script will fix your Alfred and can be ran anytime, saving you the *terrible* pain of manually using your mouse/trackpad to open things...

If your Alfred acts up as much as mine, add script to your path to easily run as the command 'indexreset'.

### For Those Unfamiliar With Command Lines:
*In Your Terminal Run:*
git clone https://github.com/ev-dev/alfred-spotlight-restore.git

Your volume index is how OS X catalogs the hierarchy of all your files and folders. Sometimes that index is not updated or generally does not match the actual paths of your files.

* **Warning:** This script does wipe your current index... nothing to be affraid of, none of your files or folders will be touched.

* **Alert:** After script finishes, the actual index process can take a while depending on the amounts of files/folders you have and the relative size/speed of your drive. You probably don't want to power off/reboot while the indexing process is in progress...if you do this will not harm anything but your index might not be complete.

* **Note:** You can check the indexing progress by searching for anything in Spotlight (Not in Alfred as it will not show progress bar) and in the Spotlight results you will see "Indexing..." with a progress bar. Even though full rebuild of the index may take a while, the searching for apps and most files in Alfred are fixed right away. (Btw..SSDs usually index within a minute).

Script was written because my Alfred constantly kept losing the ability to show applications. Even rebuilding the cache and reseting the index from within the Alfred settings menu, would not fix the problem. (Ex. A search for 'Chrome' would not display the Google Chrome result).
