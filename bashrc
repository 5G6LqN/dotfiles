PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Set the default editor to vim.
export EDITOR=vim

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Add bash aliases.
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

OS_NAME=$(uname -s)
export LC_CTYPE=C
export LANG=C
#export PYTHONDONTWRITEBYTECODE=1
case $OS_NAME in
    Darwin)
        # add MacPorts and MySQL to PATH
        export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH
        ;;
esac

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
        . /opt/local/etc/profile.d/bash_completion.sh
fi

# Android
if [ -d "/Applications/android/adt-bundle-mac-x86_64-20140702/sdk//platform-tools" ] ; then
      export PATH="/Applications/android/adt-bundle-mac-x86_64-20140702/sdk/platform-tools:$PATH"
fi

. /Users/dg/bin/django_bash_completion
. /Users/dg/bin/git-completion.bash
#. /opt/local/etc/bash_completion
. /opt/local/share/git-core/git-prompt.sh

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"

function _my_git_prompt() {
    local git_prompt="$(__git_ps1)"
    if [[ "$git_prompt" ==  *"*$"* ]]; then
        echo -n "$(tput setaf 1)$git_prompt"
    else
        echo -n "$(tput setaf 2)$git_prompt"

    fi
}

function _git_prompt() {
    local git_status="`git status -unormal 2>&1`"
    if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
        if [[ "$git_status" =~ sauber ]]; then
            echo "bla"
            local ansi=42
        elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
            local ansi=43
        else
            echo $git_status
            local ansi=45
        fi
        if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
            branch=${BASH_REMATCH[1]}
            test "$branch" != master || branch=' '
        else
            # Detached HEAD.  (branch=HEAD is a faster alternative.)
            branch="(`git describe --all --contains --abbrev=4 HEAD 2> /dev/null ||
            echo HEAD`)"
        fi
        echo -n '\[\e[0;37;'"$ansi"';1m\]'"$branch"'\[\e[0m\] '
    fi
 }


#PS1='\[\e]0;\u@\h: \w\a\]\[\033[01m\]\d \t \u@\h\[\033[00m\] $(__git_ps1 " (%s)")\n\w \$ '
#PS1='[\u@\h \W$(__git_ps1 " (%s)"]\$ '
#PS1="$RED\h $BLUE\w$YELLOW \$(__git_ps1)$GREEN\$ "
#PS1="$RED\h $BLUE\w$YELLOW \$(__git_ps1)\$ \e[m"
PS1="$RED\h $BLUE\w$YELLOW \$(_my_git_prompt)\$ \e[m"
# \[\033[00m\] zurücksetzne Farbe
GIT_PS1_SHOWDIRTYSTATE=y
GIT_PS1_SHOWSTASHSTATE=y
GIT_PS1_SHOWUNTRACKEDFILES=y


. $HOME/.bash_prompt
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=Exfxcxdxbxegedabagacad
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'


#export DJANGO_SETTINGS_MODULE=project.settings



##
# Your previous /Users/dg/.bash_profile file was backed up as /Users/dg/.bash_profile.macports-saved_2014-10-19_at_21:14:54
##

# MacPorts Installer addition on 2014-10-19_at_21:14:54: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


