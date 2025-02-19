#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## ll Alias
alias ll="ls -la"

# Add ./local/bin scripts to path
export PATH="$PATH:$HOME/.local/bin"

# Setup Starship
eval "$(starship init bash)"

# Expense entry alias
alias expenseentry="node /opt/expenseEntry/index.js"

# Tmuxifier
export PATH="$PATH:$HOME/.tmux/plugins/tmuxifier/bin"
export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"
export EDITOR="nvim"
eval "$(tmuxifier init -)"
