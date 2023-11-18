#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias ll='ls -laF'
alias la='ls -A'
alias l='ls -CFl'

alias ssha='eval $(ssh-agent) && $(ssh-add)'

tmux_new_session () {
    read -p "session-name: " inputline
    tmux new -s $inputline
}
tmux_kill_session () {
    read -p "session-name: " inputline
    tmux kill-session -t $inputline
}
alias tm='tmux'
alias tn='tmux_new_session'
# alias ta='tmux attach -d -t tmux_attach_session'
alias ta='tmux attach -d -t'
alias tl='tmux list-session'
alias tk='tmux_kill_session'
alias tkt='tmux kill-session -t'

if command -v pyenv 1>/dev/null 2>&1; then
   eval "$(pyenv init -)" 
fi

export PATH=$PATH:$HOME/.config/.doom-emacs/bin
. "$HOME/.cargo/env"
