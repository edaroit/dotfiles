export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export GPG_TTY=$(tty)

alias reload="source ~/.zshrc"

alias vim="nvim"
alias map="xargs -n1"
alias uuidgen="uuidgen | tr '[:upper:]' '[:lower:]'"

# elixir
alias iex='iex --erl "-kernel shell_history enabled"'

. /usr/local/opt/asdf/libexec/asdf.sh
