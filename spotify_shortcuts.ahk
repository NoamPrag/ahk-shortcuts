#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#include, ./spotify.ahk

#s::activateSpotifyShortcut()

activateSpotifyShortcut() {
    Input, inp, L1

    global PATH_TO_SPOTIFY_EXE

    Switch inp
    {
    Case "o":
        openApp(PATH_TO_SPOTIFY_EXE)

    Case "l":
        applyAction("likeCurrentSong")

    Case "f":
        applyAction("seekForward")

    Case "b":
        applyAction("seekBackward")

    Case "q":
        applyAction("goToQueue", true)

    Case "p":
        applyAction("goToPlaylists", true)

    Case "0":
        applyAction("goToLikedSongs", true)

    Case "s":
        applyAction("toggleShuffle")

    Default:
    }
}