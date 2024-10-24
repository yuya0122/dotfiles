# --- カスタムディレクトリの作成 ---
# スクショの保存先
mkdir -p ~/ScreenShots/
mkdir -p ~/Local

# --- Finderの設定 ---
# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -boolean true
# すべてのファイル名拡張子を表示（Finder > 環境設定 > 詳細 からも設定可）
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# デスクトップのアイコンを消す
defaults write com.apple.finder CreateDesktop false
# リスト形式でファイルを表示する
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

killall Finder

# --- Dockの設定 ---
# “自動的に非表示”をオン（Dockを右クリックでも設定可）
defaults write com.apple.dock autohide -bool true
# 最近使ったappを表示しない
defaults write com.apple.dock show-recents -bool false

killall Dock

# --- SystemUIServer関係の設定 ---
# 時計で日付を表示（例：9月20日(木) 23:00、メニューバー右上の時計からも設定可）
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d HH:mm'
# スクリーンショットのドロップシャドウを付けない
defaults write com.apple.screencapture disable-shadow -boolean true
# スクリーンショットの保存先を変更
defaults write com.apple.screencapture location ~/ScreenShots/
killall SystemUIServer

# ---　トラックパッドの設定　---
# シングルタップでクリック（再起動必要）
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -bool true

# ---　その他の設定　---
# テキストエディットをリッチテキストから標準テキストに変更（テキストエディットの環境設定からも設定可）
defaults write com.apple.TextEdit RichText -int 0
# 自動で頭文字を大文字にしない
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
#　フォルダ名を日本語表記にしたくないので、localizedファイルを削除する
rm -f ~/Applications/.localized
rm -f ~/Documents/.localized
rm -f ~/Downloads/.localized
rm -f ~/Desktop/.localized
rm -f ~/Public/.localized
rm -f ~/Pictures/.localized
rm -f ~/Music/.localized
rm -f ~/Movies/.localized
rm -f ~/Library/.localized
rm -f /Applications/.localized

echo 👍 MacOS setting is done, please reboot!
