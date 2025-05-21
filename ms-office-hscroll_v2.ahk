SetTitleMatchMode 2

#HotIf WinActive("PowerPoint")
~Lshift & WheelUp::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,0,3)
~Lshift & WheelDown::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,3,0)

#HotIf WinActive("Word")
~Lshift & WheelUp::ComObjActive("Word.Application").ActiveWindow.SmallScroll(0,0,0,3)
~Lshift & WheelDown::ComObjActive("Word.Application").ActiveWindow.SmallScroll(0,0,3,0)

#HotIf WinActive("Excel")
; Scroll left.
~LShift & WheelUp:: {
SetScrollLockState "On"
SendInput "{Left}"
SetScrollLockState "Off"
Return
}
; Scroll right.
~LShift & WheelDown:: {
SetScrollLockState "On"
SendInput "{Right}"
SetScrollLockState "Off"
}
