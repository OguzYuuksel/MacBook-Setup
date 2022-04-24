# Description
**Setup for your brand new MacBook!**

## Mac Installations
- [Xcode](https://developer.apple.com/xcode/)
- Installation script
  ```console
  #!/bin/bash

  # Install Homebrew
  # https://brew.sh/
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Install Atom
  # https://atom.io/
  brew install --cask atom

  # Install Git
  # https://git-scm.com
  brew install git

  # Install Oh My Zsh
  # https://github.com/ohmyzsh/ohmyzsh/
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Install WhatsApp
  # https://www.whatsapp.com/
  brew install --cask whatsapp

  # Install GitKraken
  # https://www.gitkraken.com/
  brew install --cask gitkraken

  # Install DB Browser for SQLite
  # https://sqlitebrowser.org/
  brew install --cask db-browser-for-sqlite

  # Install Realm Studio
  # https://realm.io/products/realm-studio/
  brew install --cask mongodb-realm-studio

  # Install Windscribe
  # https://windscribe.com/
  brew install --cask windscribe

  # Install Zoom
  # https://www.zoom.us/
  brew install --cask zoom

  # Install Discord
  # https://discord.com/
  brew install --cask discord

  # Install Paintbrush
  # https://paintbrush.sourceforge.io/
  brew install --cask paintbrush

  # Install Inkscape
  # https://inkscape.org/
  brew install --cask inkscape

  # Install Grammarly Desktop
  # https://www.grammarly.com/desktop
  brew install --cask grammarly-desktop
  
  # Install Java? Check if it is correct.
  # brew install java # For Firebase Emulators

  # Configurations
  ZSHRC=~/.zshrc
  
  ## Configure Zsh
  HOMEBREW_CONFIG="export PATH=\"\$PATH:/opt/homebrew/bin/\""
  echo $HOMEBREW_CONFIG >> $ZSHRC

  ## Configure Atom
  ## Atom Editor -> Atom -> Install Shell Commands
  ATOM_CONFIG="export EDITOR=\"atom -w\""
  echo $ATOM_CONFIG >> $ZSHRC

  ## Configure Git
  git config --global core.editor "atom --wait"
  git config --global user.name "Oguz Yuksel"
  git config --global user.email oguz.yuuksel@gmail.com

  ## Configure Github
  ### https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/checking-for-existing-ssh-keys # GitHub Setup SSH Configuration
  ### https://www.udemy.com/course/git-and-github-bootcamp/learn/lecture/24911572
  ### https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token # Creating a Personal Access Token to reach private libraries via SPM
  
  ## Configure Xcode
  ### Custom File Header
  IDE_FILE_TEMPLATE=~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist
  if [ ! -f "$IDE_FILE_TEMPLATE" ]; then
  touch $IDE_FILE_TEMPLATE
  cat >$IDE_FILE_TEMPLATE <<EOL
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
  </dict>
  </plist>
  EOL
  fi

  plutil -insert FILEHEADER -string " Project: ___PROJECTNAME___
  // File: ___FILENAME___
  // Copyright © ___YEAR___ Oguz Yuksel. All rights reserved.
  //
  // Created by Oguz Yuksel(oguz.yuuksel@gmail.com) on ___DATE___.
  //" $IDE_FILE_TEMPLATE
  
  source $ZSHRC
  ```
## System Configuration

### Wallpapaer
- Download [Wallpaper](Resources/wallpaper.jpg), two finger click and tap on "Set Desktop Picture".

> Wallpaper will not be seen on lock screen because SSD is encrypted
> and files isn't reachable until user logged in.
> to see your wallpaper on lock screen, you should disable this feature.
> System Preferences -> Security & Privacy -> FileVault -> "Turn Off FileVault"

### Safari Bookmarks
- UI Design
  - [Human Interface Guidelines - Design - Apple Developer](https://developer.apple.com/design/human-interface-guidelines/)
  - [iOS Resolution // Display proerties of every iPhone, iPad and iPod touch Apple ever made](https://www.ios-resolution.com)
  - [iOS Fonts](http://iosfonts.com)
  - [The iOS Font Size Guidelines (Updated for iOS 15) – Learn UI Design](https://learnui.design/blog/ios-font-size-guidelines.html)
  - [Color wheel - color theory and calculator | Canva Colors](https://www.canva.com/colors/color-wheel/)
  - [Opposite Color Tool - ColorTools.net |](https://www.colortools.net/color_complementary.html)
- Online Tools
  - [MockUPhone](https://mockuphone.com)
  - [App Icon Generator](https://appicon.co)
  - [gitignore.io - Create Useful .gitignore Files For Your Project](https://www.toptal.com/developers/gitignore)
- Learning
  - [Design+Code - Learn to design and code React and Swift apps](https://designcode.io)
  - [Learn SwiftUI - Kavsoft](https://kavsoft.dev)
  - [GitHub - octoblu/gateblu-ios: Mobile gateway to manage BLE enabled devices and plugins in IOS](https://github.com/octoblu/gateblu-ios)
- Documentation
  - [Text macros reference - Xcode Help](https://help.apple.com/xcode/mac/current/#/dev7fe737ce0)
  - [Customize text macros - Xcode Help](https://help.apple.com/xcode/mac/current/#/dev91a7a31fc)
  - [Markup Formatting Reference: Markup Overview](https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/)
  - [Punctuation Checker – Free Grammar And Punctuation Check!](https://www.grammarlookup.com)

## Xcode Configuration
- Xcode -> Preferences -> Themes -> Classic (Dark)
- Add MVVM file templates to the XCode.

  Open terminal and try to reach below directories if any of them doesn't exist then create by using `mkdir` command.
  ```console
  cd ~/Library/Developer/Xcode/
  cd Templates
  cd File\ Templates
  ```
  After creating File Templates directory copy MVVM directory into your *File Templates* **[MVVM Directory](MVVM/)**

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
