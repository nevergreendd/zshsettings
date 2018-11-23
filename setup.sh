#/bin/zsh

echo "This script replaces the current zsh settings!"
CURRENT_DIR=$PWD
BASE_DIR=$(dirname $0)

cd $BASE_DIR
# Install zgen
rm -rf ~/.zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

# Install ohmyzsh custom plugin
rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Replace zshrc
rm -rf ~/.zshrc
cp -R .zshrc ~/

cd $CURRENT_DIR
