if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

##
# Your previous /Users/dky/.bash_profile file was backed up as /Users/dky/.bash_profile.macports-saved_2013-07-27_at_15:49:52
##

# MacPorts Installer addition on 2013-07-27_at_15:49:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH
