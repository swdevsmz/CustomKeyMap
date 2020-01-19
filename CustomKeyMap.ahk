/******************************************************************
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

https://pc-plaza.com/autohotkey/
https://w.atwiki.jp/eamat/pages/17.html
https://so-zou.jp/software/tool/system/auto-hot-key/hotkeys/#no5
https://qiita.com/standard-software/items/6e4ad65da23041c075de

キーコード抜粋
sc079 変換
sc07B 無変換
>^ 右コントロールキー
<^ 左コントロール
+  Shiftキー
Up などは、矢印キー

:: は、なんか設定方法

 Send は、送るときにつける。

 PgUp とかは、そのまま、そのキー


*******************************************************************/


/** Ctrl + 数字 = F数字 **/
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



/*** 右CTRL + カーソル ***/
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

/*** テンキー ***/
/*
sc07B & m:: Send,{0}      ; 無変換 + m
sc07B & j:: Send,{1}      ; 無変換 + j
sc07B & k:: Send,{2}      ; 無変換 + k
sc07B & l:: Send,{3}      ; 無変換 + l
sc07B & u:: Send,{4}      ; 無変換 + u
sc07B & i:: Send,{5}      ; 無変換 + i
sc07B & o:: Send,{6}      ; 無変換 + o
sc07B & /:: Send,{+} 0     ; 無変換 + /
sc07B & sc027:: Send,{-}     ; 無変換 + （; セミコロン）
sc07B & sc028:: Send,{tab}   ; 無変換 + （: コロン）
sc07B & p:: Send,{*}     ; 無変換 + p
sc07B & @:: Send,{Enter} ; 無変換 + @
sc07B & 0:: Send,{/}     ; 無変換 + 0
*/


/** IMEの設定で対応
;ライブラリ読み込み
#Include IME.ahk
;無変換→IME OFF
vk1D::IME_SET(0)

;変換→IME ON
vk1C::IME_SET(1)
**/

/**
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
*/

/**
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
**/
