;https://freelifetech.com/make-comfortable-keybind-by-autohotkey-muhenkankey/�@���Q�l�ɁB

;�ϊ����ϊ��͂��̂܂ܒʂ��BIME�؂�ւ���google���{��ōs���ق������₷���B
sc079::send, {sc079}
sc07B::send, {sc07B}
;�Ǝv�������ǉ��̃V���[�g�J�b�g�g���̂ɊԈ���ĒP�Ɖ�������IME�؂�ւ����Ⴄ���Ƃ����邩�痼�����Ŕ��p�S�p��؂�ւ���悤�ɂ���B
sc079 & sc07B::Send, {vkF3sc029}
sc07B & sc079::Send, {vkF3sc029}

;���ϊ��{SDEF�Ł�������
sc07B & s::send, {Blind}{left}
sc07B & d::send, {Blind}{down}
sc07B & e::send, {Blind}{up}
sc07B & f::send, {Blind}{right}
sc07B & vkF0::send, {blind}{esc}

;�ϊ�+jmk,l.;
sc079 & j::Send, {insert}
sc079 & m::Send, {Blind}{del}
sc079 & k::Send, {Blind}{home}
sc079 & ,::Send, {Blind}{end}
sc079 & l::Send, {Blind}{PgUp}
sc079 & .::Send, {Blind}{PgDn}
sc079 & `;::send, {blind}{BS}

;�ϊ��{������Browse_Back Browse_Forward
sc079 & left::send, {blind}{Browser_Back}
sc079 & right::send, {blind}{Browser_Forward}

;google���{��ňȉ���
;�L�[�ݒ��keymap.txt���C���|�[�g
;���[�}���ݒ��romantable.txt���C���|�[�g

;���̃t�@�C���̊g���q��.ahk�ɕς���B
;PC�N�����Ɏ����N���������̂ŁAwin+R��shell:startup����́�.ahk�t�@�C���ւ̃V���[�g�J�b�g�t�@�C����u���B