if (MoveMethod = "walk")
{
    nm_gotoramp()
    nm_Walk(67.5, BackKey, LeftKey)
    send "{" RotRight " 4}"
    nm_Walk(31.5, FwdKey)
    nm_Walk(9, LeftKey)
    nm_Walk(9, BackKey)
    nm_Walk(58.5, LeftKey)
    nm_Walk(49.5, FwdKey)
    nm_Walk(3.375, LeftKey)
    nm_Walk(36, FwdKey)
    nm_Walk(54, RightKey)
    nm_Walk(54, BackKey)
    nm_Walk(58.5, RightKey)
    nm_Walk(3, LeftKey)
    nm_Walk(57, FwdKey)
    nm_Walk(16, LeftKey)
}
else
{
    nm_gotoramp()
    nm_gotocannon()
    send "{" SC_E " down}"
    HyperSleep(100)
    send "{" SC_E " up}{" LeftKey " down}{" BackKey " down}"
    HyperSleep(1400)
    send "{" SC_Space " 2}"
    HyperSleep(1100)
    send "{" LeftKey " up}"
    HyperSleep(650)
    send "{" BackKey " up}{" SC_Space "}{" RotRight " 4}"
    Sleep 1500
    nm_Walk(4, RightKey, FwdKey)
    nm_Walk(23, FwdKey)
    nm_Walk(9, LeftKey)
}
nm_Walk(3, FwdKey)
nm_Walk(8, LeftKey)
nm_Walk(3.6, RightKey)
nm_Walk(12, FwdKey)
HyperSleep(100)
nm_Walk(23.4, RightKey)
nm_Walk(10, BackKey, LeftKey)
nm_Walk(11, RightKey)
nm_Walk(2.2, FwdKey, LeftKey)
; First half from gtc-nightmm made by SP, Path made by @Remizu
