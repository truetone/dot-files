screenfetch

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

PATH="/usr/local/bin:/usr/bin:/usr/local/lib:/usr/local/sbin:${PATH}"
GOPATH="/Users/thoma127/Documents/go/"
export GOPATH
export PATH="$HOME/.tmuxifier/bin:$PATH"

EDITOR="/usr/local/bin/gvim"

# tmuxifier
eval "$(tmuxifier init -)"
alias v='tmuxifier load-session vague'

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# some grep aliases
alias greps="grep -rn --include '*.css' --include '*.scss' --include '*.yml' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --include '*.rst'"
alias grepi="grep -rin --include '*.css' --include '*.scss' --include '*.yml' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --include '*.rst'"
alias grep_php="grep -rin --include '*.php'"
alias grep_css="grep -rin --include '*.css'"
alias grep_js="grep -rin --include '*.js'"
alias grep_py="grep -rin --include '*.py'"

# handy git aliases
alias dev="git checkout develop"
alias mas="git checkout master"
alias st="git status -sb"
alias co="git checkout"
alias add="git add"
alias cmt="git commit"
alias plod="git pull origin develop"
alias phod="git push origin develop"
alias plom="git pull origin master"
alias phom="git push origin master"
alias glog="git log --stat"
alias gprettylog="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias merge="git merge"
alias gb="git branch"
alias grmd="git ls-files --deleted -z | xargs -0 git rm" # Removes files deleted outside of git
alias rm_merged='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

# pythonbrew venv aliases
alias mkvenv="pythonbrew venv create"
alias lvenv="pythonbrew venv list"
alias workon="pythonbrew venv use"
alias rmvenv="pythonbrew venv delete"

# Aliases
alias ll='ls -la'
alias i="ssh independents.sua.umn.edu"
alias b="ssh bluesun.sua.umn.edu"
alias r="ssh reaver.sua.umn.edu"
alias s="ssh shepherd.sua.umn.edu"
alias m="ssh miranda.sua.umn.edu"

#provisioning
alias provision_test_sua="ansible-playbook -i test -l shepherd.sua.umn.edu -t sua -K all.yml"
alias provision_test_hc="ansible-playbook -i test -l shepherd.sua.umn.edu -t homecoming -K all.yml"
alias provision_test_sj="ansible-playbook -i test -l shepherd.sua.umn.edu -t springjam -K all.yml"
alias provision_prod_sua="ansible-playbook -i prod -l reaver.sua.umn.edu -t sua -K all.yml"
alias provision_prod_hc="ansible-playbook -i prod -l reaver.sua.umn.edu -t homecoming -K all.yml"
alias provision_prod_sj="ansible-playbook -i prod -l reaver.sua.umn.edu -t springjam -K all.yml"

# tmux
alias attach="tmux a -t"

# Archiving
alias cryptp="wget -E -H -k -K -p -nd"

#Python simple server

alias pyserve="python -m SimpleHTTPServer"


# Vagrant aliases

alias rsf='cd ~/Sites/vague;ssh vague supervisorctl restart sua.umn.edu#flask;cd - >/dev/null'
alias rsd='cd ~/Sites/vague;ssh vague supervisorctl restart sua.umn.edu#django;cd - >/dev/null'
alias rad='cd ~/Sites/vague;ssh vague-api supervisorctl restart api.sua.umn.edu#django;cd - >/dev/null'
alias vapi='cd ~/Sites/vague;ssh vague-api;cd - >/dev/null'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
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
	PS1="$LIGHT_RED[\j] $RED\h:$LIGHT_GRAY\W $GREEN\u$BLUE\$(parse_git_branch) $DEFAULT\$"
}

proml

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

source `brew --prefix git`/etc/bash_completion.d/git-completion.bash

# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
export MARKPATH=$HOME/.marks
function hop { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    \ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}
_completemarks() {
  local curw=${COMP_WORDS[COMP_CWORD]}
  local wordlist=$(find $MARKPATH -type l -printf "%f\n")
  COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
  return 0
}

complete -F _completemarks jump unmark
