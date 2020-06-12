# Path to your oh-my-zsh installation.
export ZSH=/Users/edwardandrewshodgson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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

DEFAULT_USER=edwardandrewshodgson

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails docker-compose docker jira kubectl)

export JIRA_URL=https://anaplansite.atlassian.net

# User configuration

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
alias cdw="cd ~/work"
alias mr="nvm use && make -C ~/work/dashboards-and-visualisations down run"
alias mrd="nvm use && make -C ~/work/dashboards-and-visualisations down"
alias mrm="nvm use && make -C ~/work/dashboards-and-visualisations down run-model-ui"
alias mrp="nvm use && make -C ~/work/dashboards-and-visualisations down run-planning-hub"

# Delete node_modules in directory & all sub-directories
alias rmnm="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;"

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

export PATH="/usr/local/bin:/Users/edwardandrewshodgson/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

eval "$(rbenv init -)"

# path for postgres.app
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# gem editor
export GEM_EDITOR="code --wait"
export BUNDLER_EDITOR="code --wait"

# node
export NODE_ENV="development"

# tiny care terminal
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'
export TTC_REPOS='/Users/edwardandrewshodgson/work,/Users/edwardandrewshodgson/play'
export TTC_REPOS_DEPTH=2
export TTC_WEATHER='York, United Kingdom'
export TTC_CELSIUS=true
export TTC_UPDATE_INTERVAL=20
export TTC_CONSUMER_KEY='a6x1uH6F77hYvtNPR1kkkZpR3'
export TTC_CONSUMER_SECRET='7YNhq80l5TBVlwmSizBGXDZIyfJMQOptfAKEgjaX3cULPLEVPQ'
export TTC_ACCESS_TOKEN='11474442-046FtwMneztt3N63C7eUiaFnJlOMu2OZSr12g9lXx'
export TTC_ACCESS_TOKEN_SECRET='NnJhYTFs7v7hPPvs6LTTqGFISZcqNB7avnnRS2rcBlWf2'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust-lang
export PATH="$HOME/.cargo/bin:$PATH"

# python
export PATH=$HOME/Library/Python/3.7/bin:$PATH

# Completions
fpath+=~/.zfunc
compinit

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/edwardandrewshodgson/.sdkman"
[[ -s "/Users/edwardandrewshodgson/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/edwardandrewshodgson/.sdkman/bin/sdkman-init.sh"

# adb/android
export PATH=$HOME/Library/Android/sdk/platform-tools/adb:$PATH

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/edwardandrewshodgson/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

export GROOVY_HOME=/usr/local/opt/groovy/libexec

# cd'ing to frequently-used directories - https://thoughtbot.com/blog/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME $HOME/work $HOME/work/dashboards-and-visualisations/packages $HOME/work/dashboards-and-visualisations/workspaces $HOME/play)
