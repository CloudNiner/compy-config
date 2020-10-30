parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

git_to_top() {
  cd $(git rev-parse --show-toplevel)
}

export PS1="\u@\h \w\$(parse_git_branch): "

export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Node version manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Haskell
export PATH=~/.local/bin:$PATH
export PATH=$(stack path --compiler-bin):$PATH  # Workaround for error in vscode: https://github.com/alanz/vscode-hie-server/issues/128

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Aliases
alias vup="vagrant up"
alias vssh="vagrant ssh"
alias http-jwt="http --auth-type=jwt"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/azavea/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/azavea/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/azavea/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/azavea/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

