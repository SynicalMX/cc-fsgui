
# cc-fsgui

A file explorer with a gui for ComputerCraft.
## Installation

To install automatically, run the following terminal command inside of a computer.
```
wget run https://raw.githubusercontent.com/SynicalMC/cc-fsgui/main/install.lua
```

### Manual Installation
1. Download the projects zip file.
2. Locate the computer's content folder of which you are rying to install.
3. Make a new folder called 'fsgui'.
4. Drag the 'assets' folder and prgm.lua file into said folder.
5. Drag the files.lua into the root directory.
## Custom File Icons
Want your own file extensions to have support?
cc-fsgui has its own file extension just for this purpose!
You can define your own extension in a JSON format.

1. Create a new file with a .ext extension.
2. Format the JSON somewhat like this;
```json
{
    "icon": "iconPath",
    "exten": ".myextension"
}
```
3. Paint an icon, note that the maximum size is a 4x4 image!
4. Place your .ext file into the extensions folder. (If it does not exist make it.)
5. Load up the GUI.
