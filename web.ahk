#Include, utils.ahk

openNewTab() {
    openApp("Chrome")
    Send, ^t
}

openNewWindow() {
    Run, Chrome.exe
}

startUrl(url) {
    openNewTab()
    SendRaw, %url%
    Send, {Enter}
}