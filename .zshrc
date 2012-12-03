# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew gem example)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#alias ls='ls -a'
#
#
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
set -o vi
export EDITOR='mvim -f'
# make os find my installed ruby before mac original one's
#export PATH=/Users/frontfoot/.rvm/src:/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH

# adding mysql to the path
export PATH=$PATH:/usr/local/mysql/bin:~/sbin

export PATH=$PATH:/usr/local/sbin

# Add new commands to command line
alias ls='ls -a'

# RVM configuration
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Increase the size of my bash shell history
HISTFILESIZE=2000

# Git stuff
# git-rebase aliases -- http://notes.envato.com/developers/rebasing-merge-commits-in-git/ -- thanks Glen's @ envato.com
function git_current_branch() {
  git symbolic-ref HEAD 2> /dev/null | sed -e 's/refs\/heads\///'
}
alias gpush='git push origin HEAD:$(git_current_branch)'
alias grb='git rebase -p'
alias gpull='git fetch origin && grb origin/$(git_current_branch)'
alias gm='git merge --no-ff'
alias gpnp='gpull && gpush'
# all in one super git stash and do - inspired from Dam5s aliases
alias gsl='git stash list'
alias gspull='git stash && gpull && git stash pop || true'
alias gspnp='gspull && gpush'
alias be='bundle exec'
