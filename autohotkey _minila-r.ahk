;https://freelifetech.com/make-comfortable-keybind-by-autohotkey-muhenkankey/　を参考に。

;変換無変換はそのまま通す。IME切り替えはgoogle日本語で行うほうがやりやすい。
sc079::send, {sc079}
sc07B::send, {sc07B}
;と思ったけど下のショートカット使うのに間違って単独押ししてIME切り替えちゃうことがあるから両押しで半角全角を切り替えるようにする。
sc079 & sc07B::Send, {vkF3sc029}
sc07B & sc079::Send, {vkF3sc029}

;無変換＋SDEFで←↓↑→
sc07B & s::send, {Blind}{left}
sc07B & d::send, {Blind}{down}
sc07B & e::send, {Blind}{up}
sc07B & f::send, {Blind}{right}
sc07B & vkF0::send, {blind}{esc}

;変換+jmk,l.;
sc079 & j::Send, {insert}
sc079 & m::Send, {Blind}{del}
sc079 & k::Send, {Blind}{home}
sc079 & ,::Send, {Blind}{end}
sc079 & l::Send, {Blind}{PgUp}
sc079 & .::Send, {Blind}{PgDn}
sc079 & `;::send, {blind}{BS}

;変換＋←→でBrowse_Back Browse_Forward
sc079 & left::send, {blind}{Browser_Back}
sc079 & right::send, {blind}{Browser_Forward}

;google日本語で以下を
;キー設定でkeymap.txtをインポート
;ローマ字設定でromantable.txtをインポート

;このファイルの拡張子を.ahkに変える。
;PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。