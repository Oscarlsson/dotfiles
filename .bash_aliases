# SSH-config completion
if [[ -f $HOME/.ssh/config ]]; then
        complete -W "$(grep '^Host ' $HOME/.ssh/config | sort -u | sed 's/^Host //')" ssh autossh mosh
fi

# What is taking all my space?
alias diskspace="du -S | sort -n -r |more"

#Quick move
alias cdskola="cd ~/Skola"
alias cddev="cd ~/Development"


# Extract - Found somewhere
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

# Go up in dir, instead of cd ../..
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}


# different prompt on ssh and local
function __setprompt {
  local BLUE="\[\033[0;34m\]"
  local NO_COLOUR="\[\033[0m\]"
  local SSH_IP=`echo $SSH_CLIENT | awk '{ print $1 }'`
  local SSH2_IP=`echo $SSH2_CLIENT | awk '{ print $1 }'`
  if [ $SSH2_IP ] || [ $SSH_IP ] ; then
    local SSH_FLAG="@\h"
  fi
  PS1="$BLUE[\$(date +%H:%M)][\u$SSH_FLAG:\w]\\$ $NO_COLOUR"
  PS2="$BLUE>$NO_COLOUR "
  PS4='$BLUE+$NO_COLOUR '
}
__setprompt



alias mv='mv -i'