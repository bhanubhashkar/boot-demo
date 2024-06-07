Option Explicit

call Prevent_AutoLock()

Function Prevent_AutoLock()
'Variable decliaration
Dim wsc, myValue, i, flag
set wsc = CreateObject("WScript.Shell")
myValue = 60*InputBox("Enter number of hours","InputBox Demo" )
for i = 1 to myValue Step 1
WScript.Sleep (60*1000)
wsc.SendKeys ("{SCROLLLOCK 2}")
'msgbox i+1 &"min"
if i = myValue then
WScript.Quit()
end if 
next
End Function