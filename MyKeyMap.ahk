;https://pc-plaza.com/autohotkey/
;https://w.atwiki.jp/eamat/pages/17.html
;https://so-zou.jp/software/tool/system/auto-hot-key/hotkeys/#no5
;https://qiita.com/standard-software/items/6e4ad65da23041c075de

/*******************************************************************
キーコード
sc079 変換
sc07B 無変換
>^ 右コントロールキー
<^ 左コントロール
+  Shiftキー
Up などは、矢印キー

:: は、なんか設定方法

 Send は、送るときにつける。

 PgUp とかは、そのまま、そのキー
*********************************************************************/

/*
#Include, IME.ahk

/*** IMEのON/OFF ***/
sc079:: IME_SET(1) ; 変換
return
sc07B:: IME_SET(0) ; 無変換
return
*/

/*** 右CTRL+カーソル ***/
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
sc07B & /:: Send,{+}      ; 無変換 + /
sc07B & sc027:: Send,{-}     ; 無変換 + （; セミコロン）
sc07B & sc028:: Send,{tab}   ; 無変換 + （: コロン）
sc07B & p:: Send,{*}     ; 無変換 + p
sc07B & @:: Send,{Enter} ; 無変換 + @
sc07B & 0:: Send,{/}     ; 無変換 + 0
*/