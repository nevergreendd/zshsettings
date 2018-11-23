# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/swchoi06/.oh-my-zsh"

ZSH_THEME="ys"

plugins=(
  git
  tmux
  ubuntu
  django
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# VirtualenvWrapper
source =virtualenvwrapper.sh

# Zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
  echo "Initializing zgen plugins ..."

  # specify plugins here
  zgen load MichaelAquilina/zsh-autoswitch-virtualenv

  # generate the init script from plugins above
  zgen save
fi 

# Alias
alias sshapidev="ssh swchoi06@52.78.68.166"
alias sshapipro="ssh swchoi06@52.78.136.59"
alias sshsnatcher="ssh swchoi06@snatcher.snu.ac.kr"
