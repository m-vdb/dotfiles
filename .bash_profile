
function mkmod() {
    set -e
    mkdir $1
    touch $1/__init__.py
}

function 2coffee() {
    js2coffee $1 > temp && cat temp > $1 && rm temp
}

function ssh_fingerprint() {
    ssh-keygen -lf $1 -E md5
}

#####Application aliases#####
alias pw='openssl rand -base64 32'
#############################

#####Utility aliases#####
alias remove_pyc='find . -name "*.pyc" -exec rm -rf {} \;'
alias ios_screenshot='xcrun simctl io booted screenshot'
alias gti='git'  # typo
alias fastlane='bundle exec fastlane'  # perfs
#########################

#####Git#####
source $HOME/git-completion.bash
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[00m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$\[\033[00m\] '
[[ -f ./bash-completion/bash_completion ]] && ./bash-completion/bash_completion
export GIT_MERGE_AUTOEDIT=no
########################

#####Ruby#####
source ~/.profile
##############

#####Path#####
export ANDROID_HOME=/Users/mvdb/Library/Android/sdk
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK="/Applications/Android Studio.app/Contents/plugins/android-ndk"
export PATH=/usr/local/share/npm/bin:/usr/local/Cellar:/usr/local/Cellar/libevent/2.0.20/include:/usr/local/lib:/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/Cellar/php/5.3.10/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
##############

#####Terminal colors#####
export TERM="xterm-color"
alias ls="ls -G"
export PS1="\e[1;30m\][\e[\e[1;30m\]\e[1;33m\] \u@\H \[\e[1;32m\]\w\[\e[0m\] \e[1;30m\]]\n[\[ \e[1;31m\]\T\[\e[0m\]\e[1;30m\] ] > \e[37m\]"
#########################

#####Lang locale#####
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#####################

#####Git config#####
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  	. /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
 	. /opt/local/etc/bash_completion
fi

PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
####################

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export NVM_DIR="$(pwd)/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use v8.11.3

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
