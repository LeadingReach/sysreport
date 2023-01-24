#!/bin/bash

# Check if the LaunchDaemon is running
if ! pgrep -q -f "com.leadingreach.sysreport"; then
    # If it's not running, start it
    launchctl load /Library/LaunchDaemons/com.leadingreach.sysreport.plist
else
    # If it's running, restart it.
    launchctl unload /Library/LaunchDaemons/com.leadingreach.sysreport.plist
    launchctl load /Library/LaunchDaemons/com.leadingreach.sysreport.plist
fi

man -d
