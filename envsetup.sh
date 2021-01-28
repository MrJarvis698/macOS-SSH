
#!/usr/bin/env bash

sudo hdiutil create -type SPARSE -fs 'Case-sensitive Journaled HFS+' -size 500g ~/android.dmg.sparseimage && sudo hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android && rm -f /Applications/Xcode.app 2>/dev/null && sudo xcode-select -s /Applications/Xcode_12.3.app/Contents/Developer && ln -s /Applications/Xcode_12.3.app /Applications/Xcode.app && cd /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs && aria2c -x16 -s16 https://github.com/phracker/MacOSX-SDKs/releases/download/10.15/MacOSX10.$i.sdk.tar.xz && tar xJf MacOSX10.$i.sdk.tar.xz &&  rm -f MacOSX10.$i.sdk.tar.xz &&brew install openjdk@8 && sudo ln -sfn /usr/local/opt/openjdk@8/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-8.jdk && export PATH="/usr/local/opt/openjdk@8/bin:$PATH" && export JAVA_OPTS=" -Xmx12G " && mkdir -p ~/bin 2>/dev/null && wget -q https://ftp.gnu.org/gnu/make/make-4.3.tar.gz && tar xzf make-4.3.tar.gz && cd make-*/ && ./configure && bash ./build.sh &>/dev/null && install ./make ~/bin/make && cd .. && rm -rf make-* && export PATH="~/bin:$PATH" && brew install gnu-sed && export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH" && brew install ccache && export PATH="/usr/local/opt/ccache/libexec:$PATH"

