# base-files version 4.1-1

# ~/.bashrc: executed by bash(1) for interactive shells.

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options ( $ help set)
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
if [ -f "${HOME}/dotfiles/.bash_aliases" ]; then
  source "${HOME}/dotfiles/.bash_aliases"
fi

# Functions
 if [ -f "${HOME}/dotfiles/.bash_functions" ]; then
   source "${HOME}/dotfiles/.bash_functions"
 fi

setEnvironment ${HOME}/.environment.conf

 # Local settings
if [ -f "${HOME}/dotfiles/.bash_local" ]; then
  source "${HOME}/dotfiles/.bash_local";
fi

#PS1="\[\e]2;\u@\h \w\a\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]T_T\[\e[0m\]; fi\`[\t \W]\\$ \]"
PS1="[\t \W]\\$ \]"

if [ "$TERM" == "screen" ]; then
    export PS1='\t $WINDOW \W\$ '
fi

case $- in
  *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
esac

