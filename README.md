# Game Launcher AppleScript for Mac OS 9

## Description
A simple AppleScript to automate the launching of Mac OS 9 applications stored on disk images. When configured with specifics for an application, the script will mount the disk image, set the appropriate display settings (screen resolution and/or color depth), and launch the application. The script stays running and watches for the application to quit, at which point the script will clean up after itself by reverting to the initial display settings and unmounting the disk image. Tested on Mac OS 9.2.2 but may work on earlier versions of the classic Mac OS.


## Dependencies
### Required
- **Jon's Commands 2.1.2** - http://www.applefritter.com/node/12927

### Recommended
- **Virtual CD/DVD-ROM Utility** - http://macintoshgarden.org/apps/virtual-dvd-romcd-utility
- **ProcessInfo** - http://macintoshgarden.org/apps/processinfo-131

## How to use
This AppleScript requires some customization before it can be used. Follow the instructions below to make it work for your app.

### Getting Started
1. Download [Jon's Commands](http://www.applefritter.com/node/12927) (Used for setting the display to the appropriate screen resolution and color depth.)
2. Install Jon's Commands by dropping the "Jon's Commands" file on your System Folder. Confirm that you want to add the file to the Scripting Additions folder. It would also be a good idea to drop the "Jon's Commands Reference" file in the folder containing Script Editor so the documentation can be accessed within Script Editor.
3. Download the Game Launcher script from GitHub or copy the text in "Game Launcher [version] raw" and paste it into Script Editor.

### Customize for your app
1. If you don't use A-Dock, delete the blocks detecting and controlling A-Dock.
2. For the line: `open file "Macintosh HD:Applications:Disk Image.iso" --Mount the CD image`, replace the path with the path to your disk image. If your app is on a physical CD-ROM instead of a disk image, just delete this line.
3. Modify the next line with the optimum screen resolution and color depth for your app. Full-screen games for the classic Mac OS typically are designed to run at 640x480 or 800x600 and at either 256 colors (`color depth:8`) or thousands of colors (`color depth:16`).
4. Change `Mounted Disk Image:App Name` on the next line to the path to the application.
5. Jump to the line: `if exists process "App Name" then` and replace `App Name` with the name of your app's process. *Note: This is usually just the name of the app, but I've run into some that for whatever reason are different. The [ProcessInfo](http://macintoshgarden.org/apps/processinfo-131) utility can be helpful in finding the right name to use.*
6. In the line `eject disk "Mounted Disk Image"`, change `Mounted Disk Image` to the name of the disk image or CD as it appears on the desktop when mounted.
7. Save the script as an application.


## License

**Copyright 2017 Isaac Nelson**

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
