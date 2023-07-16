;https://freelifetech.com/make-comfortable-keybind-by-autohotkey-muhenkankey/�@���Q�l�ɁB

;�ϊ����ϊ��͂��̂܂ܒʂ��BIME�؂�ւ���google���{��ōs���ق������₷���B
sc079::send, {sc079}
sc07B::send, {sc07B}
;�Ǝv�������ǉ��̃V���[�g�J�b�g�g���̂ɊԈ���ĒP�Ɖ�������IME�؂�ւ����Ⴄ���Ƃ����邩�痼�����Ŕ��p�S�p��؂�ւ���悤�ɂ���B
sc079 & sc07B::Send, {vkF3sc029}
sc07B & sc079::Send, {vkF3sc029}

;���ϊ��{JL��HOME END
sc07B & j::send, {blind}{home}
sc07B & l::send, {blind}{end}
;���ϊ��{CapsLock��Esc
sc07B & sc03A::send, {esc}

;�ϊ�+HJKL�Ł��������ɂ���B(google���{���z+h�����Ɠ��l�j Blind������ƏC���L�[�g�ݍ��킹�iShift�ACtr�Ȃǁj���\
sc079 & j::Send, {Blind}{left}
sc079 & ,::Send, {Blind}{down}
sc079 & k::Send, {Blind}{up}
sc079 & l::Send, {Blind}{right}

;�ϊ��{������Browse_Back Browse_Forward
sc079 & left::send, {blind}{Browser_Back}
sc079 & right::send, {blind}{Browser_Forward}
;�ϊ�+;��BackSpace
sc079 & `;::send, {blind}{BS}

;google���{��ňȉ���
;�L�[�ݒ��keymap.txt���C���|�[�g
;���[�}���ݒ��romantable.txt���C���|�[�g

;���̃t�@�C���̊g���q��.ahk�ɕς���B
;PC�N�����Ɏ����N���������̂ŁAwin+R��shell:startup����́�.ahk�t�@�C���ւ̃V���[�g�J�b�g�t�@�C����u���B