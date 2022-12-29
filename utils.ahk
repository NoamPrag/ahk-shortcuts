isAppOpen(app) {
    DetectHiddenWindows, On
    return WinExist("ahk_exe " . app)
}

isWindowActivated(app) {
    DetectHiddenWindows, On
    return WinActive("ahk_exe " . app)
}

openApp(app) {
    if isWindowActivated(ap) {
        return
    }
    if isAppOpen(app)
    {
        DetectHiddenWindows, On
        WinActivate, ahk_exe %app%
        return
    }

    Run, %app%
}

findPathToExe(paths, appName) {
    for _, p in paths {
        if FileExist(p) {
            return p
        }
    }
    MsgBox % "Can't find" appName 
    ExitApp, 1
}