alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

alias vi='vim'
alias vimo='vim $(fzf)'
alias open_modified="vim `git diff --name-only HEAD`";

# grep color http://superuser.com/questions/416835/how-can-i-grep-with-color-in-mac-os-xs-terminal
# export GREP_OPTIONS='--color=always'
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
alias grep_rb="grep -rin --include '*.rb'"
alias grep_rk="grep -rin --include '*.rk'"

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
alias ga="git add . -p"
alias gm!="git checkout master;git reset --hard origin/master"
alias gb="git branch"
alias grmd="git ls-files --deleted -z | xargs -0 git rm" # Removes files deleted outside of git
alias rm_merged='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

alias s="spotify"

# PHP Lint
alias phpl="~/phplint/phpl"

# Fix Homebrew
alias fixbrew='cd "$(brew --repo)" && git fetch && git reset --hard origin/master && brew update'

# Aliases
alias ll='exa -lah'

# tmux
alias attach="tmux a -t"

#Python simple server
alias pyserve="python -m SimpleHTTPServer"

#PHPUnit
alias phpunitall="phpunit -v -c tests/config.xml --colors=always"

alias h="hop"

alias asr_aliases="cat ~/.asr_aliases"
alias s_aliases="cat ~/.asr_aliases | grep "
alias s_history="history | grep"
alias vacation="echo 'umn.edu_gjh72idh4stdgi3q2173d5e6jo@group.calendar.google.com' | pbcopy"
alias cp_sa_stage_pwd="lpass show 4871817791911976488 --password | pbcopy"

alias ci="open http://ci.asr.umn.edu"

alias tdev="ssh thoma127@asr-thoma127-dev-web-01.oit.umn.edu"

alias lpass_sa_prod="lpass show 6209882616931100251 -cp"
alias lpass_sa_stage="lpass show 4871817791911976488 -cp"

alias dev_jme="ssh thoma127@asr-thoma127-dev-web-01.oit.umn.edu"
