# Path to your oh-my-zsh installation.
export ZSH="/home/sean/.oh-my-zsh"

# Theme
ZSH_THEME="alanpeabody"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Add plugins
plugins=(git colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias projects="cd ~/Dev/projects"
alias python="python3"
alias icat="kitty +kitten icat"

# Functions
function mkvirtualenvpy3() {
    python3 -m venv .
    source bin/activate
    cp ~/.snippets/python_snippet.py main.py
}

