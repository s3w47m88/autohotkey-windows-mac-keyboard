; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
#SingleInstance force

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2

; Reverse Scrolling
WheelUp::
Send {WheelDown}
Return
		
WheelDown::
Send {WheelUp}
Return

;-----------------------------------------
; Apple keyboard to Windows Key Mappings
;=========================================
;^::!
Alt::Ctrl						

; Media/function keys all mapped to Windows Key + F-Key (Fn key is un-mappable, as far as I know...)
F5::SendInput {Media_Prev}
F6::SendInput {Media_Play_Pause}
F7::SendInput {Media_Next}
F1::SendInput {Volume_Mute}
F2::SendInput {Volume_Down}
F3::SendInput {Volume_Up}

; "Disables" left windows key. Helpful for gaming, so if accidentaly hit it, it won't open the start menu and kick you out of the game.
; LWin::LAlt

; Show Desktop with Windows Key + F3
; #F3::#d
;^ & Tab::^d

; Saving
#s::^s

; Selecting
#a::^a

; Copying
#c::^c

; Pasting
#v::^v

; Cutting
#x::^x

; Opening
#o::^o

; Finding
#f::Send ^f

; Undo
#z::^z

; Redo
#y::^y

; New tab
#t::^t

; Undo Tab
#+T::^+t

; close tab
#w::^w

; reload page
#r::^r

; Close windows (cmd + q to Alt + F4)
#q::Send !q

; Open Find & Replace
#f::^f

; In Find & Replace Navigate to the Next Item
#g::^g

; Remap Windows + Tab to Alt + Tab.
;Lwin & Tab::AltTab ;This is broken in windows 8... AHK is working on a fix, for now, use the below alternative or use Emcee app and configure Alt Tab to be the Expose.
;LWin & Tab::Send !{ESC}

; minimize windows
;#m::WinMinimize,a

#IfWinActive ahk_class ConsoleWindowClass
^V::
SendInput {Raw}%clipboard%
return
#IfWinActive