# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="steeef"
ZSH_THEME="geoffgarside"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
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
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/opt/intel/composer_xe_2013.5.192/bin/intel64:/opt/intel/composer_xe_2013.5.192/mpirt/bin/intel64:/opt/intel/composer_xe_2013.5.192/bin/intel64:/opt/intel/composer_xe_2013.5.192/bin/intel64_mic:/opt/intel/composer_xe_2013.5.192/debugger/gui/intel64:/home/bradcater/perl5/bin:/opt/SenchaSDKTools-2.0.0-beta3:/home/bradcater/Applications/torquebox-2.3.0/jruby/bin:/usr/lib/jvm/jdk1.7.0_06/bin:/home/bradcater/.rvm/gems/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/gems/ruby-1.9.1-p378@global/bin:/home/bradcater/.rvm/rubies/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/pgsql/bin/:/home/bradcater/bin:/usr/local/go/bin:/usr/local/pgsql/bin/:/home/bradcater/.rvm/bin:/home/bradcater/.panjiva_ec2/bin

alias ack="ack-grep"
alias psq="psql -U betterif_user betterif_development"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "/home/`whoami`/.rvm/scripts/rvm" ]] && source "/home/`whoami`/.rvm/scripts/rvm"
