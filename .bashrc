# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

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

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/dot-files/.bash_aliases ]; then
    . ~/dot-files/.bash_aliases
fi

# Get colors in less
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

alias tmux="TERM=screen-256color-bce tmux -2"

alias hop=". hop $1"

if [ -d "$HOME/vim/bin/" ] ; then
  PATH="$HOME/vim/bin/:$PATH"
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
	PS1="\h:\W \u$BLUE\$(parse_git_branch) $LIGHT_GREEN\$"
}

proml

# Completion wrapper from http://ubuntuforums.org/showthread.php?t=733397
function completion-wrapper () {
	local function_name="$2"
	local arg_count=$(($#-3))
	local comp_function_name="$1"
	shift 2
	local function="
function $function_name {
	((COMP_CWORD+=$arg_count))
	COMP_WORDS=( "$@" \${COMP_WORDS[@]:1} )
	"$comp_function_name"
	return 0
}"
	eval "$function"
	#echo $function_name
	#echo "$function"
}

# Add completion to above aliases
# complete -o bashdefault -o default -o nospace -F _git git
completion-wrapper _git _co git checkout
complete -o bashdefault -o default -o nospace -F _co co

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
