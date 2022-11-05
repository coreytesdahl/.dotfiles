# Dotfiles

## Introduction
My dotfiles are broken into two parts.
1. A core set of functionality which persists across all of my 
   compute environments.
2. Additional site and role specific add on functionality which
   is not shared between environments. These configurations
   are implemented locally and not merged into .dotfiles
   master branch.

## Automated Environment User Setup And Configuration
The environment_setup.sh script automates the process of ensuring
that my core development environment is established if it hasn't been already.
It then identifies the system environment where it's being
run and ensures that any system specific development environment settings
are configured. The idea is that I should be able to logon to a system
with root access, clone my dotfiles repository, run the environment_setup.sh
script and wait for this script to establish my desired development environment
specific to that system. Then I should be able to log off and log
back into that system using my expected user credentials and carry forward with
my expected environment.

## Core Configurations
### .bash_profile

### .bashrc

### .bash_aliases

### .tmux.conf
#### Plugins

### .vimrc
#### Plugins


