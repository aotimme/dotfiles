# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# My own.
alias open='gnome-open'
alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias go='git checkout'

alias seed='kanso wipe && kanso seed'
alias wipe='kanso wipe && kanso push'

alias jsonpretty='python -mjson.tool'

# tunneling for futon (prod defined in .ssh/config)
alias prodtunnel='ssh -L 5986:127.0.0.1:5984 prod -N'
alias stagetunnel='ssh -L 5987:127.0.0.1:5985 prod -N'

# screen
alias sls="screen -ls"  # show all screen sessions
alias sr="screen -r"    # reattach to screen session
alias sn="screen -S"    # new screen session

PATH=$PATH:./node_modules/.bin
#PATH=$PATH:$LIFESWAP_HOME/lifeswap/node_modules/.bin
#PATH=$PATH:../node_modules/.bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.rvm/scripts/rvm

# node version manager
source ~/.nvm/nvm.sh
