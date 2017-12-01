# This is a bash resource file for our systems.
# email cseithelp@umn.edu if you have any problems with it.
#
# See /usr/share/doc/bash for more info on bash.
#
#-----------------------------------------------------------------------------
#   The umask sets the access permissions for any new files you create.
#   Common umasks:
#     077 - our default - removes all permissions except the owner's
#     022 - the standard unix default - removes write permissions for
#           everyone other than the owner.  (Allows others to read most
#           of your files.)
#     027 - removes write permissions for the members of a file's group,
#           and removes all permissions for all others.
#   For an explanation of the octal encoding, see "man chmod".
#

umask 077


# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set a default prompt
PS1='\u@\h:$(pwd) \$ '

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

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

# Git autocompletion for bash shell
# Requires git-completion.bash
# Corey added this 11-3-17
source ~/git-completion.bash

#
# Some nice Defaults
#
export PAGER=less
export EDITOR=vim
export VISUAL=vim

# This section determines how your modules are set up.  To change this,
# you should use the following commands at the prompt:
# 
#   module initadd <module name>
#   module initrm <moudule name>
#
# Try "man module" for more information on the module command.
#
MODULESINIT="/usr/local/modules-tcl/init/bash"
if [ -f $MODULESINIT ]; then
   . $MODULESINIT
   module use ~/.modules
   module load java system
fi
unset MODULESINIT

PATH=/project/s17c5103/os161/tools/sys161/bin:/project/s17c5103/os161/tools/os161/bin:$PATH
