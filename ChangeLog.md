# Reactor Standalone Change Log

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

The atom list view checkbox column for the installed state can now be sorted by ascending or descending approaches

The Reactor "License Accepted" state is written to the reactor preferences. This means you won't be nagged in the future.

When the atom "Version" info is shown in the atom list it is formatted to use a period for the decimal place regardless of the OS localization settings. This solves an earlier issue where commas would appear in regions where floating point numbers are shown with a comma for the decimal place.

The "Cancel" button was renamed to "Clear Download Queue".

The "Connect Reactor to Fusion" script output, when run in the Fusion Console window now completes with the text "Reactor is now connected, restart Resolve/Fusion to finish the installation".

Added a version info field to the bottom right corner of the window.

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
