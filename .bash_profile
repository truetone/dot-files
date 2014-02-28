export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

PATH="/usr/local/bin:/usr/bin:/usr/local/lib:/usr/local/sbin:${PATH}"

# Virtualenv info
#export VIRTUALENVWRAPPER_PYTHON=/Users/thoma127/.pythonbrew/pythons/Python-2.7.2/bin/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
#export WORKON_HOME=/Users/thoma127/Sites/envs
#export PROJECT_HOME=/Users/thoma127/Sites
#source /usr/local/bin/virtualenvwrapper.sh

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# some grep aliases
alias greps="grep -rn --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt'"
alias grepi="grep -rin --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt'"
alias grep_php="grep -rin --include '*.php'"
alias grep_css="grep -rin --include '*.css'"
alias grep_js="grep -rin --include '*.js'"
alias grep_py="grep -rin --include '*.py'"

# handy git aliases
alias dev="git checkout develop"
alias mas="git checkout master"
alias st="git status"
alias co="git checkout"
alias add="git add"
alias cmt="git commit"
alias plod="git pull origin develop"
alias phod="git push origin develop"
alias plom="git pull origin master"
alias phom="git push origin master"
alias glog="git log --stat"
alias merge="git merge --no-ff"
alias gb="git branch"

# aliases for moving around
alias home="cd ~/"

# pythonbrew venv aliases
alias mkvenv="pythonbrew venv create"
alias lvenv="pythonbrew venv list"
alias workon="pythonbrew venv use"
alias rmvenv="pythonbrew venv delete"

# aws
#alias aws="ssh -i ~/.keys/mwc13.pem ec2-54-225-242-21.compute-1.amazonaws.com"
#alias aws="ssh -i ~/.keys/mwc13.pem ec2-50-19-58-219.compute-1.amazonaws.com"
#alias aws="ssh -i ~/.keys/mwc13.pem ubuntu@ec2-50-19-58-219.compute-1.amazonaws.com"
alias aws="ssh -i ~/.keys/mwc13.pem ubuntu@54.225.242.21"


# Aliases
alias ll='ls -la'
alias i="ssh independents.sua.umn.edu"
alias b="ssh browncoat.sua.umn.edu"

# moving around
alias home="cd ~/"
alias sites="cd ~/Sites"
alias desktop="cd ~/Desktop"
alias docs="cd ~/Documents"
alias sj="cd ~/Sites/springjam.umn.edu"
alias mwc="cd ~/Sites/minnewebcon2013"

# Archiving
alias cryptp="wget -E -H -k -K -p -nd"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Set the git branch in the prompt
function parse_git_branch {

	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'

}

function proml {

	local        BLUE="\[\033[0;34m\]"

	# OPTIONAL - if you want to use any of these other colors:
	local         RED="\[\033[0;31m\]"
	local   LIGHT_RED="\[\033[1;31m\]"
	local       GREEN="\[\033[0;32m\]"
	local LIGHT_GREEN="\[\033[1;32m\]"
	local       WHITE="\[\033[1;37m\]"
	local  LIGHT_GRAY="\[\033[0;37m\]"
	#END OPTIONAL
	local     DEFAULT="\[\033[0m\]"
	PS1="\h:\W \u$BLUE\$(parse_git_branch) $DEFAULT\$"
}

proml

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

function uttb { scp "$1" test.sua.umn.edu:/www/thoma127.test.sua.umn.edu/apps/"$2"; }
function uttp { scp "$1" test.sua.umn.edu:/www/thoma127.test.sua.umn.edu/public/"$2"; }
function uthc { scp "$1" test.sua.umn.edu:/www/thoma127.test.homecoming.umn.edu/homecoming/"$2"; }
function utsj { scp "$1" test.sua.umn.edu:/www/thoma127.test.springjam.umn.edu/apps/"$2"; }
function utcs { scp "$1" test.sua.umn.edu:/www/test.commstation.sua.umn.edu/apps/"$2"; }
