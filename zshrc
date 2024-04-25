# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/edward.andrewshodgson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

DEFAULT_USER=edward.andrewshodgson

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker-compose docker jira kubectl zsh-completions alias-tips zsh-autosuggestions zsh-syntax-highlighting)
autoload -U compinit && compinit

# This enables Zsh to understand commands like docker run -it ubuntu.
# However, by enabling this, this also makes Zsh complete
# docker run -u<tab> with docker run -uapprox which is not valid.
# The users have to put the space or the equal sign themselves before trying to complete.

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

export JIRA_URL=https://anaplansite.atlassian.net
export JIRA_API_USER=edward.andrewshodgson@anaplan.com
export JIRA_API_TOKEN=''
export JIRA_ACCOUNT_ID=waVw0kZ9tryR9uipHWlI84E6
export DEFAULT_JIRA_BACKLOG=LOTUS

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
alias cdp="cd ~/Developer/play"
alias cdw="cd ~/Developer/work"

# dashvis stop & start
# make stack versions
# alias mr="make -C ~/Developer/work/dashboards-and-visualisations down run"
# alias mrd="make -C ~/Developer/work/dashboards-and-visualisations down"
# alias mrm="make -C ~/Developer/work/dashboards-and-visualisations down run-model-ui"
# alias mrmcc="make -C ~/Developer/work/dashboards-and-visualisations down run-model-ui-core-client"
# alias mrp="make -C ~/Developer/work/dashboards-and-visualisations down run-planning-hub"
# alias mrh="make -C ~/Developer/work/dashboards-and-visualisations down run-home"
# alias mmrs="make -C ~/Developer/work/dashboards-and-visualisations/resources/dev-stack/model-ui stop start"

# tilt stack versions
alias mts="make tilt-setup"
alias mr="tilt up -- --profile springboard-ui"
alias mrd="make -C ~/Developer/work/dashboards-and-visualisations tilt-down"
alias mrm="tilt up -- --profile model-ui"
alias mrmcc="tilt up -- --profile model-ui-core-client"
alias mrp="make -C ~/Developer/work/dashboards-and-visualisations down run-planning-hub"
alias mrh="tilt up -- --profile home"

# make pr from any directory
alias mpr="make -C ~/Developer/work/dashboards-and-visualisations pr-gari"

# Delete node_modules in directory & all sub-directories
alias rmnm="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;"

# Find my ip address when on wifi
alias myip="ipconfig getifaddr en0"

# unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

export PATH="$PATH:/usr/local/bin:/Users/edward.andrewshodgson/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$HOME/.local/bin"


# path for postgres.app
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# gem editor
export GEM_EDITOR="code --wait"
export BUNDLER_EDITOR="code --wait"

# node
export NODE_ENV="development"

# Rust-lang
export PATH="$HOME/.cargo/bin:$PATH"

# Completions
fpath+=~/.zfunc
compinit

# cd'ing to frequently-used directories - https://thoughtbot.com/blog/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME/Developer $HOME/Developer/work $HOME/Developer/work/dashboards-and-visualisations/packages $HOME/Developer/work/dashboards-and-visualisations/resources $HOME/Developer/work/dashboards-and-visualisations/workspaces $HOME/Developer/play)

# Rusty care terminal
export RCT_REPOS="/Users/edward.andrewshodgson/Developer/work,/Users/edward.andrewshodgson/Developer/play"

# give node more memory
export NODE_OPTIONS="--max-old-space-size=16384"

# for c in $(IFS=$'\n' find ~/.kube/contexts -type f -name "*.yaml")
# do
#   export KUBECONFIG=$c:$KUBECONFIG
# done

# aws profile
export AWS_PROFILE=ap-lotus-dev

export LAUNCHDARKLY_AUTH_TOKEN=api-336fc06b-29f1-4e85-9e65-b83e7615d2e7

# gcloud cli
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

tiny-care-terminal(){
  docker build ~/Developer/play/tiny-care-terminal-wrapper -t tiny-care-terminal-docker & \
	clear & \
  	docker run -it --rm \
	  -v ~/Developer/play:/code/play \
	  -v ~/Developer/work:/code/work \
	  -v ~/.gitconfig:/root/.gitconfig \
	  tiny-care-terminal-docker
}

#
. $(brew --prefix asdf)/libexec/asdf.sh
. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash
. ~/.asdf/plugins/java/set-java-home.zsh

# pnpm
export PNPM_HOME="/Users/edward.andrewshodgson/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k.zsh.
[[ ! -f ~/.dotfiles/p10k.zsh ]] || source ~/.dotfiles/p10k.zsh

eval "$(atuin init zsh)"
