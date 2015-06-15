
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/bin
# Add macports to PATH
PATH=$PATH:/opt/local/bin:/opt/local/sbin

# Add mysql to PATH
PATH=$PATH:/opt/local/lib/mysql51/bin/

PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/

# Add virtualenvwrapper stuff
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/opt/local/bin/python2.7
source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
