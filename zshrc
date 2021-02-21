#              __
#  ____  _____/ /_  __________
# /_  / / ___/ __ \/ ___/ ___/
#  / /_(__  ) / / / /  / /
# /___/____/_/ /_/_/   \___/



export PATH=/sbin:$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/babkock/.oh-my-zsh"

source /home/babkock/.local/share/lscolors.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="babkock"

LSCOLORS=$LS_COLORS

ZLS_COLORS=$LS_COLORS
ZLSCOLORS=$LS_COLORS
export LSCOLORS
export ZLS_COLORS
export ZLSCOLORS

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast colored-man-pages zsh-autosuggestions zsh-syntax-highlighting ssh-agent)

zstyle :omz:plugins:ssh-agent identities github_rsa laptop2pi

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	alias ls="ls --group-directories-first -F"
	alias lsla="ls -l -A"
	alias lsl="ls -l"
else
	alias ls="lsd --group-dirs first -h -F"
	alias lsla="lsd --group-dirs first -h -F -l -A --blocks permission,user,size,date,name"
	alias lsl="lsd --group-dirs first -h -F -l --blocks permission,user,size,date,name"
	alias lst="lsd --group-dirs first -h -F --tree"
	alias lstl="lsd --group-dirs first -h -F -l --tree --blocks permission,user,size,date,name"
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias spi="ssh pi@192.168.0.24 -i ~/.ssh/laptop2pi"
alias s="ssh tababcock@162.210.97.218 -p 2222 -i ~/.ssh/laptop2site"
function picp() {
	if [ -z "$1" ]; then
		printf "picp needs an argument\n"
		false
	else
		scp -i ~/.ssh/laptop2pi "$1" pi@192.168.0.24:~
		true
	fi
}
function pf() {
	if [ -z "$1" ]; then
		printf "pf needs a process name to search for\n"
		false
	else
		ps -aux | grep "$1"
	fi
}
alias ncrypt="gpg --encrypt --armor -r Tanner"
alias dcrypt="gpg --decrypt"
alias df="df -h"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gco="git checkout"
alias gr="git rm"
alias gpush="git push origin master"
alias gpull="git pull origin master"
alias v="vim"
alias r="ranger"
alias n="ncmpcpp"
alias t="tremc"
alias tr="transmission-remote"

