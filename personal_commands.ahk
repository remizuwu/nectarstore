case "StoreNectar", "NectarStore":
    if !(params[2] ~= "i)^(invigorating|motivating|refreshing|satisfying|comforting)$")
        return discord.sendembed("invalid nectar") command_buffer.removeAt(1)
function() {
    global bitmaps
    GetRobloxClientPos()
    yOffset := GetYOffset()
    pBMScreen := Gdip_BitmapFromScreen(windowX + windowWidth // 2 - 200 "|" windowY + yOffset + 30 "|600|70")
    if Gdip_ImageSearch(pBMScreen, bitmaps["nectarpot"], &DetectCoords, , , , , 5) {
        Send "e"
        Sleep 100
    } else {
        if Gdip_ImageSearch(pBMScreen, bitmaps["claimnectar"], &DetectCoords, , , , , 5) {
            Send "e"
            Sleep 100
            Send "e"
        }
    }
    Gdip_DisposeImage(pBMScreen)
    GetRobloxClientPos()
    if !Gdip_ImageSearch(pBMScreen, bitmaps["empty" SubStr(params[1], 1, 3)], &FoundPos, , , , , 5) {
        Gdip_DisposeImage(pBMScreen)
        return
    }
    if !Gdip_ImageSearch(pBMScreen, bitmaps["pot" SubStr(params[1], 1, 3)], , , , , , 5) {
        Gdip_DisposeImage(pBMScreen)
        pBMScreen := Gdip_BitmapFromScreen(((windowX + windowWidth) / 2) - 286 "|" ((windowY + windowHeight) / 2) - 267 "|290|159")
        click (n := StrSplit(FoundPos, ","))[1] " " n[2]
        sleep 100
        pBMScreen := Gdip_BitmapFromScreen(windowX + windowWidth // 2 - 250 "|" windowY + offsetY + windowHeight // 2 - 52 "|500|150")
        if (Gdip_ImageSearch(pBMScreen, bitmaps["yes"], &pos, , , , , 2, , 2) = 1)
        {
            Gdip_DisposeImage(pBMScreen)
            SendEvent "{Click " windowX + windowWidth // 2 - 250 + SubStr(pos, 1, InStr(pos, ",") - 1) "         " windowY + offsetY + windowHeight // 2 - 52 + SubStr(pos, InStr(pos, ",") + 1) "}"
        }
    }
}
case "storeNectar": 
    static nectarMap := Map("Comforting", 1, "Refreshing", 2, "Satisfying", 3, "Motivating", 4, "Invigorating", 5)
    DetectHiddenWindows 1
    msgbox "hi"
    if winexist("natro_macro.ahk ahk_class AutoHotkey")
        Switch messageOut := SendMessage(0x5561, nectarMap[params[1]]) {
            case 1: discord.sendEmbed("successfully stored " params[1] " nectar!", 0x00FF00 + 0)
default:discord.sendEmbed("failed to store nectar because: " (messageOut == 0 ? "Roblox not found!" : messageOut = 2 ? "Unable to detect yOffset!" : messageOut = 3 ? "Nectar " params[1] " is empty!" : "unhandled error!"), 0xFF0000 + 0)
    }
    detectHiddenWindows 0