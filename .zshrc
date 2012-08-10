# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="wezm"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/opt/local/lib/postgresql84/bin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/X11/bin:/opt/local/bin:/Users/ben/.rip/active/bin:/bin:/usr/local/bin:/usr/bin:/usr/X11/bin:/opt/local/sbin:/opt/local/bin:/var/lib/gems/1.8/bin:/opt/local/lib/ruby/gems/1.8/
  
export GIT_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -g -f'

export PGDATA=/usr/local/postgres

alias rake="noglob rake"
alias ri="noglob ri"

alias gvim="mvim"
alias nabe="cd ~/prog/nabewise"
alias loko="cd ~/prog/podloko"
alias wta="cd ~/prog/estimator"
alias olex="cd ~/prog/olexco"
alias rt="rake -T"
alias gg="git status"
alias gb="git branch"
alias gh="git log -8 --oneline"
function lf() {
    if [ -z "$1" ]
    then
      ll
    else
      ls **/*"$@"*
    fi
}
function ak() {
    if [ -z "$1" ]
      then
        echo "If I have made it better, it is only by standing on the shoulders of giants."
      else
        ack --ignore-dir=public --ignore-dir=source/javascripts --ignore-dir=source/stylesheets --ignore-dir=public/javascripts --ignore-dir=public/stylesheets --ignore-dir=.themes/classic/source/javascripts --ignore-dir=.themes/classic/source --ignore-dir=.themes/classic/source/stylesheets "$@"
    fi
}
function flak() {
    if [ -z "$1" ]
      then
        echo "If I have made it better, it is only by standing on the shoulders of giants."
      else
        ack --ignore-dir=public/javascripts --ignore-dir=public/stylesheets --ignore-dir=.themes/classic/source/javascripts -i -l -g "$@"
    fi
}
function hgrep() {
    if [ -z "$1" ]
    then
        history
    else
        history | grep "$@"
    fi
}

source /usr/local/bin/virtualenvwrapper.sh
export EJABBERD_EBIN=/lib/ejabberd/ebin


[[ -s "/Users/tholex/.rvm/scripts/rvm" ]] && source "/Users/tholex/.rvm/scripts/rvm"
