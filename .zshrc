# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tjkirch_mod"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-syntax-highlighting history-substring-search common-aliases battery git git-extras python tmux composer laravel4 laravel5 bower npm vagrant colorize)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.rvm/rubies/ruby-2.1.4/bin:$HOME/.rvm/bin:$HOME/PhpStorm-139.1348/bin:$HOME/npm-global/bin"

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# User Defined Area
autoload -U zutil
autoload -U compinit
autoload -U complist
compinit

setopt correctall
setopt autocd
setopt auto_resume
setopt extendedglob
setopt completeinword
unsetopt caseglob
# Prompts for confirmation after 'rm *' etc
# Helps avoid mistakes like 'rm * o' when 'rm *.o' was intended
setopt RM_STAR_WAIT
# Background processes aren't killed on exit of shell
setopt AUTO_CONTINUE

# History
HISTSIZE=50000
HISTFILE="$HOME/.zsh_history"
SAVEHIST=50000
setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
unsetopt hist_ignore_space      # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword


# Short command aliases
alias 'l=ls'
alias 'la=ls -A'
alias 'll=ls -la'
alias 'lq=ls -Q'
alias 'lr=ls -R'
alias 'lrs=ls -lrS'
alias 'lrt=ls -lrt'
alias 'lrta=ls -lrtA'
alias 'lrth=ls -lrth --si'
alias 'lrtha=ls -lrthA --si'
alias 'mkdir=mkdir -p'
alias 'dmesg=dmesg --ctime'
alias 'df=df --exclude-type=tmpfs'
alias 'j=jobs -l'
alias 'kw=kwrite'
alias 'tf=tail -F'
alias 'grep=grep --colour --devices=skip'
alias 'e=emacs -nw'
alias 'vnice=nice -n 20 ionice -c 3'
alias 'get_iplayer=get_iplayer --nopurge'
alias 'get-iplayer=get-iplayer --nopurge'
alias "tree=tree -I 'CVS|*~'"
alias 'lo=libreoffice'
alias 'synchist=fc -RI'

# Play safe!
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'

# USER DEFINED AREA
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/.alias_functions ]; then
    . ~/.alias_functions
fi

# Specific for every installation
if [ -f ~/.aliases_local ]; then
    . ~/.aliases_local
fi

export EDITOR='vim'

export LC_ALL="en_US.UTF-8"

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/Projects/Python
source /usr/local/bin/virtualenvwrapper.sh
