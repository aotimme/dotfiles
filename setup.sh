# Consider making this a README.md

# create user `aotimme`
sudo useradd -d /home/aotimme -m aotimme
sudo passwd aotimme
# add to sudoers
sudo adduser aotimme sudo

### Change to being aotimme

# * add Host to local ~/.ssh/config
# * add local id_rsa.pub to ~/.ssh/authorized_keys
# * now can `ssh host` w/o password

# install git, git-flow, zsh, npm (may need to update/upgrade?)
sudo apt-get install git git-flow zsh npm

# configure git
git config --global user.email "alden.timme@gmail.com"
git config --global user.name "Alden Timme"

# clone dotfiles
git clone git@github.com:aotimme/dotfiles.git
ln -s ~/dotfiles/screenrc .screenrc

# install oh-my-zsh
git clone git@github.com:robbyrussell/oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/zshrc .zshrc
# cp .oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
# * exit and ssh again (or log out)

git clone git@github.com:aotimme/vim ~/.vim
ln -s ~/.vim/vimrc .vimrc
# OR:
# ln -s ~/dotfiles/vimrc .vimrc

# set up webserver
sudo apt-get install nginx-full
sudo service nginx start

# install redis
sudo apt-get install redis-server

# install mongodb
sudo apt-get install mongodb-dev

# install ruby stuff (for rake)
sudo apt-get install ruby-rvm
# didn't work on netbook:
#sudo rvm install 1.9.2    # a useful ruby version (e.g. ember)

# LIFESWAP
# copy .zshenv (changing $LIFESWAP_HOME if necessary)
