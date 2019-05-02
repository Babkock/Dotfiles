# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/pi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wedisagree"

LS_COLORS=$LS_COLORS'*.txt=1;93:*.log=1;93:*.php=1;31;40:*.js=1;32;40:*.json=1;93:*.html=0;35;40:*.xml=0;35;40:*.yaml=0;35;40:*.shtml=0;35;40:*.mkv=1;31:*.conf=1;33:*.ini=1;33:*.sh=1;32;40:*.lua=1;32:*.css=0;36;40:*.scss=0;36;40:*.less=0;36;40:*.c=1;93:*.h=1;31:*.cpp=1;32;40:*.rs=1;31:*.rb=1;31:*.py=1;31;40:*.pl=1;32;40:*.md=1;93:*.rtf=1;93;40:*.o=0;33;40:*.so=0;33;40:*.lock=1;93'

ZLS_COLORS=$ZLS_COLORS'*.txt=1;93:*.log=1;93:*.php=1;31;40:*.js=1;32;40:*.json=1;93:*.html=0;35;40:*.xml=0;35;40:*.yaml=0;35;40:*.shtml=0;35;40:*.mkv=1;31:*.conf=1;33:*.ini=1;33:*.sh=1;32;40:*.lua=1;32:*.css=0;36;40:*.scss=0;36;40:*.less=0;36;40:*.c=1;93:*.h=1;31:*.cpp=1;32;40:*.rs=1;31:*.rb=1;31:*.py=1;31;40:*.pl=1;32;40:*.md=1;93:*.rtf=1;93;40:*.o=0;33;40:*.so=0;33;40:*.lock=1;93'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z colored-man-pages)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
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
alias poses="sudo chown babkock:babkock "
mkcd() {
	mkdir "$1"
	cd "$1"
}
alias ..="cd .."
alias c="cd "
alias f="feh "
alias g="git"
alias v="vim "
alias ls="ls -hNF --color=auto --group-directories-first"
alias l="ls -hNF --color=auto --group-directories-first"
alias s="ssh babkock@192.168.0.3"
alias t="transmission-remote-cli"
alias tr="transmission-remote"
alias r="ranger"

