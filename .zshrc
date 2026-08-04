# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(docker docker-compose httpie nvm git vscode zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh

# ============================== Aliases ==============================
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Shell & files
alias tsh="trash"
# alias rm="trash"
alias mkdir="take"
alias ls="lsd"
alias ll="lsd -l"
alias tree="lsd --tree"
alias vim="nvim"
alias python="python3"
alias find_node_modules="find . -name 'node_modules' -type d -prune"
alias remove_node_modules="find . -name node_modules -type d -prune -exec trash {} +"

# Navigation
alias home="cd ~"
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias cfg="cd ~/.config"
alias pro="cd ~/Projects"
alias start="cd ~/Startups"
alias dexus="cd ~/Startups/Dexus"
alias boots="cd ~/Projects/boot-dev"
alias epic="cd ~/Projects/epic"
alias egg="cd ~/Projects/egghead"
alias mas="cd ~/Projects/master"
alias ai="cd ~/Projects/ai-hero"
alias db="cd ~/Projects/db-school"

# Git  (gsw / gswc / gst are already provided by the git plugin)
alias grlo="git reflog"
alias glo="git --no-pager log --decorate=full --oneline"
alias gch="git checkout"
alias gre="git rebase"
alias grei="git rebase -i"
alias gsta="git stash"
alias gstap="git stash pop"
alias gstal="git stash list"

unalias feat 2>/dev/null
unalias fix 2>/dev/null
unalias perf 2>/dev/null
unalias refactor 2>/dev/null
unalias docs 2>/dev/null
unalias tests 2>/dev/null
unalias build 2>/dev/null
unalias ci 2>/dev/null
unalias chore 2>/dev/null
unalias push 2>/dev/null
unalias style 2>/dev/null
unalias revert 2>/dev/null
unalias breaking 2>/dev/null

# Git feat function for conventional commits. New feature. MINOR bump.
feat() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "feat($scope): $message" && git push
}

# Git fix function for conventional commits. Bug fix. PATCH bump.
fix() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "fix($scope): $message" && git push
}

# Git perf function for conventional commits. Faster/lighter, same behavior. PATCH bump.
perf() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "perf($scope): $message" && git push
}

# Git refactor function for conventional commits. Restructure, no behavior change.
refactor() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "refactor($scope): $message" && git push
}

# Git docs function for conventional commits. README, JSDoc, comments.
docs() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "docs($scope): $message" && git push
}

# Git test function for conventional commits. Tests only.
tests() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "test($scope): $message" && git push
}

# Git build function for conventional commits. Deps, bundler, tsconfig, turbo.json.
build() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "build($scope): $message" && git push
}

# Git ci function for conventional commits. GitHub Actions, pipelines.
ci() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "ci($scope): $message" && git push
}

# Git chore function for conventional commits. Everything else.
chore() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "chore($scope): $message" && git push
}

# Push function for "fix: tweak" message. No scope. Hardcoded message.
push() {
  git add . && git commit -m "fix: tweak" && git push
}

# Git style function for conventional commits. Formatting/whitespace only.
style() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "style($scope): $message" && git push
}

# Git revert function for conventional commits. Undoing a prior commit.
revert() {
  local scope="$1"
  local message="$2"
  git add . && git commit -m "revert($scope): $message" && git push
}

# Breaking change. MAJOR bump.
# usage: breaking feat api "drop v1" "use /v2 instead"
breaking() {
  local type="$1"
  local scope="$2"
  local message="$3"
  local note="$4"
  git add . && git commit -m "$type($scope)!: $message" -m "BREAKING CHANGE: $note" && git push
}

# Docker  (dps is already provided by the docker plugin)
alias dimg="docker images"
alias dc="docker compose"
alias dcu="docker compose up"
alias dcd="docker compose down -v"
alias dsysp="docker system prune"
alias dki="docker kill"

## Zed Editor
alias z="zed"
alias zz="zed ~/.zshrc"
alias s="source ~/.zshrc"

# AI tools
alias ccu="npx ccusage@latest"

# ============================== AI Tools ==============================
# Codex: GPT-5.6 Terra, high reasoning
cx() {
  codex \
  -m gpt-5.6-terra \
  -c 'model_reasoning_effort="high"' \
  -a on-request \
  "$@"
}

cxr() {
  cx resume "$@"
}

cxrl() {
  cx resume --last "$@"
}

msol() {
  codex \
    -m gpt-5.6-sol \
    -c 'model_reasoning_effort="max"' \
    -s workspace-write \
    -a on-request \
    "$@"
}

psol() {
  msol "$(pbpaste) --- $@"
}

# Claude Code
cc() {
	claude "$@"
}

ccr() {
  cc --resume "$@"
}

ccrl() {
  cc --continue "$@"    # last session in cwd
}

opus() {
	cc  "$@" --model "opus"
}

mopus() {
	cc  "$@" --model "opus" --effort "max" --permission-mode auto
}

mable(){
	cc  "$@" --model "fable" --effort "max"
}

dopus(){
  cc --dangerously-skip-permissions "$@" --model "opus"
}

popus(){
  dopus "$(pbpaste) --- $@"
}

# ========================= Environment & PATH ========================
export LANG=en_US.UTF-8

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                    # load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # load completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# starship prompt
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# envman (auto-generated; do not edit)
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# go, postgres, sqlite
export PATH="$PATH:$HOME/.local/opt/go/bin"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

# unsetopt autocd
