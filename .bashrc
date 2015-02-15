# The Matrix Has You
echo ""
echo "Follow the white rabbit.🐇 "
echo ""

# PATH
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=/usr/local/git/bit/:$PATH

# Virtualenv and Virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Git
source ~/.bash_completion.d/.git-completion.sh
source ~/.bash_completion.d/.git-flow-completion.sh
source ~/.bash_completion.d/.git-prompt.sh

# Prompt
# export PS1="\u:\w $ "
export PS1="\u:\W\$(__git_ps1 ' (%s)')🐇  "

# PostgreSQL
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
