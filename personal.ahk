if fileExist(".\paths\gtc-nectarpot.ahk")
  paths["gtc"]["nectarpot"] := FileRead(".\paths\gtc-nectarpot")
else throw Error("File not found", , ".\paths\gtc-nectarpot")

OnMessage(0x5561, nectarPotFunction)

nectarPotFunction(wParam, lParam, *) {
  if !(hwnd := GetRobloxHWND())
    return 0
  yOffset := GetYOffset(hwnd, &fail)
  if fail
    return 2
  if !ba_getNectarPercent(nectarNames[wParam])
    return 3
  return 1
}