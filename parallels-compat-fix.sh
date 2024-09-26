#!/bin/bash

DaemonDir=~/Library/LaunchAgents
DaemonName=com.parallels.compatfix
Daemonfile=$DaemonName.plist

cat > $Daemonfile << EOF
<?xml version="1.0"encoding="utf-8"?>
<!DOCTYPE plist PUBLIC"-//Apple//DTD PLIST 1.0//EN"
"http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>KeepAlive</key>
        <false/>
        <key>RunAtLoad</key>
        <true/>
        <key>Label</key>
        <string>com.parallels.compatfix</string>
        <key>ProgramArguments</key>
        <array>
            <string>sh</string>
            <string>-c</string>
            <string>launchctl setenv SYSTEM_VERSION_COMPAT 1</string>
        </array>
    </dict>
</plist>
EOF

Install -d $DaemonDir
install -m 644 $Daemonfile $DaemonDir/$Daemonfile
launchctl load $DaemonDir/$Daemonfile