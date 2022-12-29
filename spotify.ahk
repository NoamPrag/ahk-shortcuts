#Include, utils.ahk

setPathToSpotify() {
    EnvGet, username, username
    
    p1 = C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.exe
    p2 = C:\Users\%username%\AppData\Local\Microsoft\WindowsApps\Spotify.exe
    p3 = C:\Users\%username%\AppData\Roaming\Spotify\Spotify.exe
    
    paths := Array(p1, p2, p3)

    global PATH_TO_SPOTIFY_EXE
    PATH_TO_SPOTIFY_EXE := findPathToExe(paths, "Spotify.exe")
}

PATH_TO_SPOTIFY_EXE := ""
setPathToSpotify()

applyAction(action, stayInSpotify := false) {
    global PATH_TO_SPOTIFY_EXE
    if (not isAppOpen("Spotify.exe")) {
        MsgBox, hi
        return
    }

    ; Get the current window's id
    WinGet, current_win_id ,, A

    ; Activate spotify's window
    DetectHiddenWindows, On
    WinActivate, ahk_exe %PATH_TO_SPOTIFY_EXE%

    %action%()

    if (not stayInSpotify) {
        WinActivate ahk_id %current_win_id%
    }
}

likeCurrentSong() {
    Send !+b
}

seekBackward() {
    Send {Shift Down}{Left}{Shift Up}
}

seekForward() {
    Send {Shift Down}{Right}{Shift Up}
}

goToQueue() {
    Send, !+q
}

goToLikedSongs() {
    Send, !+s
}

goToPlaylists() {
    Send, !+1
}

toggleShuffle() {
    Send, ^s
}
