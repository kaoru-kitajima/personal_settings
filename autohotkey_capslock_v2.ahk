;https://freelifetech.com/make-comfortable-keybind-by-autohotkey-muhenkankey/　を参考に。

;変換無変換はそのまま通す。IME切り替えはgoogle日本語で行うほうがやりやすい。
sc079::send "{sc079}"
sc07B::send "{sc07B}"
;CapsLockはレジストリエディタでF13に変更されている前提。
;CapsLock単体は通さない
f13::return

;CapsLock+UOでHOME END
;Blindを加えることでShift,Ctrlによる修飾にも対応する。
f13 & u::send "{blind}{home}"
f13 & o::send "{blind}{end}"
;CapsLock+SpaceでEsc
f13 & Space::send "{esc}"

;CapsLock+ijklで↑←↓→(google日本語romantable.txtで全角入力でz+ijklで矢印キーになる)。
f13 & i::Send "{Blind}{up}"
f13 & j::Send "{Blind}{left}"
f13 & k::Send "{Blind}{down}"
f13 & l::Send "{Blind}{right}"

#HotIf WinActive("ahk_class Framework::CFrame")
    f13 & i::DllCall("keybd_event", "int", "0x26", "int", "0", "int", "1", "int", "0")
    f13 & k::DllCall("keybd_event", "int", "0x28", "int", "0", "int", "1", "int", "0")
#HotIf

;CapsLock+mでDel
f13 & m::Send "{Blind}{Delete}"
;CapsLock+;でBackSpace
f13 & `;::send "{blind}{BS}"

;CapsLock+dfでBrowser_Back,Browser_Forward
f13 & d::send "{blind}{Browser_Back}"
f13 & f::send "{blind}{Browser_Forward}"

;google日本語で以下を設定する。
;キー設定でkeymap.txtをインポート
;ローマ字設定でromantable.txtをインポート

;このファイルの拡張子を.ahkに変える。
;PC起動時に自動起動したいので、win+Rでshell:startupを入力→.ahkファイルへのショートカットファイルを置く。
