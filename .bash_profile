export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\u@\h\[\033[01;34m\]:\W\[\033[00m\]\$(__git_ps1 '(%s)') "
export PATH="$HOME/.local/bin:$PATH"