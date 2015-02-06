HISTIGNORE="&:ls:[bf]g:exit:[ \t]*"
HISTFILESIZE=10000

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home
ANDROID_SDK=~/Downloads/android-sdk-macosx
ANDROID_HOME=$ANDROID_SDK
PATH=~/bin:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$JAVA_HOME/bin:$PATH
export PATH
export ANDROID_HOME
export HISTIGNORE
export JAVA_HOME
#GRADLE_HOME=$HOME/Downloads/gradle-2.0
GRADLE_HOME=$HOME/Downloads/gradle-1.11
alias ruby=$HOME/bin/ruby
alias sed=$HOME/bin/sed
alias find=$HOME/bin/gfind
alias awk=$HOME/bin/gawk
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$GRADLE_HOME/bin

# PYTHON stuff
PYTHONPATH=$HOME/pylib/lib/python2.7/site-packages
PATH=$PATH:$HOME/pylib/bin:$HOME/Library/Python/2.7/bin

# Pebble
PEBBLE_SDK=~/pebble-dev/PebbleSDK-2.7
PATH=$PATH:$PEBBLE_SDK/bin

# Installed Ruby gems
export GEM_HOME=~/Documents/MyGems
export PATH=$GEM_HOME/bin:$PATH
export HOSTALIASES=~/.hosts

function gi() { curl http://www.gitignore.io/api/$@ ;}

# To keep Cocoapods happy
export LANG=en_US.UTF-8
