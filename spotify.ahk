isSpotifyOpen() {
    return WinExist("ahk_exe spotify.exe")
}

openSpotify() {
    if isSpotifyOpen()
    {
        DetectHiddenWindows, On
        WinActivate, ahk_exe spotify.exe
        return
    }

    Run, spotify.exe
}

applyAction(action, stayInSpotify := false) {
    if (not isSpotifyOpen()) {
        return
    }

    ; Get the current window's id
    WinGet, current_win_id ,, A

    ; Activate spotify's window
    DetectHiddenWindows, On
    WinActivate, ahk_exe spotify.exe

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
