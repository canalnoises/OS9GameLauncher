# Game Launcher AppleScript for Mac OS 9
Written by Isaac Nelson
Version 1.1 - 06 July 2017

A simple AppleScript to automate the launching of Mac OS 9 applications stored on disk images. When configured with specifics for an application, the script will mount the disk image, set the appropriate display settings (screen resolution and/or color depth), and launch the application. The script stays running and watches for the application to quit, at which point the script will clean up after itself by reverting to the inital display settings and unmounting the disk image.

Dependencies: Jon's Commands 2.1.2 - http://www.applefritter.com/node/12927

Tested on Mac OS 9.2.2
