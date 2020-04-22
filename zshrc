#               __             
#   ____  _____/ /_  __________
#  /_  / / ___/ __ \/ ___/ ___/
#  / /_(__  ) / / / /  / /__  
# /___/____/_/ /_/_/   \___/  
#
export PATH=$PATH:/usr/local/i386elfgcc/bin
export ZSH="/home/babkock/.oh-my-zsh"
ZSH_THEME="wedisagree"

LS_COLORS=$LS_COLORS'*.txt=1;93:*.log=1;93:*.php=1;31:*.js=1;32:*.bin=1;32:*.asm=1;31:*.json=1;93:*.html=0;35;40:*.xml=0;35:*.yaml=0;35:*.shtml=0;35:*.mkv=1;31:*.conf=1;33:*.ini=1;33:*.sh=1;32:*.lua=1;32:*.css=0;36:*.scss=0;36:*.less=0;36:*.c=1;93:*.h=1;31:*.cpp=1;32:*.rs=1;31:*.rb=1;31:*.py=1;31:*.pl=1;32:*.md=1;93:*.rtf=1;93:*.o=0;33:*.txt=1;93:*.log=1;93:*.php=1;31:*.js=1;32:*.bin=1;32:*.asm=1;31:*.json=1;93:*.html=0;35:*.xml=0;35:*.yaml=0;35:*.torrent=0;35:*.toml=0;35:*.yml=0;35:*.shtml=0;35:*.mkv=1;31:*.conf=1;33:*.ini=1;33:*.sh=1;32:*.lua=1;32:*.css=0;36:*.scss=0;36:*.less=0;36:*.vue=0;36:*.img=1;91:*.iso=1;93:*.c=1;93:*.h=1;31:*.cpp=1;32:*.rs=1;31:*.rb=1;31:*.py=1;31:*.pl=1;32:*.md=1;93:*.rtf=1;93;40:*.o=0;33:*.rlib=0;33:*.d=0;33:*.so=0;33:*.lock=1;93'

LSCOLORS=$LS_COLORS

ZLS_COLORS=$ZLS_COLORS'*.yaml=0;35:*.shtml=0;35:*.mkv=1;31:*.conf=1;33:*.ini=1;33:*.sh=1;32:*.lua=1;32:*.css=0;36:*.scss=0;36:*.less=0;36:*.c=1;93:*.h=1;31:*.cpp=1;32:*.rs=1;31:*.rb=1;31:*.py=1;31:*.pl=1;32:*.md=1;93:*.rtf=1;93:*.o=0;33:*.d=0;33:*.rlib=0;33:*.so=0;33:*.lock=1;93:*.txt=1;93:*.log=1;93:*.php=1;31:*.js=1;32:*.bin=1;32:*.asm=1;31:*.json=1;93:*.html=0;35:*.xml=0;35:*.toml=0;35:*.torrent=0;35:*.yml=0;35:*.shtml=0;35:*.mkv=1;31:*.conf=1;33:*.ini=1;33:*.sh=1;32:*.img=1;91:*.iso=1;93:*.lua=1;32:*.css=0;36:*.scss=0;36:*.vue=0;36:*.less=0;36:*.c=1;93:*.h=1;31:*.cpp=1;32:*.rs=1;31:*.rb=1;31:*.py=1;31:*.pl=1;32:*.md=1;93:*.rtf=1;93:*.o=0;33:*.rlib=0;33:*.d=0;33:*.so=0;33:*.lock=1;93'

#ZSH_THEME_RANDOM_CANDIDATES=( "eastwood" "gentoo" "lambda" "wedisagree" )
#CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(gitfast colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

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

xbcompile() {
	if [ -z "$1" ]; then
		printf "Please specify the name of your package\n" > /dev/stderr
		false
	else
		cd ../../..;	
		./xbps-src build -C -f "$1"
		cd $OLDPWD
		true
	fi
}

# quick transmission torrent starter. one can run "t avengers.torrent" to start
# up that torrent, and delete the file.
# you can also do something like this
#
#    $ t avengers.torrent 1000
#    Torrent avengers.torrent started
#    Download limit set to %s kB/s
#
t() {
	if [ -z "$1" ]; then
		transmission-remote -ep -x -Y -O --utp > /dev/null 
		transmission-remote-cli
		printf "\e[91;1mUsage: %s [torrent file] [speed]\n" "$0" > /dev/stderr
		false
	elif [ -z "$2" ]; then
		transmission-remote -ep -x -Y -O --utp > /dev/null
		transmission-remote-cli "$1" > /dev/null
		rm -f "$1" > /dev/null
		printf "\e[92;1mTorrent %s started\n\e[30;m" "$1" > /dev/stdout
		true
	else
		transmission-remote -ep -x -Y -O --utp > /dev/null
		transmission-remote-cli "$1" > /dev/null
		rm -f "$1" > /dev/null
		transmission-remote -as > /dev/null
		transmission-remote -asd "$2" > /dev/null
		printf "\e[92;1mTorrent %s started\n" "$1" > /dev/stdout
		printf "\e[93;1mDownload limit set to %s kB/s\n\e[30;m" "$2" > /dev/stdout
		true
	fi
}

