#Output Text
echo ""
echo "Follow the white rabbit."
echo ""

export PATH=/usr/local/bin:$PATH

#Terminal Settings
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
export PS1="\u:\W derrickyoo$ "

#Virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
