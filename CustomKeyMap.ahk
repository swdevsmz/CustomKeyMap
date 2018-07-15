/*
キーリスト
http://ahkwiki.net/KeyList

修飾シンボル
http://ahkwiki.net/Hotkeys

IME.ahk
https://www6.atwiki.jp/eamat/pages/17.html

使い方
https://rcmdnk.com/blog/2013/07/28/computer-windows-autohotkey/

3以上おしたい
http://wg16.hatenablog.jp/entry/autohotkey_001
*/

 ;ライブラリ読み込み
#Include IME.ahk
;無変換→IME OFF
vk1D::IME_SET(0)

;変換→IME ON
vk1C::IME_SET(1)

;無変換+SHIFT→無変換
;+vk1D::Send,{vk1D}
+Space::Send,{vk1D}

;Alt+P→PrintScreen
!p::Send,{PrintScreen}

;Ctrl+Alt+P→PrintScreen
^!p::Send,!{PrintScreen}

;半角/全角→Ctrl
vkF3::Send,{Ctrl}
vkF4::Send,{Ctrl}

;Ctrl+↑→PageUp
^Up::Send,{PgUP}


;Ctrl+↓→PageDown
^Down::Send,{PgDn}


;Ctrl+左→HOME
^Left::Send,{HOME}
^+Left::Send,+{HOME}

;Ctrl+→→End
^Right::Send,{End}
^+Right::Send,+{End}

;Ctrl+BS→DEL
^Bs::Send,{Del}

;右Alt→アプリケーションキー
RAlt::Send,{AppsKey}

;Excelセル移動
#!Right::Send,^{PgDn}
#!Left::Send,^{PgUp}
#!Up::Send,^{PgUp}
#!Down::Send,^{PgDn}


;Ctrl+数字→F数字p
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