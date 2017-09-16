# Game Launcher AppleScript for Mac OS 9

## Description
A simple AppleScript to automate the launching of Mac OS 9 applications stored on disk images. When configured with specifics for an application, the script will mount the disk image, set the appropriate display settings (screen resolution and/or color depth), and launch the application. The script stays running and watches for the application to quit, at which point the script will clean up after itself by reverting to the initial display settings and unmounting the disk image. Tested on Mac OS 9.2.2 but may work on earlier versions of the classic Mac OS.


## Dependencies
**Jon's Commands 2.1.2** - http://www.applefritter.com/node/12927


## How to use
This AppleScript requires some customization before it can be used: 
1. Download [Jon's Commands](http://www.applefritter.com/node/12927) (Used for setting the display to the appropriate screen resolution and color depth.)
2. 

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
