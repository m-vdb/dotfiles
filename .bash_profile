source .dotfiles_params

#####Shell functions#####
f_crawl()
{
	source ~/ENV2/bin/activate
	curl http://localhost:6800/schedule.json -d project=default -d spider=$1
}
f_import()
{
	source ~/ENV2/bin/activate
	cd $WORK_DIR/job-pipe/job_pipe/plugins/w4l/spiders/
	./cimport.sh $1
}
f_django-new()
{
    cd
    ./ENV-test/bin/django-admin.py startproject $1
}
f_django()
{
    cd
    python manage.py $1
}
##kill celery
function kcel()
{
        ps aux | grep celery | grep -v grep | awk '{print $2}' | xargs kill -9 && echo "Success: Celery killed!" || echo "Error: No celery to kill.."
}
##start celery
function scel(){
        while true
            do source ~/ENV2/bin/activate; cd $WORK_DIR/job-pipe/job_pipe/projects/backoffice; ./manage.py celeryd --loglevel=DEBUG
        done
}
#########################

#####SSH aliases#####
alias lab3='ssh -i ~/.ssh/id_rsa_lab3 mvergerdelbove@lab3.work4labs.com'
alias dev-imp='ssh -i ~/.ssh/id_rsa_dev mvergerdelbove@dev-imports.work4labs.com'
alias dev-imp-listen='ssh -i ~/.ssh/id_rsa_dev mvergerdelbove@dev-imports.work4labs.com -L 8888:127.0.0.1:8000'
alias good-data='ssh -i ~/.ssh/id_rsa_dev mvergerdelbove@good-data1.work4labs.com'
#####################

#####Navigation aliases#####
alias goto-jp='cd $WORK_DIR/job-pipe'
alias goto-jp-bo='cd $WORK_DIR/job-pipe/job_pipe/projects/backoffice'
alias goto-djm='cd ~/ENV-test2/lib/python2.7/site-packages/django_mongoengine'
############################

#####Environment aliases#####
alias venv='source ~/ENV2/bin/activate'
alias venvw4='source ~/ENV-W4/bin/activate'
alias venva='source ~/ENV-ANA/bin/activate'
alias venv-test='source ~/ENV-test/bin/activate'
alias venv-test2='source ~/ENV-test2/bin/activate'
#############################

#####Job pipe aliases#####
alias servers-start='launchctl start homebrew.mxcl.redis; /usr/local/bin/mongod --dbpath=/usr/local/var/db/'
alias servers-stop='launchctl stop homebrew.mxcl.redis; pidof -k mongod'
alias load-fixtures='venv; cd $WORK_DIR/job-pipe/job_pipe/projects/backoffice; ./manage.py loadbackendfixtures --all --debug'
alias twistd-start='venv; cd $WORK_DIR/job-pipe; twistd -ny scrapyd.tac'
alias celery-start=scel
alias crawl-start=f_crawl
alias new-import=f_import
########################

#####Application aliases#####
alias django=f_django
alias django-new=f_django-new
alias django-start-server='venv-test; cd ~/app; python manage.py runserver'
alias j-mongo='mongo mvergerdelbove_job_pipe'
#############################

#####Git completion#####
source $WORK_DIR/git-completion.bash
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