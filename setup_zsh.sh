#/bin/zsh

echo "This script replaces the current zsh settings!"
CURRENT_DIR=$PWD
BASE_DIR=$(dirname $0)

cd $BASE_DIR
# Install zsh
sudo apt-get install zsh
chsh -s `which zsh`

# Install zgen
rm -rf ~/.zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

# Install ohmyzsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Install ohmyzsh custom plugin
rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Virtualenv
sudo apt-get install python3-pip python3-dev
sudo pip3 install virtualenv virtualenvwrapper
mkdir .virtualenvs

# Replace zshrc
rm -rf ~/.zshrc
cp -R .zshrc ~/

cd $CURRENT_DIR
