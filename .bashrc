source /usr/share/defaults/etc/profile

export PATH="$PATH:/usr/local/bin:$HOME/.local/bin/:$HOME/.local/bin/bar/"
RANGER_LOAD_DEFAULT_RC=FALSE

# Default programs:
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

# Setup for git bare respo to store dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
