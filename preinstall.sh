#!/bin/bash

if [[ -f /Library/LaunchDaemons/com.leadingreach.sysreport.plist ]]; then
    launchctl unload /Library/LaunchDaemons/com.leadingreach.sysreport.plist
    rm /Library/LaunchDaemons/com.leadingreach.sysreport.plist
fi