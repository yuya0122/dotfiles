≈
# settings.jsonの設置
ln -sf $PWD/vscode/settings.json ~/Library/Application\ Support/Code/User/

# プラグインのインストール
pkglist=(
  # GitHub Copilot
  github.copilot-chat
  github.copilot
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

echo 👍 VSCode setting is done!