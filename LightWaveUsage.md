# LightWave Usage

One of the new additions arriving with Reactor Standalone v4 is the creation of a GitLab hosted LightWave atom package repository:

[https://gitlab.com/WeSuckLess/reactor-for-lightwave](https://gitlab.com/WeSuckLess/reactor-for-lightwave)

This is part of an effort to support LightWave content installation using atom packages. The LightWave compatible material is downloaded by Reactor Standaline and saved to the folder:

```
Reactor:/DeployLW/
```

## Connecting Reactor to LightWave

Select the "File -> Connect Reactor to LightWave..." menu item.

![LW Menu](Images/LightWave-Connect-Menu.png)

A "Connect Reactor to LightWave" window will appear that guides you through the creation of custom LightWave program launching shortcuts.

![LW Connect-Window](Images/LightWave-Connect-Window.png)

## LightWave CLI Parameters

Included with Reactor are several pre-made LightWave launcher shortcuts that you can customize as needed.

### macOS Launchers

- Reactor:/Launcher/Hub Reactor.command
- Reactor:/Launcher/Layout Reactor.command
- Reactor:/Launcher/Modeler Reactor.command

### Windows Launchers

- Reactor:/Launcher/Hub Reactor.lnk
- Reactor:/Launcher/Layout Reactor.lnk
- Reactor:/Launcher/Modeler Reactor.lnk

### Custom LightWave Plugin Folders

When you start LightWave, the software allows you to specify the location of 3rd party plugin folder by entering the "-p" command-line flag followed by a folder locaton.

![LW Folder](Images/LightWave-Shortcut.png)

Shortcut Target Filepath Examples:

```
"C:\Program Files\LightWaveDigital\LightWave_2025.0.2\bin\Modeler.exe" -p%USERPROFILE%\Reactor\DeployLW
```

```
"C:\Program Files\LightWaveDigital\LightWave_2025.0.2\bin\Layout.exe" -p%USERPROFILE%\Reactor\DeployLW
```

```
"C:\Program Files\LightWaveDigital\LightWave_2025.0.2\bin\Hub.exe" -p%USERPROFILE%\Reactor\DeployLW
```

