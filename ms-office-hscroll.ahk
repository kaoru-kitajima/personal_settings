SetTitleMatchMode, 2

#IfWinActive, PowerPoint
~Lshift & WheelUp::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,0,3)
~Lshift & WheelDown::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,3,0)

#IfWinActive, Word
~Lshift & WheelUp::ComObjActive("Word.Application").ActiveWindow.SmallScroll(0,0,0,3)
~Lshift & WheelDown::ComObjActive("Word.Application").ActiveWindow.SmallScroll(0,0,3,0)

#IfWinActive, Excel
~LShift & WheelUp:: ; Scroll left.
SetScrollLockState, On
SendInput {Left}
SetScrollLockState, Off
Return
~LShift & WheelDown:: ; Scroll right.
SetScrollLockState, On
SendInput {Right}
SetScrollLockState, Off
