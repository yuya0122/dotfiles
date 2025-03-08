# settings.jsonの設置
ln -sf $PWD/cursor/settings.json ~/Library/Application\ Support/Cursor/User/
ln -sf $PWD/cursor/keybindings.json ~/Library/Application\ Support/Cursor/User/

# プラグインのインストール
pkglist=(
  # Japanese Language Pack for Visual Studio Code
  ms-ceintl.vscode-language-pack-ja 
  # Devcontainer
  ms-vscode-remote.remote-containers
  # Git
  mhutchie.git-graph
)

eval "$(/opt/homebrew/bin/brew shellenv)"
for i in ${pkglist[@]}; do
  code --install-extension $i
done

# dockに追加
dockutil --add "/Applications/Cursor.app"

echo 👍 Cursor setting is done!