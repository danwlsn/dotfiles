# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Brew on path
export PATH=/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"

ZSH_THEME="bureau"

COMPLETION_WAITING_DOTS="true"
plugins=(python pipenv pyenv pip)

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source $ZSH/oh-my-zsh.sh

# NeoVim
alias n="nvim"
alias sn="sudo nvim"

# tmux
alias tnew="new-tmux-from-dir-name"
alias tatt="tmux attach-session -t "
alias td="tmux detach"
alias tls="tmux ls"
alias tkill="tmux kill-session -t "
alias tmk='tmux ls | awk '{print $1}' | sed 's/://g' | xargs -I{} tmux kill-session -t {}'

function new-tmux-from-dir-name {
  tmux new-session -As `basename $PWD`
}

# misc
alias c="clear"
alias tf="terraform"
alias l="ls -lh --color=auto --group-directories-first"
alias la="ls -lhA --color=auto --group-directories-first"
alias mkdir="mkdir -pv"
alias path='echo -e ${PATH//:/\\n}'

alias h="fuzzy"
alias pr="poetry run"

function fuzzy() {
  cd $(find ~/_ -type d -maxdepth 1 -print | fzf) 
}

# act as sudo
if [ $UID -ne 0 ]; then
  alias apt-get="sudo apt-get"
  alias apt="sudo apt"
  alias powertop="sudo powertop"
fi

# source ~/.zshrc
alias sz="source $HOME/.zshrc"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Created by `pipx` on 2024-07-26 08:45:28
export PATH="$PATH:/Users/$(whoami)/.local/bin"

# zfz history
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$(whoami)/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$(whoami)/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$(whoami)/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$(whoami)/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
