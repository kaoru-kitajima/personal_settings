# personal_settings
personal settings of windows and linux.
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
>xkeysnailはrootで実行する必要がありますが、どっちみち先程のxhostコマンドは一般ユーザーで実行する必要があるので、一般ユーザーで起動するようにしたほうがラクです。というわけで一般ユーザーに必要な権限だけ与えて、user環境のsystemdに登録することにします。
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
# windows 10
google日本語で  
- キー設定でkeymap.txtをインポート  
- ローマ字設定でromantable.txtをインポート  

autohotkeyをインストール  
autohotkey.txtの拡張子を.ahkに変える。  
PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。  
