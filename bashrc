# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
#alias l='ls -CF'

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color | rxvt | rxvt-unicode | screen)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\][\t]: \[\033[01;34m\]\w\[\033[00m\] \$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}: ${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profiles
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#always use vim
alias vi=vim
alias view="vim -R"

#pwd should expand sym-links
alias pwd="pwd -P"

shopt -s cdspell

#export CDPATH=.:~:~/cvs


PATH=~/bin:$PATH:/usr/java/jdk1.5.0/bin/:/scratch/aks/eclipse/:/scratch/aks/idea-3542/bin:/scratch/aks/jprofiler5/bin:/scratch/aks/last.fm-1.4.2.58240/bin

export CVSROOT=":pserver:aks@cvs.dsl.local:/home/dev/cvsroot"
export EDITOR="vim"

export NNTPSERVER=nntp.aioe.org

export FIGNORE=CVS:.svn

#Agent Controller, for eclipse profiler
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/profiler/lib
export PATH=$PATH:~/profiler/bin
export RASERVER_HOME=~/profiler

export JAVA_HOME=/usr/java/latest
export JDK_HOME=/usr/java/latest

#groovy
export GROOVY_HOME=/scratch/aks/groovy/groovy-1.0-jsr-05
PATH=$PATH:/scratch/aks/groovy/groovy-1.0-jsr-05/bin

#grails
export GRAILS_HOME=/home/local/aks/grails/grails-0.2.2
PATH=$PATH:$GRAILS_HOME/bin

#maven
PATH=$PATH:/scratch/aks/maven-1.0.2/bin

export PATH

alias osd_cat="osd_cat -p middle -A center -s 3 -f -*-*-*-*-*-*-144-*-*-*-*-*-*-"
alias firefox-clean="rm ~/.mozilla/firefox/*/{lock,.parentlock}"
alias eclipse-clean="rm ~/workspace/.metadata/.lock"
export TERM=rxvt


#useful constants
export PUBLISHMTR=/home/shared/companies/IR/publish/MTR

alias spotify="/opt/cxchromium/bin/wine \"c:/Program Files/Spotify/spotify.exe\""
