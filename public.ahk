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

^!g::Run https://mail.google.com/mail/u/0/#inbox

^!d::Run https://docs.google.com/document/u/0/

^!s::Run https://docs.google.com/spreadsheets/u/0/

^!c::Run https://calendar.google.com/calendar/u/0/r

^!l::Run www.toggl.com

#w::Send !{F4}

^#w::Shutdown, 1

^#r::Shutdown, 2

:*:...::…

:*: -->:: →

:: --:: –

:*:"_::“

:*:_"::„

:*:|"::“

:*:"|::”

:*:''::’

:*:/mk::Michal Kašpárek

:*:/euro::€

:*:/x::×

:*:/1/2::½

:*:/stup::°

:*:/promile::‰

:*:/apostrof::’

:*:/x::×

:*:/datum::  
FormatTime, CurrentDateTime,, d. M. yyyy  
SendInput %CurrentDateTime%
Return

:*:/mutad::  
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%
Return

^!u::
    NowUTC := A_NowUTC
	NowUTC -= 19700101000000, S
	Send, %NowUTC%
return

PrintScreen::AppsKey
RControl & PrintScreen::PrintScreen

:*:/pandoc::pandoc.exe -f markdown -t docx
