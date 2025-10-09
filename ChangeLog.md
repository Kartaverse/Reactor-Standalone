# Reactor Standalone Change Log

## 2025-09-25 Beta 33

Added Houdini as a new Reactor Standalone repo source. The atom packaged content is sourced from the "[Reactor for Houdini](https://gitlab.com/WeSuckLess/Reactor-for-Houdini)" GitLab repo.

Removed the List panel tooltip text so it doesn't distract you when selecting atoms.

Updated Reactor Classic from v3.12 to v4. Added a new "Reactor > Open Reactor Standalone..." menu item. This will allow you to launch Reactor Standalone from inside of a Resolve/Fusion session. If you do not have Reactor Standalone installed you will see a web browser launch that redirects you to the Reactor Standalone GitHub repo's "Releases" page.

## 2025-09-25 Beta 32

Improved Atom updating/removing code to use on-disk "Reactor:/Deploy/JSON/" atom file if it exists. This improves the way legacy atoms are updated.

When switching active repositories, the Left panel category list is rebuilt automatically

## 2025-09-24 Beta 31

Clicking the Reactor logo in the Info bar zone now displays the Preferences window

The List panel now has a horizontal scrollbar

## 2025-09-23 Beta 30

The Console window is now a floating window so it stays ontop of the other windows

When text is appended to the Console window, the view scrolls to the bottom row automatically

Added a "Tools > Reset Settings to Defaults" menu item that allows you to revert any changes that have been applied to the Reactor preferences file.

Solved a List Panel row selection highlighting issue. This allows coloured background cell shading to be used. Also corrected a Left Panel row selection issue for the Repo, State, and Category regions.

Shrunk the menu item based icons down to 28x28px

Improved the visual feedback for the Left Panel based Reactor "Downloading" state number counter

Updated the "Reactor-for-Lightwave" GitLab repo to include the "HelloReactor" atom package. The Reactor Standalone "Repo" List now works with content from the "Reactor-for-Lightwave" GitLab repo.

Added a "Script > LightWave > " menu item that allows you to run the bundled LightWave launcher (.lnk and .sh) shortcut files. The shortcuts are stored inside the C:\Program Files\Reactor\Reactor Resources\" folder on Windows, and inside the "/Applications/Reactor.app/Contents/Resources/" folder on macOS. Editing the shortcut files allows you relink the launcher shortcuts to point at a different LightWave release.

Created a Lua script for Reactor Classic. It provides a "Script > Reactor > Open Reactor Standalone..." menu item for use inside of Fusion Studio. This allows you to launch the Reactor Standalone window from inside of Fusion.

## 2025-09-22 Beta 29

Refactored USB/Bluetooth device input handling code into action/events. Added Xbox Wireless Controller support.

Refactored the "Infobar Event Details" code and moved the default level to "low"

When downloading queue tasks complete the status message "Ready" is shown in the info bar.

Improved error handling when changing Reactor Install PathMap preferences

"Reactor Preferences" window is now called "Reactor Settings" on macOS

Adjusted "Clear Download Queue" button code so it no longer requires multiple clicks to purge queued items

## 2025-09-22 Beta 28 Event Details

Added a new Console window. It is displayed using the "Scripts > Show Console" menu item, or the  "Shift + O" hotkey. The Console window uses the "Info Bar Event Detail" logging preference to define how much text is written to window.

## 2025-09-22 Beta 27 Event Details

The Reactor Standalone preferences window has a new "Info Bar Event Detail" multi-button control. It lets you adjust the logging detail that is output to the Info bar line at the bottom left of the main window, and to the standard IO output in the Terminal session.

You have the option to set the "Info Bar Event Detail" control to "None", "Low", "Medium", and "High". Most generic error messages are set to output logging detail at the "Medium", and "High" state.

## 2025-09-21 Beta 26

Solved a progress bar flickering issue that occurred when a series of small atom packages were downloading and the progress bar control was hidden/shown

The State and Category "item count" numbers are now right-justified.

List panel heading row sort direction "chevrons" have their vertical height positioned in the middle of the cell.

The Search button turns yellow when active (meaning there is text entered in the search text field).

LiveSearch preference saving updated. On macOS, a"Recent Items" list of search keywords can be selected by clicking on the search field magnifying glass.

A "Downloads Finished" message is shown in the info bar when the full list of download queue tasks are completed

## 2025-09-21 Beta 25 Changes

Added a "Help > Check for Updates..." menu item. It goes to the Reactor Standalone GitHub website's releases page where you can download the latest builds.

Added animated sprites to the download queue status info shown in the List Panel

## 2025-09-20 Beta 24 UI Tweaks

License dialog setting remembered correctly

Pushed most error dialog messages into the "info bar" section at the lower left of the user interface

Solved app icon color tint issue

Added custom UI controls for buttons, dropdowns, and progressbars

## 2025-09-09 Beta 23 UI Tweaks

