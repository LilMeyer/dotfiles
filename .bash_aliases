
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias cat-last='cat `find . -maxdepth 1 -type f -printf "%T@;%Tc;%p\n" | sort -n | cut -d";" -f3 | tail -n 1`'
alias tail-last='tail `find . -maxdepth 1 -type f -printf "%T@;%Tc;%p\n" | sort -n | cut -d";" -f3 | tail -n 1`'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# Sublime text
alias s='subl .'

# Git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gp='git push'
alias gf='git fetch'
alias gc-latest-tag='git checkout $(git describe --tags `git rev-list --tags --max-count=1`)'

# Sound
alias sound-up="pactl set-sink-volume 0 -- +10%"
alias sound-down="pactl set-sink-volume 0 -- -10%"
alias sound-up2="amixer -D pulse sset Master 5%+"
alias sound-down2="amixer -D pulse sset Master 5%-"

# Cisco
alias cisco="( /opt/cisco/anyconnect/bin/vpnui &)"

# Explorer
alias e="(thunar &)"

# Sleep
alias sleep="sudo pm-suspend"

# Netstat, find out which process is listening upon a port
# See http://www.cyberciti.biz/faq/what-process-has-open-linux-port/
# Replace ' by '\'' for escaping
alias netstat-who='netstat -tlp | awk '\''{print $4"\t" $7}'\'' | column -t'

# Get public ip address
alias get-ip='wget http://ipinfo.io/ip -qO -'
