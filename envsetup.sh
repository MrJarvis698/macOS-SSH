
#!/usr/bin/env bash

sudo hdiutil create -type SPARSE -fs 'Case-sensitive Journaled HFS+' -size 500g ~/android.dmg.sparseimage && sudo hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android
