# Homebrewインストール
source homebrew/install-homebrew.sh

# Brewfile実行
read -p "Press O for office use, press any key for private use :  " install_env
cd $PWD/homebrew
if [ "$install_env" = "O" ]; then
  brew bundle --file BrewfileOffice
else
  brew bundle --file BrewfilePrivate
fi
cd -

eval "$(/opt/homebrew/bin/brew shellenv)"

echo 👍 Homebrew setting is done!