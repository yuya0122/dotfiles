dirs=`find $PWD -depth 1 -type d -not -name '.git' -not -name 'homebrew'`

# 最初にhomebrewをインストール
echo homebrew
sh $PWD/homebrew/setup.sh

# その後、各種アプリのセッティングを実行する
for dir in $dirs;
do
  echo 📁 $dir
  sh $dir/setup.sh
done

# Macの再起動
read -p "Reboot system? (y/n) :  " restart_env
if [ "$restart_env" = "y" ]; then
  sudo shutdown -r now
fi