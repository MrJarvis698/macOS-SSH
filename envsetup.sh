
#!/usr/bin/env bash

sudo hdiutil create -type SPARSE -fs 'Case-sensitive Journaled HFS+' -size 500g ~/android.dmg.sparseimage && sudo hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android && rm -f /Applications/Xcode.app 2>/dev/null && sudo xcode-select -s /Applications/Xcode_12.3.app/Contents/Developer && ln -s /Applications/Xcode_12.3.app /Applications/Xcode.app && cd /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs
for i in 10 11 12 13 14 15; do
  aria2c -x16 -s16 https://github.com/phracker/MacOSX-SDKs/releases/download/10.15/MacOSX10.$i.sdk.tar.xz
  tar xJf MacOSX10.$i.sdk.tar.xz
  rm -f MacOSX10.$i.sdk.tar.xz
done
brew install openjdk@8

