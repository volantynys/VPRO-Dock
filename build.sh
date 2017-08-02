#!/bin/bash

checkSetupDone()    {

    if [ -f $HOME/Library/Preferences/com.corp.docksetup.plist ] ; then
        exit 0
    fi

}

configureDefaultDock()  {
/usr/local/bin/dockutil --remove all

/usr/local/bin/dockutil --add '/Applications/Launchpad.app' --position 2
/usr/local/bin/dockutil --add '/Applications/Calendar.app' --position 3
/usr/local/bin/dockutil --add '/Applications/Safari.app' --position 4
/usr/local/bin/dockutil --add '/Applications/Firefox.app' --position 5
/usr/local/bin/dockutil --add '/Applications/Microsoft Outlook.app' --position 6
/usr/local/bin/dockutil --add '/Applications/Microsoft Word.app' --position 7
/usr/local/bin/dockutil --add '/Applications/Microsoft Excel.app' --position 8
/usr/local/bin/dockutil --add '/Applications/Microsoft Powerpoint.app' --position 9
/usr/local/bin/dockutil --add '/Applications/Skype For Business.app' --position 10
/usr/local/bin/dockutil --add '/Applications/Microsoft Remote Desktop.app' --position 11
/usr/local/bin/dockutil --add '/Applications/App Store.app' --position 12
/usr/local/bin/dockutil --add '/Applications/Self Service.app' --position 13
/usr/local/bin/dockutil --add '/Applications/System Preferences.app' --position 14
touch $HOME/Library/Preferences/com.corp.docksetup.plist
}

checkSetupDone
configureDefaultDock

exit 0