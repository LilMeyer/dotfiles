
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

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
