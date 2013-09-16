# Fun Output Text
echo ""
echo "Follow the white rabbit."
echo ""

export PATH=/usr/local/bin:$PATH

# Terminal Settings
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
export PS1="\u:\w $ "

# Virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.3/bit:$PATH"

# PostgreSQL
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
