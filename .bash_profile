# Run screenfetch to display system info
screenfetch

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# export TMUXIFIER_TMUX_ITERM_ATTACH='-C'

# The next line updates PATH for the Google Cloud SDK.
source '/Users/tonythomas/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/tonythomas/google-cloud-sdk/completion.bash.inc'

# Altering the path this way breaks our deployment script. It turns out Vim only really needs PYTHONPATH anyway
# PATH="/Users/tonythomas/Projects/lead-pages/lib:/usr/local/bin:/usr/bin:/usr/local/lib:/usr/local/sbin:${PATH}"
# GOPATH="/Users/thoma127/Documents/go/" # PYTHONPATH="/Users/tonythomas/Projects/lead-pages/tests/unit:"
# PYTHONPATH="/usr/local/google_appengine:/Users/tonythomas/.virtualenvs/leadpages/bin/:${PYTHONPATH}"
# PYTHONPATH="/Users/tonythomas/Projects/lead-pages/lib:/usr/local/google-appengine:${PYTHONPATH}"
# PYTHONPATH="/Users/tonythomas/Projects/account/vendor:${PYTHONPATH}"
# PYTHONPATH="/Users/tonythomas/Projects/account/lib:${PYTHONPATH}"
# PYTHONPATH="/Users/tonythomas/Projects/account${PYTHONPATH}"
# PYTHONPATH="/Users/tonythomas/Projects/lead-pages/lib${PYTHONPATH}"
# export PYTHONPATH
# export GOPATH
# export PATH="$HOME/.tmuxifier/bin:$PATH"

# export PATH="/usr/local/google_appengine:$PATH"

# docker
# export DOCKER_HOST=tcp://192.168.59.103:2376
# export DOCKER_CERT_PATH=/Users/tonythomas/.boot2docker/certs/boot2docker-vm
# export DOCKER_TLS_VERIFY=1

# dinghy
export DOCKER_HOST=tcp://192.168.99.101:2376
export DOCKER_CERT_PATH=/Users/tonythomas/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

# EDITOR="/usr/local/bin/gvim"

source /usr/local/bin/virtualenvwrapper.sh

# vim
alias vi="vim"

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# grep color http://superuser.com/questions/416835/how-can-i-grep-with-color-in-mac-os-xs-terminal
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

# some grep aliases
alias greps="grep -rn --include '*.css' --include '*.scss' --include '*.yml' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --include '*.rst' --include '*.robot' --include '*.hbs' --include '*.ejs'"
alias grepi="grep -rin --include '*.css' --include '*.scss' --include '*.yml' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --include '*.rst' --include '*.robot' --include '*.hbs' --include '*.ejs'"
alias grep_php="grep -rin --include '*.php'"
alias grep_css="grep -rin --include '*.css'"
alias grep_js="grep -rin --include '*.js'"
alias grep_py="grep -rin --include '*.py'"
alias grep_pys="grep -rn --include '*.py'"
alias grep_html="grep -rin --include '*.html'"
alias grep_robot="grep -rin --include '*.robot'"

# handy git aliases
alias dev="git checkout develop"
alias mas="git checkout master"
alias st="git status -sb"
alias gstat="git diff --stat"
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
alias open_all_modified="vim `git status --porcelain | sed -ne 's/^ M //p'`"

# Check out feature/<something>
function checkOutFeature() {
    git checkout feature/$1
}

function checkOutPepFeature() {
    git checkout feature/PEP-$1
}

function checkOutAsFeature() {
    git checkout feature/AS-$1
}

alias cof=checkOutFeature
alias copf=checkOutPepFeature
alias coaf=checkOutAsFeature

# pythonbrew venv aliases
# alias mkvenv="pythonbrew venv create"
# alias lvenv="pythonbrew venv list"
# alias workon="pythonbrew venv use"
# alias rmvenv="pythonbrew venv delete"

# Aliases
alias ll='ls -lah'

# tmux
alias attach="tmux a -t"

# tmuxifier
# eval "$(tmuxifier init -)"

#Python simple server

alias pyserve="python -m SimpleHTTPServer"


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
    # PS1="$LIGHT_RED[\j] $RED\h:$LIGHT_GRAY\W $GREEN\u$BLUE\$(parse_git_branch) $DEFAULT\$"
    PS1="$RED\h:$LIGHT_GRAY\W $GREEN\u$BLUE\$(parse_git_branch) $DEFAULT\$"
}

proml

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# source `brew --prefix git`/etc/bash_completion.d/git-completion.bash

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

EDITOR=vi; export EDITOR

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

__git_complete co _git_checkout

function fap {
    find . -type d -exec chmod 755 {} \;
    find . -type f -exec chmod 644 {} \;
}

source ~/.bashrc
