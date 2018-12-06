#/bin/zsh

echo "This script replaces the current tmux settings!"
CURRENT_DIR=$PWD
BASE_DIR=$(dirname $0)

cd $BASE_DIR
# Replace zshrc
rm -rf ~/.tmux.conf
cp -R .tmux.conf ~/

cd $CURRENT_DIR
