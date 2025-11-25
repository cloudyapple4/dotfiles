#Requires AutoHotkey v2.0
#SingleInstance
A_MenuMaskKey := "vk00sc000"
+Esc:: ExitApp

; change caps to esc
CapsLock::Esc
+CapsLock::CapsLock

; alt + num sends win + num
>!1:: Send "#1"
>!2:: Send "#2"
>!3:: Send "#3"
>!4:: Send "#4"
>!5:: Send "#5"
>!6:: Send "#6"
>!7:: Send "#7"
>!8:: Send "#8"
>!9:: Send "#9"
>!0:: Send "#0"

; alt + caps activates start menu
>!CapsLock:: Send "{RAlt up}{RWin}"