/*
�L�[���X�g
http://ahkwiki.net/KeyList

�C���V���{��
http://ahkwiki.net/Hotkeys

IME.ahk
https://www6.atwiki.jp/eamat/pages/17.html

�g����
https://rcmdnk.com/blog/2013/07/28/computer-windows-autohotkey/

3�ȏエ������
http://wg16.hatenablog.jp/entry/autohotkey_001
*/

 ;���C�u�����ǂݍ���
#Include IME.ahk
;���ϊ���IME OFF
vk1D::IME_SET(0)

;�ϊ���IME ON
vk1C::IME_SET(1)

;���ϊ�+SHIFT�����ϊ�
;+vk1D::Send,{vk1D}
+Space::Send,{vk1D}

;Alt+P��PrintScreen
!p::Send,{PrintScreen}

;Ctrl+Alt+P��PrintScreen
^!p::Send,!{PrintScreen}

;���p/�S�p��Ctrl
vkF3::Send,{Ctrl}
vkF4::Send,{Ctrl}

;Ctrl+����PageUp
^Up::Send,{PgUP}


;Ctrl+����PageDown
^Down::Send,{PgDn}


;Ctrl+����HOME
^Left::Send,{HOME}
^+Left::Send,+{HOME}

;Ctrl+����End
^Right::Send,{End}
^+Right::Send,+{End}

;Ctrl+BS��DEL
^Bs::Send,{Del}

;�EAlt���A�v���P�[�V�����L�[
RAlt::Send,{AppsKey}

;Excel�Z���ړ�
#!Right::Send,^{PgDn}
#!Left::Send,^{PgUp}
#!Up::Send,^{PgUp}
#!Down::Send,^{PgDn}


;Ctrl+������F����p
^1::Send,{F1}
^2::Send,{F2}
^3::Send,{F3}
^4::Send,{F4}
^5::Send,{F5}
^6::Send,{F6}
^7::Send,{F7}
^8::Send,{F8}
^9::Send,{F9}
^0::Send,{F10}
^-::Send,{F11}
$^^::Send,{F12}


^j::Send,{Left}
^k::Send,{Down}
^i::Send,{Up}
^l::Send,{Right}
^u::Send,{Home}
^+u::Send,+{Home}
^o::Send,{End}
^+o::Send,+{End}
^m::Send,{PgUp}
^.::Send,{PgDn}