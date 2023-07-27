;https://freelifetech.com/make-comfortable-keybind-by-autohotkey-muhenkankey/　を参考に。

;変換無変換はそのまま通す。IME切り替えはgoogle日本語で行うほうがやりやすい。
sc079::send, {sc079}
sc07B::send, {sc07B}
;と思ったけど下のショートカット使うのに間違って単独押ししてIME切り替えちゃうことがあるから両押しで半角全角を切り替えるようにする。
sc079 & sc07B::Send, {vkF3sc029}
sc07B & sc079::Send, {vkF3sc029}

;無変換＋JLでHOME END
;Blindを加えることでShift,Ctrlによる修飾にも対応する。
sc07B & j::send, {blind}{home}
sc07B & l::send, {blind}{end}
;無変換＋CapsLockでEsc
sc07B & sc03A::send, {esc}

;変換+J,KLで←↓↑→(google日本語で全角入力でz+J,KLで矢印キーになるのと揃えている)。
sc079 & j::Send, {Blind}{left}	
sc079 & ,::Send, {Blind}{down}
sc079 & k::Send, {Blind}{up}
sc079 & l::Send, {Blind}{right}

#IFfWinActive, ahk_class Framework::CFrame
    ^k::dlcall("keybd_event", int, 0x26, int, 0, int, 1, int, 0)
    ^,::dlcall("keybd_event", int, 0x28, int, 0, int, 1, int, 0)
#IfWinActive

;変換+mでDel
sc079 & m::Send, {Blind}{Delete}

;変換＋Browse_Back Browse_Forward
sc079 & left::send, {blind}{Browser_Back}
sc079 & right::send, {blind}{Browser_Forward}
;変換+;でBackSpace
sc079 & `;::send, {blind}{BS}

;google日本語で以下を設定する。
;キー設定でkeymap.txtをインポート
;ローマ字設定でromantable.txtをインポート

;このファイルの拡張子を.ahkに変える。
;PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。
