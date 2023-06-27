parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

git_to_top() {
  cd $(git rev-parse --show-toplevel)
}

export PS1="\u@\h \w\$(parse_git_branch): "

export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
