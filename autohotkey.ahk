;https://freelifetech.com/make-comfortable-keybind-by-autohotkey-muhenkankey/　を参考に。

;変換無変換はそのまま通す。IME切り替えはgoogle日本語で行うほうがやりやすい。
sc079::send, {sc079}
sc07B::send, {sc07B}
;と思ったけど下のショートカット使うのに間違って単独押ししてIME切り替えちゃうことがあるから両押しで半角全角を切り替えるようにする。
sc079 & sc07B::Send, {vkF3sc029}
sc07B & sc079::Send, {vkF3sc029}

;無変換＋JLでHOME END
sc07B & j::send, {blind}{home}
sc07B & l::send, {blind}{end}

;変換+HJKLで←↓↑→にする。(google日本語のz+h＝←と同様） Blindをつけると修飾キー組み合わせ（Shift、Ctrなど）も可能
sc079 & j::Send, {Blind}{left}
sc079 & ,::Send, {Blind}{down}
sc079 & k::Send, {Blind}{up}
sc079 & l::Send, {Blind}{right}

;変換＋←→でBrowse_Back Browse_Forward
sc079 & left::send, {blind}{Browser_Back}
sc079 & right::send, {blind}{Browser_Forward}
;変換+;でBackSpace
sc079 & `;::send, {blind}{BS}

;google日本語で以下を
;キー設定でkeymap.txtをインポート
;ローマ字設定でromantable.txtをインポート

;このファイルの拡張子を.ahkに変える。
;PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。