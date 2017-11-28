alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

alias vi='vim'
alias open_modified="vim `git diff --name-only HEAD`";

# grep color http://superuser.com/questions/416835/how-can-i-grep-with-color-in-mac-os-xs-terminal
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

# some grep aliases
alias greps="grep -rn --include '*.css' --include '*.scss' --include '*.yml' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --include '*.rst' --include '*.robot'"
alias grepi="grep -rin --include '*.css' --include '*.scss' --include '*.yml' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --include '*.rst' --include '*.robot'"
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
alias wpssh="ssh 'thoma127@cehd-wordpress-dev-web-01.oit.umn.edu'"
alias wpsshswadm="ssh 'swadm@cehd-wordpress-dev-web-01.oit.umn.edu'"

alias s="spotify"

# Mount Samba volumes
alias odd="open 'smb://drydock.cehd.umn.edu/drydock$'; open -a iterm"
alias obs="open 'smb://backstage.cehd.umn.edu/backstage$'; open -a iterm"
alias ofred="open 'smb://cehd-www01.oit.umn.edu/fred$'; open -a iterm"
alias omisc="open 'smb://cehd-www03.ad.umn.edu/web$'; open -a iterm"
alias oteach="open 'smb://drydock.cehd.umn.edu/teach$'; open -a iterm"
alias owp="open 'smb://cehd-www07.ad.umn.edu/web$'; open -a iterm" # Server w/ wp sites

# PHP Lint
alias phpl="~/phplint/phpl"

# Fix Homebrew
alias fixbrew='cd "$(brew --repo)" && git fetch && git reset --hard origin/master && brew update'

# Check out feature/<something>
# function checkOutFeature() {
#     git checkout feature/$1
# }
#
# alias cof=checkOutFeature

# Aliases
alias ll='exa -lah'

# tmux
alias attach="tmux a -t"

# tmuxifier
# eval "$(tmuxifier init -)"

#Python simple server

alias pyserve="python -m SimpleHTTPServer"

#PHPUnit
alias phpunitall="phpunit -v -c tests/config.xml --colors=always"


# rsync

alias sbtl="rsync -av /Volumes/backstage\$/app_routing/templates ."
