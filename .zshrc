# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=""

HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git 
  brew 
  nvm 
  dotenv
)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='code'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"
export NODE_ENV='development'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# NOTE:: aliases are defined in $ZSH_CUSTOM/aliases.zsh

export PATH="/usr/local/sbin:$PATH"

# aws cli
export PATH=~/.local/bin:$PATH

# slack cli
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# BEGIN SNIPPET: Magento Cloud CLI configuration
HOME=${HOME:-'/Users/envoy'}
export PATH="$HOME/"'.magento-cloud/bin':"$PATH"
if [ -f "$HOME/"'.magento-cloud/shell-config.rc' ]; then . "$HOME/"'.magento-cloud/shell-config.rc'; fi # END SNIPPET

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
