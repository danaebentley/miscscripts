# my aliases 

# Weather in Kitchener 
alias weather='curl wttr.in/kitchener' 

#  ~/Downloads 
alias downloads='cd ~/Downloads && PS1="\[\033[38;5;159m\]\u\[$(tput sgr0)\]\[\033[38;5;227m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;230m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;177m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\] \n" && ls' 

# Same but documents 

alias documents='cd ~/Documents && PS1="\[\033[38;5;159m\]\u\[$(tput sgr0)\]\[\033[38;5;227m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;230m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;177m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\] \n" && ls' 

# shorten prompt anywhere  
alias shorten='PS1="\[\033[38;5;159m\]\u\[$(tput sgr0)\]\[\033[38;5;227m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;230m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;177m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\] \n" && ls' 

# Get only VPN IP addresses 

alias tunnel='ip addr show tun0 | grep -o -P ".{0,15}peer"' 

# ls with directories grouped first 

alias lg="ls -l --group-directories-first" 

# enable programmable completion features (you don't need to enable 
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile 
# sources /etc/bash.bashrc). 

if ! shopt -oq posix; then 
  if [ -f /usr/share/bash-completion/bash_completion ]; then 
    . /usr/share/bash-completion/bash_completion 
  elif [ -f /etc/bash_completion ]; then 
    . /etc/bash_completion 
  fi 
fi 

forget_host () { 

  ip=$(getent hosts $1 | awk '{ print $1 }') 
  ssh-keygen -f "/home/dana/.ssh/known_hosts" -R $1 
  ssh-keygen -f "/home/dana/.ssh/known_hosts" -R $ip 
  echo removed host $1 with the ip $ip 
  ssh-copy-id administrator@$1 
} 

forget_bot () { 
  ip=$(getent hosts robot-ph-cpe$1 | awk '{ print $1 }') 
  ssh-keygen -f "/home/dana/.ssh/known_hosts" -R robot-ph-cpe$1 
  ssh-keygen -f "/home/dana/.ssh/known_hosts" -R $ip 
  echo removed host robot-ph-cpe$1 with the ip $ip 
  ssh-copy-id administrator@robot-ph-cpe$1 
} 

# lcd to cd and ls in one command 
# From https://www.quora.com/What-is-the-most-useful-bash-script-that-you-have-ever-written 
alias lcd=changeDirectory 
function changeDirectory { 
cd $1 ; ls -la 
} 

# Restrict ping to 5 attempts
alias ping='ping -c 5'

# External ip address
alias ipext='curl ipinfo.io/ip'



