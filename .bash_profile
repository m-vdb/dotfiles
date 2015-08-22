
function wssh(){
    user=mvergerdelbove
    server=dev-haproxy
    suffix=.work4labs.com
    if [ $# -eq 2 ] && [ "$2" = "a" ]
      then
        server=aws-entry
        localsuffix=
    fi
    echo "# ssh bump from $server"
    ssh -A $user@$server$suffix -t "ssh -A $1$suffix"
}

function dssh(){
    user=root
    host=104.236.79.93
    if [ $# -eq 1 ]
      then
        host=104.236.218.42
    fi
    ssh -A $user@$host
}

function mkmod() {
    set -e
    mkdir $1
    touch $1/__init__.py
}

#####SSH aliases#####
alias ipynb='ssh -L 8888:localhost:8888 dev-haproxy'
#####################

#####Application aliases#####
alias v='cd /Users/maxvdbdev/Sources/vagrant/ && vagrant'
alias chrome="open -a '/Applications/Google Chrome.app'"
#############################

#####Utility aliases#####
alias remove_pyc='find . -name "*.pyc" -exec rm -rf {} \;'
#########################

#####Git#####
source $HOME/git-completion.bash
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[00m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$\[\033[00m\] '
[[ -f ./bash-completion/bash_completion ]] && ./bash-completion/bash_completion
export GIT_MERGE_AUTOEDIT=no
########################

#####Path#####
export PATH=/usr/local/share/npm/bin:/usr/local/Cellar:/usr/local/Cellar/libevent/2.0.20/include:/usr/local/lib:/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/Cellar/php/5.3.10/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin
export EDITOR=emacs
export ANDROID_HOME=/usr/local/opt/android-sdk

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
export NVM_DIR="/Users/maxvdbdev/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use v0.10.31

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