# quick GPG encrypt. arg 1 is passphrase, arg 2 is input file
#
#    $ genc "123456" hello.txt
#
# this creates hello.txt.asc, the armored message, and signs it
genc() {
	if [ -z "$1" ]; then
		printf "Usage: %s \"passphrase\" [inputfile]\n" "$0" > /dev/stderr
		false
	fi
	if [ -z "$2" ]; then
		printf "Usage: %s \"passphrase\" [inputfile]\n" "$0" > /dev/stderr
		false
	fi
	gpg --passphrase "$1" --encrypt --sign --armor -r babkock@gmail.com "$2"
}

# quick GPG decrypt. use passphrase for first argument, second argument is input file,
# and third is output file.
#
#    $ gdec "123456" hello.txt.asc hello.real
#
# hello.real should be exactly the same as hello.txt, the original input
gdec() {
	if [ -z "$1" ]; then
		printf "Usage: %s \"passphrase\" [input] [outputfile]\n" "$0" > /dev/stderr
		false
	fi
	if [ -z "$2" ]; then
		printf "Usage: %s \"passphrase\" [input] [outputfile]\n" "$0" > /dev/stderr
		false
	fi
	gpg --passphrase "$1" --decrypt "$2" > "$3"
}

# hacky function to send something to the Raspberry Pi. change the IP address if
# need be.
#
#    $ picp vimrc important_stuff
#    vimrc
#    important_stuff...          2 kB
picp() {
	scp -i ~/.ssh/laptop2pi_new "$@" pi@192.168.0.18:~
}

# configure a given program by its name. this function opens vim with the main
# configuration file for the specified program.
#
#    $ conf vim   # opens ~/.vimrc
#    $ conf zsh   # opens ~/.zshrc
#    $ conf bspwm # opens ~/.config/bspwm/bspwmrc
#    # etc
conf() {
	if [ -z "$1" ]; then
		printf "Specify which program you want to configure\n" > /dev/stderr
		printf "[x | bash | bspwm | sxhkd | polybar | vim | zsh | ncmpcpp | herbstluftwm | i3 ]\n" > /dev/stderr
		printf "[mpv | mpd | ranger | runit | jgmenu | filezilla ]\n" > /dev/stderr
		false
	else
		case "$1" in
			x)
				vim ~/.xinitrc
				printf "Configured X\n"
				;;
			bash)
				vim ~/.bashrc
				printf "Configured Bash\n"
				;;
			bspwm)
				vim ~/.config/bspwm/bspwmrc
				printf "Configured bspwm\n"
				;;
			herbstluftwm)
				vim ~/.config/herbstluftwm/autostart
				printf "Configured Herbstluftwm\n"
				;;
			i3)
				vim ~/.config/i3/config
				printf "Configured i3\n"
				;;
			mpv)
				vim ~/.config/mpv/mpv.conf
				printf "Configured mpv\n"
				;;
			sxhkd)
				vim ~/.config/sxhkd/sxhkdrc
				printf "Configured sxhkd\n"
				;;
			polybar)
				vim ~/.config/polybar/config
				printf "Configured Polybar\n"
				;;
			filezilla)
				vim ~/.config/filezilla/filezilla.xml
				printf "Configured Filezilla\n"
				;;
			jgmenu)
				vim ~/.config/jgmenu/jgmenurc
				printf "Configured jgmenu\n"
				;;
			vim)
				vim ~/.vimrc
				printf "Configured Vim\n"
				;;
			ncmpcpp)
				vim ~/.ncmpcpp/config
				printf "Configured ncmpcpp\n"
				;;
			nbindings)
				vim ~/.ncmpcpp/bindings
				printf "Configured ncmpcpp bindings\n"
				;;
			mpd)
				sudo vim /etc/mpd.conf
				printf "Configured mpd\n"
				;;
			ranger)
				vim ~/.config/ranger/rc.conf
				printf "Configured ranger\n"
				;;
			runit1)
				sudo vim /etc/runit/1
				printf "Configured runit stage 1: Warning, changes will take effect next boot\n"
				;;
			runit2)
				sudo vim /etc/runit/2
				printf "Configured runit stage 2: Warning, changes will take effect next reboot\n"
				;;
			runit3)
				sudo vim /etc/runit/3
				printf "Configured runit stage 3: Warning, changes will take effect next shutdown\n"
				;;
			zsh)
				vim ~/.zshrc
				printf "Configured zsh\n"
				;;
			*)
				printf "Program to configure '%s' not found\n" "$1"
				false
				;;
		esac
	fi
}

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#4f4f53"


