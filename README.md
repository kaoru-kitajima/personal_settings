# personal_settings
personal settings of windows and linux.

# Ubuntu 24.04
Ubuntu 22.04からアップグレード。
Knataは1.11.0を使用。

githubからのクローン
```bash
mkdir ~/Software && cd ~/Software
git clone https://github.com/kaoru-kitajima/personal_settings.git
```
Kanata への移行
```bash
mkdir -p ~/.config/kanata ~/.config/systemd/user
cp personal_settings/kanata.kbd ~/.config/kanata/
cp personal_settings/kanata.service ~/.config/systemd/user/
```
Kanata のインストール手順
```bash
# github の公式 release からv1.11.0の linux-binaries-x64zip をダウンロード
cd ~/Downloads
unzip linux-binaries-x64.zip
chmod +x kanata_linux_x64
sudo install -m 0755 kanata_linux_x64 /usr/local/bin/kanata
```
Kanata の Service 設定（自動起動）
1. ユーザーグループ作成：`getent group uinput`  
1. 権限付与：`sudo usermod -aG input,uinput ${USER}`  
1. /etc/udev/rules.d/70-input.rulesを作成
    >KERNEL=="event*", NAME="input/%k", MODE="660", GROUP="input"  
1. /etc/udev/rules.d/70-uinput.rulesを作成
    >KERNEL=="uinput", GROUP="uinput"  
1. PCを再起動
1. kanata.serviceを~/.config/systemd/user/kanata.serviceに配置
1. ユーザー設定の再読込：`systemctl --user daemon-reload`
1. サービスとして登録：`systemctl --user enable kanata`
1. 起動：`systemctl --user start kanata`
1. 動作確認：`systemctl --user status kanata`

現在の kanata.kbd は、xkeysnail の config.py を基に次の挙動を移植している。
- 変換ホールド: 矢印、BackSpace、Delete、Browser Back/Forward
- 無変換ホールド: Home、End、Esc
- 変換+無変換、無変換+変換: Grave

補足
- Kanata は xkeysnail と違い、Python 仮想環境を不要にできる。
- Kanata は xkeysnail と違い、ALT, SUPERのキーを使わないため、ブラウザなどに不要な動作を引き起こさない。
- リモートデスクトップ経由の入力取得は、xkeysnail と同様に方式上の制約が残る。
- OS 起動後に接続したキーボードの追従性は実機で確認した。

xkeysnail は移行元として config.py と xkeysnail.service を残している。

# Ubuntu 22.04
Ubuntu 20.04からアップグレード。  
firefoxのタッチスクリーンスクロールができなかったので、
/etc/security/pam_env.confに`MOZ_USE_XINPUT2 DEFAULT=1`を追加

Kanataはv1.8.1を使うこと。kanata.serviceから --no-waitを削除すること（1.8.1では存在しないため）。
それ以外は24.04と同じ。

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

autohotkey(v1/v2)をインストール  
v2の場合は{ファイル名}_v2.ahkを用いる。  
PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。  

# Windows 11
windows 10 と同様。
