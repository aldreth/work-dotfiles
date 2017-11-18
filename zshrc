# Path to your oh-my-zsh installation.
export ZSH=/Users/edward/.oh-my-zsh

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

DEFAULT_USER=edward

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails bundler docker-compose vagrant)

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
alias cda="cd ~/work/api.codeclubworld.org/www"
alias cdc="cd ~/work/codeclub.org.uk/www"
alias cdu="cd ~/work/ups/ups"
alias cds="cd ~/work/ups/slash-learning-ui && nvm use"
alias cdm="cd ~/work/magazines"
alias vu="vagrant up && vagrant ssh"

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

export PATH="/Users/edward/.rbenv/shims:/usr/local/bin:/Users/edward/.bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
eval "$(rbenv init - --no-rehash zsh)"

# path for postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
# postgres.app seems to need this
export PGHOST=localhost

export APIARY_API_KEY="23664660b8b22c2c605a983fea4b7022"
# export JAVA_HOME=$(/usr/libexec/java_home)

export NVM_DIR="/Users/edward/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# gem editor
export GEM_EDITOR="atom"
export BUNDLER_EDITOR="atom"

$(boot2docker shellinit 2>/dev/null)

export PATH="$HOME/.bin:$PATH"
eval "$(rbenv init - --no-rehash)"

ssh-add -K 2>/dev/null;
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

# react native android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# tiny care terminal
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'
export TTC_REPOS='~/work,~/play'
export TTC_REPOS_DEPTH=2
export TTC_WEATHER='York, United Kingdom'
export TTC_CELSIUS=true
export TTC_UPDATE_INTERVAL=20
export TTC_CONSUMER_KEY=''
export TTC_CONSUMER_SECRET=''
export TTC_ACCESS_TOKEN='11474442-'
export TTC_ACCESS_TOKEN_SECRET=''
export TTC_GITBOT='gitlog'

# perl seemed to go wrong, cpan asked for these
PATH="/Users/edward/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/edward/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/edward/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/edward/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/edward/perl5"; export PERL_MM_OPT;

export PATH="$HOME/.yarn/bin:$PATH"
