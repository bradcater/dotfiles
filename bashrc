# Standard .bashrc extensions.

alias ack="ack-grep"
alias sus="sort | uniq -c | sort -nr"

alias upgrade="sudo apt-get update && sudo apt-get upgrade"

alias fixwindows="gtk-window-decorator --replace &"

alias pdropbox="HOME=$HOME/.dropbox-panjiva /usr/bin/dropbox start -i"

alias betterif="mosh --ssh \"ssh -i ~/.ssh/betterif.pem\" ec2-user@23.21.38.100"
alias betterif_ssh="ssh -i ~/.ssh/betterif.pem ec2-user@23.21.38.100"
alias betterif_app="mosh --ssh \"ssh -i ~/.ssh/betterif.pem\" ec2-user@174.129.48.68"
alias betterif_app_ssh="ssh -i ~/.ssh/betterif.pem ec2-user@174.129.48.68"
alias betterif_slave="mosh --ssh \"ssh -i ~/.ssh/betterif-west.pem\" ec2-user@54.245.41.132"
alias betterif_slave_ssh="ssh -i ~/.ssh/betterif-west.pem ec2-user@54.245.41.132"
alias bridj="ssh -i ~/.ssh/bridj.pem ec2-user@107.22.34.122"
alias crr="ssh robotretail@robotretail.webfactional.com"

alias betterif_unicorn="RACK_ENV=none RAILS_ENV=development bundle exec unicorn -c config/unicorn.rb"

# Remember that ^M is CTRL-M.
alias dos_files="find . -name '*.php' -print0 | xargs -0 grep -l '^M$'"
alias large_files="find . -type f -size +50000k -exec ls -lh {} \; | awk '{ print $9 \": \" $5 }'"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH=/home/bradcater/.rvm/gems/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/gems/ruby-1.9.1-p378@global/bin:/home/bradcater/.rvm/rubies/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/pgsql/bin/
export PGDATA=/usr/local/pgsql/data/

# Taken from solr installation.
#export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Taken from
# http://www.devsniper.com/ubuntu-12-04-install-sun-jdk-6-7/
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_06
export PATH=$JAVA_HOME/bin:$PATH

# Panjiva stuff
export SVN_PATH=/usr/bin/svn
export TRUNK_PATH=/home/bradcater/trunk
alias reb='RAILS_ENV=development_brad'
alias rea='RAILS_ENV=development_andrew'
alias rebr='RAILS_ENV=development_brad_remote'
alias rebn='RAILS_ENV=development_brad_new'
function bmerge {
  svn up && merge && svn up && commit
}
function checkout {
  svn co svn+ssh://brad@svn.panjiva.com/home/svn/panjiva_web/branches/"$1"
}
function commit {
  script/commit "$@"
}
function create {
  svn copy ^/trunk ^/branches/"$1"
}
function delete {
  svn delete ^/branches/"$1"
}
function merge {
  svn merge ^/trunk
}
function reintegrate {
  svn merge --reintegrate ^/branches/"$1"
}
function switch {
  if [ "$1" == "trunk" ]; then
    svn switch ^/trunk
  else
    svn switch ^/branches/"$1"
  fi
}
function endeca {
  ssh -L 8888:localhost:8888 -p 23377 brad@research.panjiva.com
}

function psq {
  psql -U ror_postgres -h yukon.panjiva.com -p 34122 panjiva_development_brad
}
function psqa {
  psql -U ror_postgres -h yukon.panjiva.com -p 34148 panjiva_development_andrew
}
