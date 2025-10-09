# Reactor for Houdini Usage

![Reactor for Houdini](Images/Reactor-for-Houdini.png)

You can access Houdini compatible packages in Reactor Standalone by clicking on the word "Houdini" that is accessible at the top of the Left Panel.

The GitLab repository that hosts the Reactor for Houdini atom packages is located at:  
[https://gitlab.com/WeSuckLess/Reactor-for-Houdini](https://gitlab.com/WeSuckLess/Reactor-for-Houdini)

Reactor Standalone downloads the SideFX compatible content to the folder:

```
Reactor:/DeployHoudini/
```

## Connecting Reactor to Houdini

The [Houdini documentation](https://www.sidefx.com/docs/houdini/basics/config_env.html) covers the process of editing environment variables through the use of a "houdini.env" file. Reactor for Houdini usage requires you to manually add the path to the Reactor downloaded Houdini content to the "HOUDINI_PATH" environment variable.

![Houdini.env](Images/Houdini-Env-File.png)

If you have Reactor set to download content to your user account's home folder in a subdirectory named "Reactor", then you would edit the Houdini.env file to append the following details to the text file:

(Information Still Being Validated)

Windows:

```
REACTORTREE=$USERPROFILE/Reactor/DeployHoudini/houdini
HOUDINI_PATH=$REACTORTREE\21.0;&
```

macOS:

```
REACTORTREE=$HOME/Reactor/DeployHoudini/houdini
HOUDINI_PATH=$REACTORTREE/21.0:&
```

Linux:

```
REACTORTREE=$HOME/Reactor/DeployHoudini/houdini
HOUDINI_PATH=$REACTORTREE/21.0:&
```
