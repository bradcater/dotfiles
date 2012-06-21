# Standard .bashrc extensions.

alias ack="ack-grep"
alias sus="sort | uniq -c | sort -nr"

alias upgrade="sudo apt-get update && sudo apt-get upgrade"

alias betterif="ssh -i ~/.ssh/betterif.pem ec2-user@23.21.38.100"
alias bridj="ssh -i ~/.ssh/bridj.pem ec2-user@107.22.34.122"
alias crr="ssh robotretail@robotretail.webfactional.com"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH=/home/bradcater/.rvm/gems/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/gems/ruby-1.9.1-p378@global/bin:/home/bradcater/.rvm/rubies/ruby-1.9.1-p378/bin:/home/bradcater/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/pgsql/bin/
export PGDATA=/usr/local/pgsql/data/

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

# Panjiva stuff
export SVN_PATH=/usr/bin/svn
export TRUNK_PATH=/home/bradcater/trunk
alias reb='RAILS_ENV=development_brad'
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
