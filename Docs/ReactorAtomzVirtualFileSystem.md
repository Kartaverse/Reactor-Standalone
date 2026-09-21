# **Reactor Anywhere™**

## Atomz Virtual File System Extension Roadmap

> Reactor Roadmap (2026-09-21)  
> Written by: [Andrew Hazelden](mailto:andrew@andrewhazelden.com)  

[Reactor-Anywhere](https://github.com/Kartaverse/Reactor-Anywhere) is a new autumn 2026 timed project to convert the best design ideas from the “Reactor Classic” and “Reactor Standalone” package managers and their user interfaces, into a modern web based experience.

The design goal of this project is to allow the \~500K plus active users of Reactor Classic/Reactor Standalone to entirely skip the need to install the app or lua script. Access "Reactor Anywhere" via a web browser hosted [Progressive Web App (PWA)](https://en.wikipedia.org/wiki/Progressive_web_app) session, with the same quality of user interface experience and control.

🧠Wild Idea: Folders of Reactor atoms could be shown in a regular desktop / mobile folder browsing window as a virtual “Reactor” drive. This would look visually like a mountable file system via a custom C++ based extension.💡

# What would a Reactor (virtual) drive mount even look like?

The key concept to solve is how to make working with downloaded zipped atoms easier, and far more effective, on all major desktop, mobile, and XR HMD based  operating systems . We have the option to do things in two parts:

1. Primarily we roll out the browser-session based Reactor Anywhere web app. It matches the Reactor Standalone beta app features.  
2. Then we offer a companion per-operating-system based native file browser “user-space” file system extension. This would be a C++ developed “Reactor Atomz VFS (Virtual File System)” add-on.

# How would this work under the hood?

The file system extension gives us the cool ability, on each operating system, to have the exact same user experience, look and feel as the big-boys get in their Google Drive or iCloud Drive clients. Those apps provide customers with a OS level file browser add-on that runs directly inside of Windows, Linux, macOS, iOS, and Android “desktop usage” sessions.

This virtual file system approach would finally streamline the process of looking at all those “loose atom files” in a locally downloaded folder, when using many zipped atom packages.

You could even have a “Reactor” side panel view attached to the OS native desktop folder browsing window as a collapsible tab. It could be used to intuitively see the atom json file package details, including a fully modern HTML5 based atom description rendering context.

# Can I truly skip the process of individually unzipping all of the Reactor Atom .zip compressed packages, or even having to install the atom sourced content as loose files?

It is technically possible that the Reactor supported host DCC apps could “see” the zipped atoms as native installed files, even though the are streamed live-on-the-fly via the zlib library from the individual .zip (store compressed) files in the “Reactor:/Atomz/“ folder.

This is feasible since a virtual file system allows “arbitrary software defined” ideas of what the data source is for the mounted folder view. It can stream data from any endpoint to the folder browsing window, including just-in-time file syncing and downloads done on-demand. With the usual “Keep Files” and “Remove Files” contextual menu options.

## Virtual File System Links:

* [https://en.wikipedia.org/wiki/Virtual\_file\_system](https://en.wikipedia.org/wiki/Virtual_file_system?wprov=sfti1)  
* [https://en.wikipedia.org/wiki/Filesystem\_in\_Userspace](https://en.wikipedia.org/wiki/Filesystem_in_Userspace?wprov=sfti1)  
* [Linux Fuse User-Space Filesystem](https://github.com/libfuse/libfuse)  
* [Windows Projected File System (ProjFS)](https://learn.microsoft.com/en-us/windows/win32/projfs/projected-file-system)  
* [Using the file system effectively | Apple Developer Documentation](https://developer.apple.com/documentation/foundation/using-the-file-system-effectively)

