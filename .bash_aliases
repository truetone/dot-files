alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# some grep aliases
alias greps="grep -rn --include '*.rst' --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache' --exclude-dir 'tests'"
alias grepi="grep -rin --include '*.rst' --include '*.css' --include '*.scss' --include '*.sass' --include '*.py' --include '*.js' --include '*.php' --include '*.html' --include '*.txt' --exclude-dir 'cache' --exclude-dir 'prepared' --exclude-dir 'Cache' --exclude-dir 'tests'"
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
alias glog="git log --stat"
alias merge="git merge --no-ff"
alias gb="git branch"
alias grmd="git ls-files --deleted -z | xargs -0 git rm" # Removes files deleted outside of git
