if [ -f ~/.profile ]; then
      . ~/.profile
fi

if [ -f ~/.bashrc ]; then
      . ~/.bashrc
fi



##
# Your previous /Users/dg/.bash_profile file was backed up as /Users/dg/.bash_profile.macports-saved_2015-12-23_at_09:45:08
##

# MacPorts Installer addition on 2015-12-23_at_09:45:08: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

