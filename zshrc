# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/babkock/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wedisagree"

LS_COLORS=$LS_COLORS'*.txt=1;93:*.log=1;93:*.php=1;31;40:*.js=1;32;40:*.json=1;93:*.html=0;35;40:*.xml=0;35;40:*.yaml=0;35;40:*.shtml=0;35;40:*.mkv=1;31:*.conf=1;33:*.ini=1;33:*.sh=1;32;40:*.lua=1;32:*.css=0;36;40:*.scss=0;36;40:*.less=0;36;40:*.c=1;93:*.h=1;31:*.cpp=1;32;40:*.rs=1;31:*.rb=1;31:*.py=1;31;40:*.pl=1;32;40:*.md=1;93:*.rtf=1;93;40:*.o=0;33;40:*.so=0;33;40:*.lock=1;93'

LSCOLORS=$LS_COLORS

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

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(gitfast colored-man-pages catimg)

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

alias poses="sudo chown babkock:babkock "
mkcd() {
	mkdir "$1"
	cd "$1"
}
pisend() {
	scp -i ~/.ssh/laptop2pi "$1" pi@192.168.0.14:~/Downloads
}

alias ..="cd .."
alias c="cd "
alias f="feh"
alias u="cd ~/Music"
alias o="cd ~/Documents"
alias d="cd ~/Downloads"
alias p="cd ~/Pictures"
alias i="cd ~/Videos"
alias n="ncmpcpp"
alias g="git"
alias v="vim"
alias reboot="sudo reboot"
alias shutdown="sudo shutdown -h now"
alias x="sudo zsh"
alias df="df -h -T"
alias ls="ls -hNF --color=auto --group-directories-first"
alias l="ls -hNF --color=auto --group-directories-first"
alias s="ssh tababcock@tannerbabcock.com -p 2222"
alias spi="ssh pi@192.168.0.14 -i ~/.ssh/laptop2pi"
alias jcommit="git commit -m '$(date)'; git push"
alias r="ranger"
alias t="transmission-remote-cli"
alias tr="transmission-remote"

