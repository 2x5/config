# Path to your oh-my-zsh installation.
export ZSH=/Users/martinhinds/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="bureau"
# ZSH_THEME="bullet-train"
# ZSH_THEME=agnoster
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER=martin.hinds

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir node_version vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
# POWERLEVEL9K_MODE='nerdfont-fontconfig'
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_HIDE_BRANCH_ICON=true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

#export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export PATH=$PATH:$EC2_HOME/bin

export fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export PATH="/usr/bin/python:/usr/local/bin:$HOME/bin:$PATH"


# export PATH="$HOME/Library/Python/3.5/bin:$PATH"

export PATH="/Applications/MySQLWorkbench.app/Contents/MacOS:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source $HOME/.nvm/nvm.sh
export NVM_DIR=~/.nvm

export SLME=saplinglearning.me

alias openport='sudo lsof -i -P|grep -i "listen"'
alias psf='ps -ef|grep -v grep|grep'
alias durn='du -s *|sort -rn'
alias lh='ls -ltrh'

alias lb='git checkout @{-1}'
alias db='mysql --defaults-file=~/my.cnf'
alias slapidir='cd ~/projects/assess/slapi'
alias slapidocs='slapidir; cd routes; apidoc -i ./ -o ./../public/apidocs/ && open ../public/apidocs/index.html'

alias tuns='psf ssh|grep -v ssh-agent|grep -- "-L\ 4443"'
alias killtun='tuns|perl -anle "kill TERM => \$F[1]"'
alias pushcur='git push origin $(git status |perl -nle "/^On branch (\\S+)/ && print \$1" )'
alias pullcur='git fetch --all; git pull origin $(git status |perl -nle "/^On branch (\\S+)/ && print \$1" )'
alias rlnode='env NODE_NO_READLINE=1 rlwrap node'

alias vi=nvim
set -o vi

# alias ll='ls -lt | head -30'
alias ll='ls -lGFh'
alias psn='ps -ef|grep -i node'
alias cls=clear

alias ctags=/usr/local/bin/ctags

alias makeitem='~/bin/makeitem.sh $1'

## aws utils
export WORKSPACE="/Users/martinhinds/projects"
export SSHTAG_USER="admin"

export SSHTAG_KEY_DEV=~/.ssh/id_amazon_dev
export SSHTAG_KEY_SLDEV=~/.ssh/id_sldev
export SSHTAG_KEY_LIVE=~/.ssh/id_amazon_prod

## think next two are old??
export DEV_ENV_SSH_KEY=~/.ssh/id_amazon_dev
export LIVE_ENV_SSH_KEY=~/.ssh/id_amazon_prod

# export SLAPI_TEST_SERVER=http://localhost:3080
# export SLAPI_TEST_PASSWORD=fasterthansixmill
# export SLAPI_TEST_PASSWD=fasterthansixmill

alias sshtag='$WORKSPACE/awsutil/sshtag.sh'
alias dps='docker ps --format "table {{.ID}}\t{{.Ports}}\t{{.Status}}\t{{.Size}}\t{{.Names}}"'
alias dpsa='docker ps -a --format "table {{.ID}}\t{{.Ports}}\t{{.Status}}\t{{.Size}}\t{{.Names}}"'
alias drmall='docker rm -f $(docker ps -a -q)'
alias dimg='docker image ls'

nvm use 6

export PATH="$HOME/.yarn/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
