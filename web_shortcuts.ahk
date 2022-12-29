#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#include, ./web.ahk

#c::activateChromeShortcut()

activateChromeShortcut() {
    Input, inp, L2 T0.3

    if (StrLen(inp) = 0) {
        return
    }

    Switch inp
    {
    Case "o":
        openApp("Chrome")

    Case "t":
        openNewTab()

    Case "w":
        openNewWindow()

    Case "g":
        startUrl("github.com")

    Case "ca":
        startUrl("calendar.google.com")
    Case "cl":
        startUrl("classroom.google.com")
    Case "ch":
        startUrl("https://mail.google.com/chat/u/0/")

    Case "m":
        startUrl("gmail.google.com/mail/u")
    Case "mc":
        startUrl("mathcha.io/editor")

    case "d":
        starturl("drive.google.com/drive/my-drive")
    case "de":
        starturl("desmos.com/calculator")

    Case "u":
        startUrl("openu.ac.il")

    Case "s":
        startUrl("sheilta.apps.openu.ac.il")

    Case "y":
        startUrl("youtube.com")

    Default:
    }
}