# What this next bit is: Use traditional ls aliases
# if logged in via ssh. if logged in locally, then determine if using
# a tty console or something else. use traditional ls aliases for
# tty always, otherwise use lsd (the rust project) with fancy icons
if [[ -n $SSH_CONNECTION ]]; then
	alias lsl="ls -Fl --group-directories-first --color=auto"
	alias lsa="ls -FA --group-directories-first --color=auto"
	alias lsla="ls -FlA --group-directories-first --color=auto"
	alias ls="ls -F --group-directories-first --color=auto"
else
	case "$(tty)" in
		*tty*)
			alias lsl="ls -Fl --group-directories-first --color=auto"
			alias lsa="ls -FA --group-directories-first --color=auto"
			alias lsla="ls -FlA --group-directories-first --color=auto"
			alias ls="ls -F --group-directories-first --color=auto"
			;;
		*pts*)
			alias lst="lsd -F --tree --group-dirs first --date relative --blocks permission,user,size,date,name --depth 4"
			alias lt="lsd -F --tree --group-dirs first --date relative --blocks permission,user,size,date,name --depth 4"
			alias lsta="lsd -FA --tree --group-dirs first --date relative --blocks permission,user,size,date,name --depth 4"
			alias lta="lsd -FA --tree --group-dirs first --date relative --blocks permission,user,size,date,name --depth 4"
			alias lstl="lsd -Fl --tree --group-dirs first --date relative --blocks permission,user,size,date,name --depth 4"
			alias ltl="lsd -Fl --tree --group-dirs first --date relative --blocks permission,user,size,date,name --depth 4"
			alias lstla="lsd -FlA --tree --group-dirs first --date relative --blocks permission,user,size,date,name --depth 4"
			alias lsla="lsd -FlA --group-dirs first --date relative --blocks permission,user,size,date,name"
			alias lsl="lsd -Fl --group-dirs first --date relative --blocks permission,user,size,date,name"
			alias lsa="lsd -FA --group-dirs first --date relative --blocks permission,user,size,date,name"
			alias ls="lsd -F --group-dirs first --date relative"
			;;
	esac
fi
alias library="vim ~/TannerBabcock/jams/index.php; pushd ~/TannerBabcock > /dev/null; git add jams/index.php > /dev/null; popd > /dev/null"
alias ..="cd .."
alias a="bat --wrap character -n "
alias c="cd "
alias cat="bat --wrap character -n "
alias e="cargo build --release"
alias k="make"
alias kc="make clean"
alias q="qemu-system-i386 -smp 1 -m size=2000M -kernel"
alias qi="qemu-system-i386 -smp 1 -m size=2000M -hda"
alias qd="qemu-system-i386 -gdb tcp::1234,ipv4 -smp 1 -m size=1200M -S -kernel"
alias qdi="qemu-system-i386 -gdb tcp::1234,ipv4 -smp 1 -m size=1200M -S -hda"
alias f="feh"
alias u="cd ~/Music"
alias o="cd ~/Documents"
alias d="cd ~/Downloads"
alias p="cd ~/Pictures"
alias i="cd ~/Videos"
alias m="mpv"
alias n="ncmpcpp"
alias g="git"
alias ga="git add"
alias gr="git rm"
alias grc="git rm --cached"
alias gs="git status"
alias gl="git log"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gpush="git push origin master"
alias gpull="git pull origin master"
alias v="vim"
alias reboot="sudo reboot"
alias shutdown="sudo shutdown -h now"
alias x="sudo zsh"
alias xk="xbindkeys -k"
alias xp="xprop"
alias df="df -h -T"

alias b="neofetch --package_managers on --distro_shorthand tiny --uptime_shorthand tiny --gap -1"
alias l="lsd -F --group-dirs first --date relative"
alias s="ssh tababcock@tannerbabcock.com -p 2222"
alias sc="scrot"
alias spi="ssh pi@192.168.0.18 -i ~/.ssh/laptop2pi_new"
alias jcommit="git commit -m '$(date)'; git push"
alias r="ranger"
alias tc="transmission-remote-cli"
alias tr="transmission-remote"
alias ts="transset"
alias z="tmux"

