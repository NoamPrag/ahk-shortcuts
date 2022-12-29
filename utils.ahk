isAppOpen(app) {
    return WinExist("ahk_exe " . app . ".exe")
}

isWindowActivated(app) {
    return WinActive("ahk_exe " . app . ".exe")
}

openApp(app) {
    if isWindowActivated(ap) {
        return
    }
    if isAppOpen(app)
    {
        DetectHiddenWindows, On
        WinActivate, ahk_exe %app%.exe
        return
    }

    Run, %app%.exe
}