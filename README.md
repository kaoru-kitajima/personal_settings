# personal_settings
personal settings of windows and linux.

# Ubuntu 24.04
Ubuntu 22.04からアップグレード。

PEP668に応じてpipがシステムワイドにパッケージをインストールすることができなくなったため、venvで仮想環境を作成するように変更。

githubからのクローン
```bash
mkdir ~/Software && cd ~/Software
git clone https://github.com/kaoru-kitajima/personal_settings.git
```
xkeysnail用のpython環境設定
```bash
mkdir ~/.config/xkeysnail
python3 -m venv venv
source venv/bin/activate
pip install xkeysnail
cp personal_settings/config.py ~/.config/xkeysnail/
cp personal_settings/xkeysnail.service ~/.config/systemd/user/
```
evdev 1.9.0でfn属性が廃止されたことの対応
1. ~/.config/xkeysnail/venv/lib/python3.12/site-packages/xkeysnail/input.pyを開く。
1. 36行目の1.fnを1.pathに変更
1. 57行目と95行目と160行目のdevice.fnをdevice.pathに変更
xkeysnailのService設定（自動起動）
1. ユーザーグループにuinputが存在するか確認：`getent group uinput`  
1. 何も出力がなければ存在しないので、ユーザーグループ作成：`sudo groupadd uinput`  
1. 権限付与：`sudo usermod -aG input,uinput ${USER}`  
1. /etc/udev/rules.d/70-input.rulesを作成
    >KERNEL=="event*", NAME="input/%k", MODE="660", GROUP="input"  
1. /etc/udev/rules.d/70-uinput.rulesを作成
    >KERNEL=="uinput", GROUP="uinput"  
1. PCを再起動
1. xkeysnail.serviceを~/.config/systemd/user/xkeysnail.serviceに配置
1. サービスとして登録：`systemctl --user enable xkeysnail`
1. 起動：`systemctl --user start xkeysnail`
1. 動作確認：`systemctl --user status xkeysnail`

# Ubuntu 22.04
Ubuntu 20.04からアップグレード。  
firefoxのタッチスクリーンスクロールができなかったので、
/etc/security/pam_env.confに`MOZ_USE_XINPUT2 DEFAULT=1`を追加

# Ubuntu 20.04
英語でmicro sdからセットアップ  
設定から日本語にする。フォルダ名は英語のまま。  
ibus-mozc入れる。  
https://ohmyenter.com/trackpad-gestures-with-libinput-on-linux/  
https://github.com/bulletmark/libinput-gestures  
↑でトラックパッドのジェスチャを設定。  
gnome tweaksを入れる。画面をまたいでworkspaceを使うように設定。  
dell inpiron 11は指紋認証のgoodix製が認識されなかったため、http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/  
からドライバを落とし、解凍してapt installして再起動。使えた。  
変換無変換をショトカに使うため、config.pyを用意。  
https://ohmyenter.com/how-to-install-and-autostart-xkeysnail/  
https://github.com/mooz/xkeysnail  
を参考にサービス化とfirefoxの設定まで達成。  
> xkeysnailはrootで実行する必要がありますが、どっちみち先程のxhostコマンドは一般ユーザーで実行する必要があるので、一般ユーザーで起動するようにしたほうがラクです。というわけで一般ユーザーに必要な権限だけ与えて、user環境のsystemdに登録することにします。
1. ユーザーグループ作成：`getent group uinput`  
1. 権限付与：`sudo usermod -aG input,uinput あなたのユーザー名`  
1. /etc/udev/rules.d/70-input.rulesを作成
    >KERNEL=="event*", NAME="input/%k", MODE="660", GROUP="input"  
1. etc/udev/rules.d/70-uinput.rulesを作成
    >KERNEL=="uinput", GROUP="uinput"  
1. 再起動
1. xkeysnail.serviceを~/.config/systemd/user/xkeysnail.serviceに配置
1. サービスとして登録：`systemctl --user enable xkeysnail`
1. 起動：`systemctl --user start xkeysnail`

vscodeもaltキーでmenubarにfocusしてしまうのでユーザー設定から"window.titleBarStyle": "custom", "window.customMenuBarAltFocus": falseにする。githubアカウントでOSごとに設定を共有できるのでログインすれば設定済みのはず。  
https://stackoverflow.com/questions/69869371/how-to-disable-alt-key-to-focus-on-file-tab-in-vs-code  

# Windows 10
google日本語で  
- キー設定でkeymap.txtをインポート  
- ローマ字設定でromantable.txtをインポート  

autohotkeyをインストール  
PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。  

# Windows 11
windows 10 と同様。
