export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

PATH="/usr/local/bin:/usr/bin:/usr/local/lib:/usr/local/sbin:${PATH}"

# Virtualenv info
export VIRTUALENVWRAPPER_PYTHON=/Users/thoma127/.pythonbrew/pythons/Python-2.7.2/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export WORKON_HOME=/Users/thoma127/Sites/envs
export PROJECT_HOME=/Users/thoma127/Sites
source /usr/local/bin/virtualenvwrapper.sh


# Aliases
alias ll='ls -la'
alias i="ssh independents.sua.umn.edu"
alias b="ssh browncoat.sua.umn.edu"

# some grep aliases
alias greps="grep -rn --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt'"
alias grepi="grep -rin --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt'"
alias grep_php="grep -rin --include '*.php'"
alias grep_css="grep -rin --include '*.css'"
alias grep_js="grep -rin --include '*.js'"
alias grep_py="grep -rin --include '*.py'"

# handy git aliases
alias dev="git checkout develop"
alias co="git checkout"
alias add="git add"
alias cmt="git commit"

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
