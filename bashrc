# Standard .bashrc extensions.

alias ack="ack-grep"
alias sus="sort | uniq -c | sort -nr"

alias upgrade="tsocks sudo apt-get update && tsocks sudo apt-get upgrade"

alias fixwindows="gtk-window-decorator --replace &"

alias bdropbox="HOME=$HOME/.dropbox-betterific /usr/bin/dropbox start"
alias backup="rvm use default && bundle exec rake backup:db"

alias betterif="mosh --ssh \"ssh -i ~/.ssh/betterif.pem\" ec2-user@23.21.38.100"
alias betterif_ssh="ssh -i ~/.ssh/betterif.pem ec2-user@23.21.38.100"
alias betterif_db="mosh --ssh \"ssh -i ~/.ssh/betterif.pem\" ec2-user@23.20.233.17"
alias betterif_db_ssh="ssh -i ~/.ssh/betterif.pem ec2-user@23.20.233.17"
alias betterif_app="mosh --ssh \"ssh -i ~/.ssh/betterif.pem\" ec2-user@174.129.48.68"
alias betterif_app_ssh="ssh -i ~/.ssh/betterif.pem ec2-user@174.129.48.68"
alias betterif_slave="mosh --ssh \"ssh -i ~/.ssh/betterif-west.pem\" ec2-user@54.245.41.132"
alias betterif_slave_ssh="ssh -i ~/.ssh/betterif-west.pem ec2-user@54.245.41.132"

alias stella_ssh="ssh -i ~/.ssh/betterif.pem ec2-user@stella.betterific.com"
alias sam_ssh="ssh -i ~/.ssh/betterif.pem ubuntu@sam.betterific.com"

alias bridj="ssh -i ~/.ssh/bridj.pem ec2-user@107.22.34.122"
alias crr="ssh robotretail@robotretail.webfactional.com"

alias stag_launch="rvm use default && MIGRATE=0 BUILD_WEBP_ROLLUPS=0 COMPILE_ASSETS=0 cap staging deploy"

alias betterif_unicorn="RACK_ENV=none RAILS_ENV=development bundle exec unicorn -c config/unicorn.rb -p 3000"

alias clean_logs="sudo rm /var/log/tomcat7/localhost_access_log.*.txt ; sudo rm /var/log/tomcat7/localhost.*.log ; sudo rm /var/log/tomcat7/catalina.*.log"

# Remember that ^M is CTRL-M.
alias dos_files="find . -name '*.php' -print0 | xargs -0 grep -l '^M$'"
alias large_files="find . -type f -size +50000k -exec ls -lh {} \; | awk '{ print $9 \": \" $5 }'"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH=/home/bradcater/.rvm/gems/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/gems/ruby-1.9.1-p378@global/bin:/home/bradcater/.rvm/rubies/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/pgsql/bin/
export PGDATA=/usr/local/pgsql/data/
export PATH=$PATH:$HOME/bin

# Taken from solr installation.
#export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Taken from
# http://www.devsniper.com/ubuntu-12-04-install-sun-jdk-6-7/
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_06
export PATH=$JAVA_HOME/bin:$PATH
alias j="JAVA_HOME=/usr/lib/jvm/jdk1.7.0_06"
export TORQUEBOX_HOME=~/Applications/torquebox-2.3.0
export JBOSS_HOME=$TORQUEBOX_HOME/jboss
export JRUBY_HOME=$TORQUEBOX_HOME/jruby
export PATH=$JRUBY_HOME/bin:$PATH

alias copy="~/Applications/copy/x86_64/CopyAgent"

alias mine="bitcoin-miner -o http://bitcoinpool.org:8332 -x socks=127.0.0.1:9050 -u BBBBB -p c1fdc274 -t 2"

alias elasticsearch="cd ~/Applications && ./elasticsearch-0.20.6/bin/elasticsearch -f"

#export GOPATH=$HOME/Copy/go
#export GOROOT=$HOME/Applications/go
#PATH=$PATH:$HOME/Applications/go/bin:/usr/local/go/bin
#export GOPATH=$HOME/go
#export PATH=$PATH:$GOROOT/bin
export GOROOT=/usr/local/go
export GOPATH=$PATH:$GOROOT/bin
export PATH=$PATH:/usr/local/go/bin

export JRUBY_OPTS="--1.9"

alias urlencode="python -c \"import sys,urllib as ul; print ul.quote_plus(' '.join(sys.argv[1:-1]))\""

export PYTHONPATH=$PYTHONPATH:~/Applications/PyDSTool
export PYTHON=/usr/bin/python

. ~/Applications/z/z.sh

export PATH=$PATH:/home/bradcater/perl5/bin:/home/bradcater/perl5/lib:/home/bradcater/Applications/duckduckgo/lib

# added by duckpan installer                                                                                                                          
eval $(perl -I${HOME}/perl5/lib/perl5 -Mlocal::lib)
