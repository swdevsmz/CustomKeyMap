/******************************************************************
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

https://pc-plaza.com/autohotkey/
https://w.atwiki.jp/eamat/pages/17.html
https://so-zou.jp/software/tool/system/auto-hot-key/hotkeys/#no5
https://qiita.com/standard-software/items/6e4ad65da23041c075de

�L�[�R�[�h����
sc079 �ϊ�
sc07B ���ϊ�
>^ �E�R���g���[���L�[
<^ ���R���g���[��
+  Shift�L�[
Up �Ȃǂ́A���L�[

:: �́A�Ȃ񂩐ݒ���@

 Send �́A����Ƃ��ɂ���B

 PgUp �Ƃ��́A���̂܂܁A���̃L�[


*******************************************************************/


/** Ctrl + ���� = F���� **/
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


;�J�[�\���L�[�̊��蓖��
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



/*** �ECTRL + �J�[�\�� ***/
>^Up::Send {PgUp}
<^>^Up::Send ^{PgUp}
>^+Up::Send +{PgUp}
<^>^+Up::Send ^+{PgUp}

>^Down::Send {PgDn}
<^>^Down::Send ^{PgDn}
>^+Down::Send +{PgDn}
<^>^+Down::Send ^+{PgDn}

>^Left::Send {Home}
<^>^Left::Send ^{Home}
>^+Left::Send +{Home}
<^>^+Left::Send ^+{Home}

>^Right::Send {End}
<^>^Right::Send ^{End}
>^+Right::Send +{End}
<^>^+Right::Send ^+{End}

/*** �e���L�[ ***/
/*
sc07B & m:: Send,{0}      ; ���ϊ� + m
sc07B & j:: Send,{1}      ; ���ϊ� + j
sc07B & k:: Send,{2}      ; ���ϊ� + k
sc07B & l:: Send,{3}      ; ���ϊ� + l
sc07B & u:: Send,{4}      ; ���ϊ� + u
sc07B & i:: Send,{5}      ; ���ϊ� + i
sc07B & o:: Send,{6}      ; ���ϊ� + o
sc07B & /:: Send,{+} 0     ; ���ϊ� + /
sc07B & sc027:: Send,{-}     ; ���ϊ� + �i; �Z�~�R�����j
sc07B & sc028:: Send,{tab}   ; ���ϊ� + �i: �R�����j
sc07B & p:: Send,{*}     ; ���ϊ� + p
sc07B & @:: Send,{Enter} ; ���ϊ� + @
sc07B & 0:: Send,{/}     ; ���ϊ� + 0
*/


/** IME�̐ݒ�őΉ�
;���C�u�����ǂݍ���
#Include IME.ahk
;���ϊ���IME OFF
vk1D::IME_SET(0)

;�ϊ���IME ON
vk1C::IME_SET(1)
**/

/**
;Ctrl + SPACE = ���ϊ�
^Space::Send,{vk1D}

;Alt + P = PrintScreen
!p::Send,{PrintScreen}


;Ctrl + Alt + P = PrintScreen
^!p::Send,!{PrintScreen}

;���p/�S�p = Ctrl (HHKB�p)
;vkF3::Send,{Ctrl}
;vkF4::Send,{Ctrl}

;Ctrl + �� = PageUp
^Up::Send,{PgUP}


;Ctrl + �� = PageDown
^Down::Send,{PgDn}

;Ctrl + �� = HOME
^Left::Send,{HOME}
^+Left::Send,+{HOME}

;Ctrl + �� = End
^Right::Send,{End}
^+Right::Send,+{End}

;Ctrl + BS = DEL
^Bs::Send,{Del}

;�EAlt = �A�v���P�[�V�����L�[
RAlt::Send,{AppsKey}
*/

/**
;PgUp,PgDn�̖�����
;https://qiita.com/standard-software/items/07655d7919b70aa09ab1#pageup--pagedown-%E3%82%AD%E3%83%BC%E3%82%92-%E5%B7%A6%E3%82%AD%E3%83%BC--%E5%8F%B3%E3%82%AD%E3%83%BC-%E3%81%AB%E5%A4%89%E6%8F%9B%E3%81%99%E3%82%8B
PgUp::Send {Left} 
PgDn::Send {Right} 
^PgUp::Send ^{Left} 
^PgDn::Send ^{Right} 
+PgUp::Send +{Left} 
+PgDn::Send +{Right} 
!PgUp::Send !{Left} 
!PgDn::Send !{Right} 
#PgUp::Send #{Left} 
#PgDn::Send #{Right} 
**/
