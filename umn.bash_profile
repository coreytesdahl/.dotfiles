[[ -f ~/.bashrc ]] && . ~/.bashrc

# Change the command propt to a custom command prompt
BLUE="\[$(tput setaf 4)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${BLUE}\u@${HOSTNAME}$ ${RESET}"

# Set the default git editor to vim
export GIT_EDITOR=vim

