alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# some grep aliases
alias greps="grep -rn --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache'"
alias grepi="grep -rin --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache'"
alias grep_php="grep -rin --include '*.php' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache'"
alias grep_css="grep -rin --include '*.css' --exclude-dir 'cache'"
alias grep_js="grep -rin --include '*.js' --exclude-dir 'cache'"
alias grep_py="grep -rin --include '*.py' --exclude-dir 'cache'"

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

