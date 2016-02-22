# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"


# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting bundler osx rake ruby zsh-completions battery)

DISABLE_UPDATE_PROMPT=true
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/usr/local/mongodb/bin"

# Functions
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# Git aliases

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias ghist="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gshist="git log --graph --oneline --decorate --all"
alias got='git '
alias get='git '
alias gundo="git reset HEAD~1 --soft"
alias gunstage="git reset HEAD"
alias ffetch="git fetch upstream && git rebase upstream/development"
alias gupd="git push upstream development"
alias gsdev="git reset --hard upstream/development" #sync fork dev branch with viper dev branch


# Atom

alias a="atom "

# Basic command line aliases

alias pgr="ps aux | grep"
alias pegr="ps aux | egrep -w"
alias pspr="ps aux | egrep -w 'redis|solr|rails|sidekiq|puma|rails|mailcatcher'"
alias k="kill -9"
alias ll="ls -lhA"
alias tailf="tail -f log/development.log"
alias tailt="tail -f log/test.log"

# Ruby

alias be="bundle exec"
alias bi="bundle install"
alias b="bundle"
alias gemst="gem install"
alias rc="rails console"
alias rcs="rails console -s"
alias rls="rails server"
alias super="supervisord -n"
alias rdm="rake db:migrate"
alias rdrb="rake db:rollback"
alias rdbr="rake db:reset"
alias rddr="rake db:drop"
alias rdbc="rake db:create"


# Network
alias myMAC="ifconfig en1 | grep ether"
alias arpa="arp -a" #finds MAC addresses connected to network
alias spMAC="sudo ifconfig en1 ether " # add mac address to spoof on the end

# Port and process mgt
alias whatisrunning="lsof -iTCP:" #follow this by the port number

# Misc
alias o="open"
alias shs="./server.sh"
alias nyan="nc -v nyancat.dakko.us 23"
alias starwars="telnet towel.blinkenlights.nl"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias update="upgrade_oh_my_zsh"

# Node
export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh
