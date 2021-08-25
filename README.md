# Description
**Setup for your brand new MacBook!**

## Mac Installations
- [Xcode](https://developer.apple.com/xcode/)
- [Inkspace](https://inkscape.org)
- [GitKraken](https://www.gitkraken.com)
- [Atom](https://atom.io) (save in the desktop)
- [Whatsapp Desktop](https://www.whatsapp.com/download)
- [Database Browser](https://sqlitebrowser.org/dl/)
- [Windscribe](https://tur.windscribe.com)
- [Zoom](https://zoom.us/download)
- [Discord](https://discord.com)
- [Office365](https://www.office.com/?auth=2&home=1)

## Xcode Configuration
- Xcode -> Preferences -> Themes -> High Contrast (Dark)

- Check if **IDETemplateMacros.plist** exists via Terminal
 ```console
 open ~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist
 ```
if exists add below between `<dict> </dict>`
```console
<key>FILEHEADER</key>
<string>
// Project: ___PROJECTNAME___
// File: ___FILENAME___
// Copyright © ___YEAR___ Oguz Yuksel. All rights reserved.
//
// Created by Oguz Yuksel(oguz.yuuksel@gmail.com) on ___DATE___.
//
</string>
 ```
If not exists

 ```console
 touch ~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist
 open ~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist
 ```
Then paste below inside **IDETemplateMacros.plist**
 ```console
 <?xml version="1.0" encoding="UTF-8"?>
 <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 <plist version="1.0">
 <dict>
 <key>FILEHEADER</key>
 <string>
 // Project: ___PROJECTNAME___
 // File: ___FILENAME___
 // Copyright © ___YEAR___ Oguz Yuksel. All rights reserved.
 //
 // Created by Oguz Yuksel(oguz.yuuksel@gmail.com) on ___DATE___.
 //
 </string>
 </dict>
 </plist>
```

## Terminal Installations
 1. [Homebrew](https://brew.sh)
 2. [OhMyZsh](https://github.com/ohmyzsh/ohmyzsh/)
 3. [Git](https://git-scm.com/download/mac)

### Terminal Configuration
```console
open ~/.zshrc
```
*add `export EDITOR="atom -w"` to the file and save it. Then Atom Editor -> Atom -> Install Shell Commands*

### Git Configuration
```console
git config --global core.editor "atom --wait"
git config --global user.name "Oguz Yuksel"
git config --global user.email oguz.yuuksel@gmail.com
```

### GitHub Configuration
[GitHub Setup SSH Configuration](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/checking-for-existing-ssh-keys) - [Video](https://www.udemy.com/course/git-and-github-bootcamp/learn/lecture/24911572#overview)

## Useful Commands

 - **`ls`** --- *shows contents of current directory*
	 - **`-a`** --- *shows contents of current directory included hidden files.*
	 - **`<directoryname>`** --- *shows contents of /directoryname.*
	 - **`<directoryname1>/<directoryname2>`** --- *shows contents of /directoryname1/directoryname2.*

 - **`open .`** --- *opens current directory on finder*
	 - **`<directoryname>`** --- *opens directoryname in current directory on finder*
	 - **`<directoryname1>/<directoryname2>`** --- *opens /directoryname1/directoryname2 in current directory on finder.*

 - **`clear`** --- *clears terminal.*

 - **`pwd`** --- *prints out working directory.*

 - **`cd`** --- *changes directory*
	 - **`<directoryname>`** --- *goes into /directoryname directory*
	 - **`..`** --- *goes one directory level above.*

 - **`touch`** --- *creates file*
 	 - **`<filename>`** --- *creates file in the current directory*
 	 - **`<filename1> <filename2> <filename3>`** --- *creates files in the current directory*
	 - **`<directoryname>/<filename>`** --- *creates file in the /directoryname directory*

 - **`mkdir`** --- *creates directory*
 	 - **`<directoryname>`** --- *creates directory in the current directory*
 	 - **`<directoryname1> <directoryname2> <directoryname3>`** --- *creates directories in the current directory*
	 - **`<directoryname1>/<directoryname2>`** --- *creates file in the /directoryname1 directory*

 - **`rm`** --- *removes file*
 	 - **`<filename>`** --- *removes file*
 	 - **`-rf <directoryname>`** --- *removes directory*

 - **`mv`** --- *renames file*
 	 - **`<oldfilename> <newfilename>`** --- *renames file*

 - **`q`** --- *quits when you see* `(END)`
