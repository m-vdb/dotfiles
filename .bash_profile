source .dotfiles_params

#####SSH aliases#####
alias lab3='ssh  mvergerdelbove@lab3.work4labs.com'
alias dev-imp='ssh web@dev-imports-01.work4labs.com'
alias prod-imp='ssh web@prod-imports.work4labs.com'
alias good-data='ssh web@good-data1.work4labs.com'
alias demo-gd='ssh mvergerdelbove@demo-gd-01.work4labs.com'
alias chef='ssh -A mvergerdelbove@admin-chef1.work4labs.com'
#####################

#####Navigation aliases#####
alias goto-jp='cd $WORK_DIR/job-pipe'
alias goto-jp-bo='cd $WORK_DIR/job-pipe/job_pipe/projects/backoffice'
############################

#####Environment aliases#####
alias venv='source ~/ENV2/bin/activate'
alias venvw4='source ~/ENV-W4/bin/activate'
alias venva='source ~/ENV-ANA/bin/activate'
alias venv-test='source ~/ENV-test/bin/activate'
alias venv-test2='source ~/ENV-test2/bin/activate'
alias venvjob='source ~/ENV-JOP/bin/activate'
#############################

#####Job pipe aliases#####
alias servers-start='launchctl start homebrew.mxcl.redis; /usr/local/bin/mongod --dbpath=/usr/local/var/db/'
alias servers-stop='launchctl stop homebrew.mxcl.redis; pidof -k mongod'
########################

#####Application aliases#####
alias j-mongo='mongo mvergerdelbove_job_pipe'
alias chrome="open -a '/Applications/Google Chrome.app'"
alias launch-rabbit="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist"
#############################

#####Utility aliases#####
alias remove_pyc='find . -name "*.pyc" -exec rm -rf {} \;'
#########################

#####Git completion#####
source $HOME/git-completion.bash
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[00m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$\[\033[00m\] '
########################

#####Path#####
export PATH=/usr/local/Cellar:/usr/local/Cellar/libevent/2.0.20/include:/usr/local/lib:/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/Cellar/php/5.3.10/bin
export EDITOR=emacs

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
