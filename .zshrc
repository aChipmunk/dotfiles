
# Path to your oh-my-zsh installation.
export ZSH="/home/max/.oh-my-zsh"

# Oh my Zsh theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Path
export PATH="$PATH:/usr/local/bin:$HOME/.local/bin/:$HOME/.local/bin/bar/"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred applications for local and remote sessions
export EDITOR='vim'
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

# Alias for dotfils git backup
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