Pressing the Delete or Backspace key with atoms selected in the list panel will remove the atoms.

Improved dark mode UI handling

Added a Highlights Panel window with news and info

Atom Install checkboxes switched to a custom checkbox widget

"Close Window" menu item now tracks the window name of the foreground dialog 

Search Button enabled when there is text in the search field

Added a "Scripts" menu item named "USB Input Devices". This helps with scanning a new input device to discover the control mapping.

Added a "Show About Reactor" icon to the top left of the window

Added custom atom install checkboxes

Left sidebar UI overhaul

Added an "Any Repo" ListBox on the left side of the window that allows you to switch between reactor repo sources. This enables Reactor to work with user supplied repo content, as well as act as an atom package installation host for different VFX tools like LightWave.

## 2025-09-02 Beta 22 UI Tweaks

Adjusted the Reactor window UI layout. There is now an "Any State" and "Any Category" set of Listboxes on the left side of the window.

Moved the download progress bar next to the info text line at the bottom of the window.

Added Command+W/Control+W as the window close hotkey for the various Reactor dialogs.

Adjusted the Reactor 4 release edition name in the about dialog.

## 2025-09-01 Beta 21 Windows x64 Support

Reactor Standalone for Windows x64 is now available as part of the private beta 21 release.

Note: To get the first build of Reactor for Windows v4B21 to work, I had to temporarily turn off the background synchronous downloading mode. This means the downloads are still put into the download queue but the download task itself is slightly blocking at the individual per-atom package download level as it uses asynchronous transfers. I am hopeful I can have this improved so Windows users get the same fluid download mode that is available on macOS and Linux.

## 2025-09-01 Beta 21 Linux x64 Support

Reactor Standalone for Linux x64 is now available as part of the private beta 21 release. The Linux support should work without too much issue on the same Linux OS's that can also run Resolve/Fusion. The initial Linux build has been tested on MintOS Linux 20.3 (which is a Ubuntu Linux variant).

## 2025-08-30 Beta 20 Atomz Favorite List Import 

Reactor Standalone supports the import of saved atomz list (.lst) text files. This provides a quick way to add a pre-selected list of atom files to the download queue and install them. If an atom package mentioned in the .lst file has already been installed, it will not be re-downloaded and is skipped on import.

The atomz list import task can be done using a drag and drop approach. Simply drag the .lst file onto the Reactor program icon, or the Reactor dock icon and the atom packages specified in the .list file will be added to the download queue. Alternatively, the "File -> Tools -> Open Atoms List (.lst) File" menu item can be used to import the package list text file.

As a reminder, the "File -> Tools -> Save Atoms List (.lst) File" menu item is used to generate a list of the currently installed atom package files. This document  is saved to "Reactor:/Atomz/Atom Packages.lst".

Here is an example of what the contents of an atomz list (.lst) text file looks like if you wanted to quickly install all of the Vonk Ultra packages:

```
com.AndrewHazelden.JSONFromFile.DragDrop.zip
com.AndrewHazelden.vTextFromFile.DragDrop.zip
com.DunnLewis.Extended_Wave.zip
com.Exosite.LuaYAML.zip
com.KyleSmith.utf8.zip
com.ManoelCampos.xml2lua.zip
com.MichaelLutz.LuaMatrix.zip
com.RXI.Flux.zip
com.RXI.Lume.zip
com.Vonk.Comps.BikeDashboard.zip
com.Vonk.Comps.MissionControl.zip
com.Vonk.Fusion3D.zip
com.Vonk.FusionArray.zip
com.Vonk.FusionBase64.zip
com.Vonk.FusionCBOR.zip
com.Vonk.FusionColor.zip
com.Vonk.FusionFileSystem.zip
com.Vonk.FusionGradient.zip
com.Vonk.FusionGuide.zip
com.Vonk.FusionImage.zip
com.Vonk.FusionJSON.zip
com.Vonk.FusionMatrix.zip
com.Vonk.FusionMeta.zip
com.Vonk.FusionMograph.zip
com.Vonk.FusionMTLX.zip
com.Vonk.FusionNumber.zip
com.Vonk.FusionPoint.zip
com.Vonk.FusionScriptVal.zip
com.Vonk.FusionShape.zip
com.Vonk.FusionText.zip
com.Vonk.FusionUSD.zip
com.Vonk.FusionVector.zip
com.Vonk.FusionYAML.zip
com.Vonk.Scripts.zip
com.Vonk.VonkUltra.zip
com.wesuckless.Wave.zip
com.Zash.Lua-CBOR.zip
```

The Reactor:/ URL handler now scrolls the atom list to the selected package. It flips the category back to "All", the Show radio button to "All", and clears out any existing search field text.

## 2025-08-30 Beta 19 Live Search

A "Live Search" preference was added. This allows you to decide if you want to search as individual letters are typed.

## 2025-08-30 Beta 18 Reactor Window and Menu UI Overhaul

