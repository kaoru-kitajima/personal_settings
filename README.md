# personal_settings
personal settings of windows and linux.
# Ubuntu 20.04
英語でmicro sdからセットアップ  
設定から日本語にする。フォルダ名は英語のまま。  
ibus-mozc入れる。  
https://ohmyenter.com/trackpad-gestures-with-libinput-on-linux/  
↑でトラックパッドのジェスチャを設定。  
gnome tweaksを入れる。画面をまたいでworkspaceを使うように設定。  
dell inpiron 11は指紋認証のgoodix製が認識されなかったため、http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/  
からドライバを落とし、解凍してapt installして再起動。使えた。  
変換無変換をショトカに使うため、config.pyを用意。  
https://ohmyenter.com/how-to-install-and-autostart-xkeysnail/  
https://github.com/mooz/xkeysnail  
を参考にサービス化とfirefoxの設定まで達成。  
# windows 10
google日本語で  
- キー設定でkeymap.txtをインポート  
- ローマ字設定でromantable.txtをインポート  

autohotkeyをインストール  
autohotkey.txtの拡張子を.ahkに変える。  
PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。  
