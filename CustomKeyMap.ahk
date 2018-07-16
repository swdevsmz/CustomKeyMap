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

;Ctrl + SPACE = 無変換
^Space::Send,{vk1D}

;Alt + P = PrintScreen
!p::Send,{PrintScreen}


;Ctrl + Alt + P = PrintScreen
^!p::Send,!{PrintScreen}

;半角/全角 = Ctrl (HHKB用)
;vkF3::Send,{Ctrl}
;vkF4::Send,{Ctrl}

;Ctrl + ↑ = PageUp
^Up::Send,{PgUP}


;Ctrl + ↓ = PageDown
^Down::Send,{PgDn}

;Ctrl + 左 = HOME
^Left::Send,{HOME}
^+Left::Send,+{HOME}

;Ctrl + → = End
^Right::Send,{End}
^+Right::Send,+{End}

;Ctrl + BS = DEL
^Bs::Send,{Del}

;右Alt = アプリケーションキー
RAlt::Send,{AppsKey}


;Win+Alt+カーソルキー = Excelシートの移動
#!Right::Send,^{PgDn}
#!Left::Send,^{PgUp}
#!Up::Send,^{PgUp}
#!Down::Send,^{PgDn}


;Ctrl + 数字 = F数字
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


;カーソルキーの割り当て
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


;PgUp,PgDnの無効化
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
