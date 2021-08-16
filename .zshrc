export ZSH="/Users/edaroit/.oh-my-zsh"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.asdf/asdf.sh:$PATH"

export EDITOR=vim

ZSH_THEME="spaceship"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)

_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}
  
ensure_tmux_is_running

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

function myip() {
  ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
  ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

alias dot='cd ~/Projects/dotfiles'

alias mc='mix credo'
alias megm='mix ecto.gen.migration'
alias mem='mix ecto.migrate'
alias memr='mix ecto.rollback'
alias mer='mix ecto.reset'
alias mers='mer && mes'
alias mes='mix ecto.seed'
alias mf='mix format'
alias mfc='mf && mc'
alias mgo='mers && mps'
alias mps='mix phx.server'
alias mt='MIX_ENV=test mer && mix test'
alias mtf='mt --failed'
alias mtw='mt --only wip'
alias iex='iex --erl "-kernel shell_history enabled"'
alias reload="source ~/.zshrc"
alias map="xargs -n1"
alias uuidgen="uuidgen | tr '[:upper:]' '[:lower:]'"
alias dup="docker compose up -d"
alias ddown="docker compose down"

. $(brew --prefix asdf)/asdf.sh
