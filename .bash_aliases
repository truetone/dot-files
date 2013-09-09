alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# some grep aliases
alias greps="grep -rn --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache' --exclude-dir 'tests'"
alias grepi="grep -rin --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache' --exclude-dir 'tests'"
alias grep_php="grep -rin --include '*.php' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache' --exclude-dir 'tests'"
alias grep_css="grep -rin --include '*.css' --exclude-dir 'cache' --exclude-dir 'tests'"
alias grep_js="grep -rin --include '*.js' --exclude-dir 'cache' --exclude-dir 'tests'"
alias grep_py="grep -rin --include '*.py' --exclude-dir 'cache' --exclude-dir 'tests'"

# handy git aliases
alias dev="git checkout develop"
alias mas="git checkout master"
alias gr="git checkout grants"
alias st="git status"
alias co="git checkout"
alias add="git add"
alias cmt="git commit"
alias plod="git pull origin develop"
alias phod="git push origin develop"
alias plom="git pull origin master"
alias phom="git push origin master"
alias plog="git pull origin grants"
alias phog="git push origin grants"
alias glog="git log --stat"
alias merge="git merge --no-ff"
alias gb="git branch"

# aliases for moving around
alias home="cd ~/"
alias testbed="hop tony"
alias tb="hop tony"
alias sj="cd /www/thoma127.test.springjam.umn.edu"
alias hc="cd /www/thoma127.test.homecoming.umn.edu"
alias models="cd /www/thoma127.test.sua.umn.edu/models"
alias pub="cd /www/thoma127.test.sua.umn.edu/public"

#tailing
alias tpe="tail -fn 40 /var/log/php/error.log"
alias tfe="sudo supervisorctl tail thoma127.test.sua.umn.edu\#flask stderr"

#python
alias pylint="python -m py_compile"

#lightty
alias lreload="sudo /etc/init.d/lighttpd reload"
alias lvconfig="sudo vi /etc/lighttpd/sites-available/thoma127.test.sua.umn.edu.conf"

#tmux
alias tsession="tmux new-session -s test"
alias attach="tmux attach-session -t test" 

#supervisor
alias sup="sudo supervisorctl"
alias suptb="sudo supervisorctl restart thoma127.test.sua.umn.edu#flask"
alias supsua="sudo supervisorctl restart test.sua.umn.edu#flask"
alias supapi="sudo supervisorctl restart test.sua.umn.edu#django"

#fix permissions
alias fap="sudo /usr/local/bin/scripts/fixallperms.sh"

#test.sua.umn.edu virtualenv
alias testvenv="source /var/env/sua-test/bin/activate"

#rsync the test uploads directory w/ mine
alias test_pubsync="rsync -vur /www/test.sua.umn.edu/public/uploads/ /www/thoma127.test.sua.umn.edu/public/uploads/"
