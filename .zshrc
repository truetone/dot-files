# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:/Applications/Splunk/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/thoma127/.oh-my-zsh
# echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="pygmalion"
# ZSH_THEME="gentoo"
# ZSH_THEME="kolo"
# ZSH_THEME="gianu"
# ZSH_THEME="refined"
# ZSH_THEME="agnoster"
# ZSH_THEME="dallas"
# had this for years --->>> ZSH_THEME="muse"
# ZSH_THEME="bullet-train"
# ZSH_THEME="eastwood"
# ZSH_THEME="sorin"
# ZSH_THEME="kolo"
ZSH_THEME="miloshadzic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(
  brew
  colored-man
  colored-man-pages
  colorize
  git
  github
  httpie
  osx
  pip
  python
  ruby
  web-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source /Users/thoma127/marks.sh
source /Users/thoma127/functions.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source /Users/thoma127/aliases.sh

# screenfetch -E

# export NVM_DIR="/Users/thoma127/.nvm"

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'  # This loads nvm

PATH=$PATH:$HOME/.composer/vendor/bin

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# export ZPLUG_HOME=/usr/local/opt/zplug
# source $ZPLUG_HOME/init.zsh
### source /usr/local/bin/virtualenvwrapper.sh

# source $(brew --prefix php-version)/php-version.sh && php-version 5
# export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/usr/local/sbin:$PATH"
export NODE_PATH="/Users/thoma127/.nvm/versions/node/v6.7.0/bin/node"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# export PATH=$PATH:~/work/bin
# export GOPATH=$HOME/work

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /Users/thoma127/.asr_aliases
source /Users/thoma127/.asr_chruby

for function in /Users/thoma127/.asr/functions/*; do
  source $function
done

export PATH=$PATH:/usr/local/go/bin
# export OCI_DIR=$(brew --prefix)/lib
# export OCI_DIR=/opt/oracle/instantclient_12_1
export OCI_DIR=/usr/local/opt/oracle/instantclient_18_1

# setopt PROMPT_SUBST
# TIME='%B%F{red}[%D{%L:%M:%S}]'
# PS1="$TIME$PS1"
# TMOUT=1
#
# TRAPALRM() {
#     zle reset-prompt
# }

export PATH=/usr/local/share/python:$PATH
export PATH=$HOME/go/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH=$PATH:/usr/local/bin/confluent/bin

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

export GPG_TTY=$(tty)

. /Users/thoma127/z/z.sh

export STUB_INTERNET_ID=thoma127
# "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

export DRONE_SERVER=http://10.32.110.150
source ~/.drone_token.sh

source $HOME/git-pairing-session/git-pairing-session

export EDITOR=/usr/local/bin/vim
export PATH="/usr/local/opt/:$PATH"
export PATH="/usr/local/opt/oracle:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export NPM_TOKEN="dae4cf77-1a0f-403a-89d0-524d50bc08df"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export DYLD_LIBRARY_PATH="/usr/local/opt/oracle/instantclient_18_1"
export ORACLE_HOME="/usr/local/opt/oracle/instantclient_18_1"
ssh-add ~/.ssh/id_rsa
# export PYENV_VERSION=2.7.8
source ~/.brew-github-token

export PATH="/usr/local/opt/openssl@1.0.2t/bin:$PATH"

# For compilers to find openssl@1.0.2t you may need to set:
export LDFLAGS="-L/usr/local/opt/openssl@1.0.2t/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.0.2t/include"

# For pkg-config to find openssl@1.0.2t you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.0.2t/lib/pkgconfig"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
