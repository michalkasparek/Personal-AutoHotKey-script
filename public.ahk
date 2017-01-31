:*:/do:: ;slušně pozdraví
If(A_hour < 3)
	Send, Dobrý pozdní večer,`n`n
else if (A_hour >=3 && A_Hour < 9)
	Send, Dobré ráno,`n`n
else if (A_hour >=9 && A_Hour < 11.5)
	Send, Dobré dopoledne,`n`n
else if (A_hour >=11.5 && A_Hour < 12.5)
	Send, Dobré poledne,`n`n
else if (A_hour >=12.5 && A_Hour < 17.5)
	Send, Dobré odpoledne,`n`n
else if (A_hour >=17.5 && A_Hour < 19)
	Send, Dobrý podvečer,`n`n
	else
Send, Dobrý večer,`n`n
return
	
^!e::Run C:\Program Files (x86)\Evernote\Evernote\Evernote.exe /NewNote ;otevře novou poznámku v Evernote

Insert::Send, {Media_Play_Pause}

^!m:: ;pauzne přehrávač na tři minuty
Send, {Media_Play_Pause}
Sleep, 180000
Send, {Media_Play_Pause}
return

^!t::Run https://trello.com/b/CxQQsVLu/to-do

^!l::Run www.toggl.com

^!i::Run http://jizdnirady.idnes.cz/brno/spojeni/

^!f::Run www.facebook.com

f4 & SC126::return ;vypne klávesu f4

f6 & SC126::return

f7 & SC126::return

RWin::#Tab

#w::Send !{F4}

^#w::Shutdown, 1

^#r::Shutdown, 2

:*:...::…

::--::–

:*:"_::“

:*:_"::„

:*:|"::“

:*:"|::”

:*:''::’

:*:/mk::Michal Kašpárek

:*:/euro::€

:*:/c::©

:*:/x::×

:*:/1/2::½

:*:/stup::°

:*:/promile::‰

:*:/apostrof::’

:*:/palce::"

:*:Roszke::Röszke

:*:/x::×

:*:-->::→

:*:/via::ᔥ

:*:/datum::  
FormatTime, CurrentDateTime,, d. M. yyyy  
SendInput %CurrentDateTime%
Return

^+x::
oCB := ClipboardAll  ; save clipboard contents
Send, ^c
ClipWait,1
SendInput [%ClipBoard%](http://%ClipBoard%)
ClipBoard := oCB         ; return original Clipboard contents
Return

^+v::                            ; vloží ze schránky text bez formátování (zdroj: http://www.autohotkey.com/board/topic/32037-keyboard-macro-question/)
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       
   Send ^v                       
   Sleep 2                      
   ClipBoard = %Clip0%           
   VarSetCapacity(Clip0, 0)      
Return