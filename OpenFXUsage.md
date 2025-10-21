# Reactor for OpenFX Usage

OpenFX is an image processing plug-in standard. Check out the [ASWF GitHub page](https://github.com/AcademySoftwareFoundation/openfx/) for more details about the OpenFX API.

Reactor Standalone now supports OpenFX plugins. You can access OpenFX compatible packages in Reactor Standalone by clicking on the word "OpenFX" that is accessible at the top of the Left Panel.

The GitLab repository that hosts the Reactor for OpenFX atom packages is located at:  
[https://gitlab.com/WeSuckLess/Reactor-for-OpenFX](https://gitlab.com/WeSuckLess/Reactor-for-OpenFX)

## Reactor Downloads Folder

With Reactor Standalone, the default "Reactor" folder location has changed so it points to the content that is stored in your user account's home folder at:

`$HOME/Reactor/`

Reactor Standalone downloads the OpenFX compatible content to the sub-folder located at:

`$HOME/Reactor/DeployOpenFX/OFX/Plugins`

## Environment Variables

The "OFX_PLUGIN_PATH" environment variable can be used to load OpenFX plugins directly from your Reactor Deploy folder:

On Windows this means the OFX_PLUGIN_PATH env var can be set to:  
`C:\Users\<Your User Account>\Reactor\DeployOpenFX\OFX\Plugins`

On macOS this means the OFX_PLUGIN_PATH env var can be set to:  
`/Users/<Your User Account>/Reactor/DeployOpenFX/OFX/Plugins`

On Linux this means the OFX_PLUGIN_PATH env var can be set to:  
`/home/<Your User Account>/Reactor/DeployOpenFX/OFX/Plugins`

### OFX Default Env Vars

Note: The traditional installation location for OpenFX plugins is typically:

**Windows**

`C:\Program Files\Common Files\OFX\Plugins`

**macOS**

`/Library/OFX/Plugins`

**Linux**

`/usr/lib/OFX/Plugins`  
or  
`/usr/local/lib/OFX/Plugins`  

## OFX Hosts

- Autodesk Flame has notes about [OpenFX support](https://help.autodesk.com/view/FLAME/2026/ENU/?guid=GUID-BA7353D9-9C4C-4F22-9F3B-E3F7D08A8E01).
- Assimilate Scratch has notes about [third party plugins](https://www.assimilatesupport.com/akb/KnowledgebaseArticle51006.aspx).
- BMD Resolve Free, Resolve Studio, Fusion Studio, and Fusion Render Node support the use of OpenFX plugins.
- BorisFX Silhouette has notes about [OpenFX support](https://support.borisfx.com/hc/en-us/articles/8803467755021-What-3rd-party-OFX-plug-ins-does-Silhouette-support).
- The Foundry Nuke software has [notes about loading OFX Plugins](https://learn.foundry.com/nuke/content/comp_environment/configuring_nuke/loading_ofx_plugins.html).
- Natron has an [OpenFX Arena GitHub repo](https://github.com/NatronGitHub/openfx-arena).
- SideFX Houdini has notes about [OpenFX usage in the Copernicus compositing context](https://www.sidefx.com/docs/houdini/copernicus/openfx.html#setting-up-the-openfx-environment-variable).

* * *

Note: BMD Fusion Studio is able to load OFX plugins from the "OFX_PLUGIN_PATH" path. It also supports the use of a custom OpenFX plugin environment variable "FUSION_OFX_PLUGIN_PATH" to load Fusion compatible OFX plugins in an isolated way from the rest of the OFX plugins you have installed.
