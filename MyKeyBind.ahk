#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory
; #Warn  ; Enable warnings to assist with detecting common errors.

#Include IME.ahk ;IME.ahkインポート

;無変換キー
vk1D::
    IME_SET(0)
    Return

;変換キー
vk1C::
    IME_SET(1)
    Return

vk1D & j::Send,{Blind}{Left}
vk1D & k::Send,{Blind}{Down}
vk1D & i::Send,{Blind}{Up}
vk1D & l::Send,{Blind}{Right}
vk1D & u::Send,{Blind}{Home}
vk1D & o::Send,{Blind}{End}
vk1D & Space::Send,{Blind}{Enter}
vk1D & n::Send,{Blind}{PgUp}
vk1D & m::Send,{Blind}{PgDn}
vk1D & Backspace::Send,{Blind}{Delete}
