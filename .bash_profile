# Put the current directory on the path
PATH=$PATH:.

# Change the command prompt to a custom command prompt
BLUE="\[$(tput setaf 4)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${BLUE}\u@${HOSTNAME}$ ${RESET}"

# set the default git editor to vim
export GIT_EDITOR=vim

# added by Anaconda3 4.1.1 installer
export PATH="/home/corbot/anaconda3/bin:$PATH"

source ~/.xinitrc

# source .bashrc
source ~/.bashrc



