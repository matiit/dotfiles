export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/mat/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="false"
# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias v="vim"
