# Standard .bashrc extensions.

alias ack="ack-grep"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH=/home/bradcater/.rvm/gems/ruby-1.9.3-p125/bin:/home/bradcater/.rvm/gems/ruby-1.9.3-p125@global/bin:/home/bradcater/.rvm/rubies/ruby-1.9.3-p125/bin:/home/bradcater/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/pgsql/bin/
export PGDATA=/usr/local/pgsql/data/
