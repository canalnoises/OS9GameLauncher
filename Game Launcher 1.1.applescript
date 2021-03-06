set monitorSettings to screen list starting with main screen --Store current display settings

--Check to see if A-Dock is running. If so, remember it and then quit A-Dock.
tell application "Finder"
	if exists process "A-Dock" then
		set dockRunning to "1"
		tell application "A-Dock" to quit
	else
		set dockRunning to "0"
	end if
end tell

tell application "Finder"
	open file "Macintosh HD:Applications:Disk Image.iso" --Mount the CD image
	set screens to {screen size:{640, 480}, color depth:8} --Set the display resolution and color depth
	open file "Mounted Disk Image:App Name" --Launch app
end tell

--Watch for app to quit
set appRunning to "1"
repeat until appRunning is "0"
	tell application "Finder"
		if exists process "App Name" then
			set appRunning to "1"
		else
			set appRunning to "0"
		end if
	end tell
end repeat

set screens to monitorSettings --Revert to original display settings

--Relaunch A-Dock if it was running before.
if dockRunning is "1" then
	tell application "A-Dock"
		activate
	end tell
end if

--Eject the CD image:
tell application "Finder"
	eject disk "Mounted Disk Image"
end tell
