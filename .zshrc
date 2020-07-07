export ZSH=/Users/marcinsiepetowski/.oh-my-zsh

ZSH_THEME="robbyrussell"
export EDITOR=vim

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias bup='brew update && brew upgrade --all'
alias bupc='brew update && brew upgrade --all && brew cleanup'
alias bupc!='brew update && brew update --all && brew cleanup --force'
alias bout='brew outdated'
alias bin='brew install'
alias brm='brew uninstall'
alias bcl='brew cleanup --force'
alias bls='brew list'
alias bsr='brew search'
alias binf='brew info'
alias bdr='brew doctor'
alias bed='brew edit'

alias grepuj='grep -Ryn'

function gotop() {
  cd $(git rev-parse --show-toplevel)
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

# enable history in iex
export ERL_AFLAGS="-kernel shell_history enabled"

export NODE_OPTIONS=--max_old_space_size=8192

source ./custom-aliases.sh
