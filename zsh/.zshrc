export ZSH_DISABLE_COMPFIX=true

# To profile shell load, uncomment, reload shell with `exec zsh` then run `zprof`
# zmodload zsh/zprof

export EDITOR='vim'

# Path changes
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Brew on Apple Silicon
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# CPPFLAGS for JDK
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# User Docker installation
export PATH=$HOME/.docker/bin:$PATH

# Brew completions - now packaged with brew, not in oh-my-zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# direnv
eval "$(direnv hook zsh)"

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Rust
export PATH=$HOME/.cargo/bin:$PATH

# zsh shell correction settings
setopt CORRECT
setopt CORRECT_ALL

# zsh shell history settings
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=2000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/src/compy-config/zsh/zsh-custom

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# You may need to delete ZDOTDIR/.zcompdump* after adding an autocomplete plugin
# to include its changes.
plugins=(aws docker git httpie macos vscode)

source $ZSH/oh-my-zsh.sh

# User configuration

# Poetry Settings
POETRY_VIRTUALENVS_IN_PROJECT=true

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
if command -v nvim &> /dev/null; then
  alias vim="nvim"
else
  echo "nvim not found, using vim. To install nvim see https://github.com/neovim/neovim/blob/master/INSTALL.md." 1>&2;
fi
alias zshconfig="vim ~/src/compy-config/zsh/.zshrc"

tmuxgo () {
  tmux new-session -A -s "$(basename $(pwd))"
}

tmuxbranch () {
  tmux new-session -A -s "$(git rev-parse --abbrev-ref HEAD)"
}