Updated version info field

## 2025-08-30 Beta 17 Reactor Window and Menu UI Overhaul

Reactor window layout and menu hierarchy overhaul

Reactor Icons are now Hi-DPI compatible with x1, x2 and x3 sized resources

Tooltips added for Reactor Standalone UI elements

The atom list view checkbox column for the installed state can now be sorted by ascending or descending approaches.

The Reactor "License Accepted" state is written to the reactor preferences. This means you won't be nagged in the future.

When the atom "Version" info is shown in the atom list it is formatted to use a period for the decimal place regardless of the OS localization settings. This solves an earlier issue where commas would appear in regions where floating point numbers are shown with a comma for the decimal place.

The "Cancel" button was renamed to "Clear Download Queue".

The "Connect Reactor to Fusion" script output, when run in the Fusion Console window now completes with the text "Reactor is now connected, restart Resolve/Fusion to finish the installation".

Added a version info field to the bottom right corner of the window

## 2025-08-28 Beta 16 Save Atoms Package List

There is a new "File -> Tools -> Save Atoms List (.lst) File" menu item that has the hotkey "Command + S" mapped to it. This feature allows you to export a list of the actively installed packages. The menu item works by saving a text document with the .lst file extension to "Reactor:/Atomz/Atom Packages.lst". The .lst document is located in the same folder where the Atomz zipped package archives are downloaded to.

The atomz approach allows Reactor to work with artist systems and render nodes in an MPAA TPN style limited network access studio environment. You can use the .lst file and the atomz zip archives to do an offline air-gapped install of Reactor atom content via the "Atomz Expand/Atomz Create" tools which allows for .lst based drag and drop installation support. You don't need to be on the internet to access the ready to deploy atomz packages on other systems or to a network mapped NAS drive, and your IT team can review the pre-selected atom packaged content in advance of it becoming available to artists.

There is a new "File -> Tools -> Show Config Folder" menu item that makes it easy to navigate into the folder where Reactor downloaded Fusion .fu/.fzu files are stored. The Config folder is used to add new user defined menu items to Fusion Studio, as well as adding Fusion hotkeys, and action/event callback hooks.

The Repo popup menu at the top/left of the Reactor window now has a new "Uninstalled" option that shows only the atom packages that are NOT installed on your system. This speeds up hunting for atom packaged content you have not tried before.

## 2025-08-25 Beta 15 Universal macOS Binary

Reactor.app is now available as a Universal macOS binary compiled application. It works on macOS 10.14 and higher.

The "Reactor Install PathMap" control now includes a new "Documents" multi-button option that creates the Reactor installation directory inside your user account's documents folder:

    /Users/<Your User Account>/Documents/Reactor/

## 2025-08-25 Beta 14 Reactor Custom Install Location Support

The "File -> Settings..." menu item can be used to change the Reactor downloaded content installation location using the "Reactor Install PathMap" control. You can select one of the preset options like "Home", "Resolve Prefs", "Fusion Prefs", or "Custom".

Selecting the "Home" option means the content will be saved in a Reactor folder added to your user account home folder which is typically known as "$HOME".

Selecting the "Custom" option means Reactor will be saved in the Reactor folder that you define. Make sure to have "Reactor" as part of the final folder path you enter if you want this same folder to be compatible with the classic version of Reactor.lua.

The "Mark Atoms as New for ___ Days" option in the settings allows you to control if recently added atom packages will be shown in the atoms list view with the green colored text, and be visible in the "New" view mode.

## 2025-08-19 Beta 10 USB and Bluetooth Gamepad Support

The Reactor Standalone GUI can now be controlled by USB and Bluetooth Gamepad devices like a [Sony DualSense Wireless Controller](https://www.playstation.com/en-us/support/hardware/ps5-button-functions/) or a [Kinesis JoyStick Controller](https://kinesis-ergo.com/shop/jsb-3-pedal/). This makes it super fast to blaze through the atom package listings and install/remove items.

## 2025-08-18 Beta 9 Adds Clickable Deploy File Links

In the atom description area, you can now click on any of the deploy files listed, and the weblink will take you directly to the resource on GitLab so you can inspect the content before downloading and installing it. If you want to navigate from the GitLab page, back to the original atom description content, just click on the atom package's row entry in the atom list area.

## 2025-08-17 Beta 8 Adds Legacy Reactor Side-grading

A pre-existing (Legacy) Reactor install can be migrated using the new "File -> Tools -> Import Legacy Reactor Atoms" menu entry.

A dialog asks you "Do you want to import atom packages from a previous Reactor installation?"

You can choose "Import Resolve Free/Studio Atoms",  "Import Fusion Studio Atoms", or "Cancel".

The legacy atom packages that are found in the "Reactor:/Deploy/Atoms/" folder from your previous Reactor setup are then added to the Reactor Standalone download queue. In a few moments that content will be re-downloaded and ready for use.
