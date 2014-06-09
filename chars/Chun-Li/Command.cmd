; _______________________________________
;| Chun-Li by Jmorphman                  |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1



;====================<SINGLE BUTTON>====================

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1



;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1


;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1



;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1



;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1



;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1



;====================<SUPER MOTIONS>====================

[Command]
name = "Kikosho"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "Kikosho"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "Kikosho"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "Kikosho"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "Kikosho"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "Kikosho"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "MAXKikosho"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXKikosho"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXKikosho"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "Hoyokusen"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "Hoyokusen"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "Hoyokusen"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "Hoyokusen"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "Hoyokusen"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "Hoyokusen"
command = ~D, DF, F, D, DF, F, ~c
time = 32


[Command]
name = "MAXHoyokusen"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXHoyokusen"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "MAXHoyokusen"
command = ~D, DF, F, D, DF, F, a+c
time = 32


[Command]
name = "Tenseiranka"
command = ~D, DB, B, D, DB, B, a
time = 32

[Command]
name = "Tenseiranka"
command = ~D, DB, B, D, DB, B, b
time = 32

[Command]
name = "Tenseiranka"
command = ~D, DB, B, D, DB, B, c
time = 32

[Command]
name = "Tenseiranka"
command = ~D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "Tenseiranka"
command = ~D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "Tenseiranka"
command = ~D, DB, B, D, DB, B, ~c
time = 32


[Command]
name = "MAXTenseiranka"
command = ~D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "MAXTenseiranka"
command = ~D, DB, B, D, DB, B, b+c
time = 32

[Command]
name = "MAXTenseiranka"
command = ~D, DB, B, D, DB, B, a+c
time = 32


[Command]
name = "HazanTenshyokyaku"
command = ~DB, $D, F, UF, a
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, $D, F, UF, b
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, $D, F, UF, c
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, $D, F, UF, ~a
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, $D, F, UF, ~b
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, $D, F, UF, ~c
time = 32


[Command]
name = "MAXHazanTenshyokyaku"
command = ~DB, $D, F, UF, a+b
time = 32

[Command]
name = "MAXHazanTenshyokyaku"
command = ~DB, $D, F, UF, b+c
time = 32

[Command]
name = "MAXHazanTenshyokyaku"
command = ~DB, $D, F, UF, a+c
time = 32


[Command]
name = "HazanTenshyokyaku"
command = ~DB, DF, DB, UF, a
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, DF, DB, UF, b
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, DF, DB, UF, c
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, DF, DB, UF, ~a
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, DF, DB, UF, ~b
time = 32

[Command]
name = "HazanTenshyokyaku"
command = ~DB, DF, DB, UF, ~c
time = 32


[Command]
name = "MAXHazanTenshyokyaku"
command = ~DB, DF, DB, UF, a+b
time = 32

[Command]
name = "MAXHazanTenshyokyaku"
command = ~DB, DF, DB, UF, b+c
time = 32

[Command]
name = "MAXHazanTenshyokyaku"
command = ~DB, DF, DB, UF, a+c
time = 32


[Command]
name = "Senretsukyaku"
command = ~$B, F, B, F, a
time = 32

[Command]
name = "Senretsukyaku"
command = ~$B, F, B, F, b
time = 32

[Command]
name = "Senretsukyaku"
command = ~$B, F, B, F, c
time = 32

[Command]
name = "Senretsukyaku"
command = ~$B, F, B, F, ~a
time = 32

[Command]
name = "Senretsukyaku"
command = ~$B, F, B, F, ~b
time = 32

[Command]
name = "Senretsukyaku"
command = ~$B, F, B, F, ~c
time = 32


[Command]
name = "ChargeB,F,B,F+2k"
command = ~$B, F, B, F, a+b
time = 32

[Command]
name = "ChargeB,F,B,F+2k"
command = ~$B, F, B, F, a+c
time = 32

[Command]
name = "ChargeB,F,B,F+2k"
command = ~$B, F, B, F, b+c
time = 32



[Command]
name = "FinalMission"
command = ~$B, F, B, F, x+y
time = 32

[Command]
name = "FinalMission"
command = ~$B, F, B, F, x+z
time = 32

[Command]
name = "FinalMission"
command = ~$B, F, B, F, y+z
time = 32


;====================<SPECIAL MOTIONS>====================

[Command]
name = "Kikoken"
command = ~B, DB, D, DF, F, x
time = 32

[Command]
name = "Kikoken"
command = ~B, DB, D, DF, F, y
time = 32

[Command]
name = "Kikoken"
command = ~B, DB, D, DF, F, z
time = 32

[Command]
name = "Kikoken"
command = ~B, DB, D, DF, F, ~x
time = 32

[Command]
name = "Kikoken"
command = ~B, DB, D, DF, F, ~y
time = 32

[Command]
name = "Kikoken"
command = ~B, DB, D, DF, F, ~z
time = 32


[Command]
name = "EXKikoken"
command = ~B, DB, D, DF, F, x+y
time = 32

[Command]
name = "EXKikoken"
command = ~B, DB, D, DF, F, y+z
time = 32

[Command]
name = "EXKikoken"
command = ~B, DB, D, DF, F, x+z
time = 32


[Command]
name = "ChargeD,U+K"
command = ~$D, $U, a
time = 16

[Command]
name = "ChargeD,U+K"
command = ~$D, $U, b
time = 16

[Command]
name = "ChargeD,U+K"
command = ~$D, $U, c
time = 16

[Command]
name = "ChargeD,U+K"
command = ~$D, $U, ~a
time = 16

[Command]
name = "ChargeD,U+K"
command = ~$D, $U, ~b
time = 16

[Command]
name = "ChargeD,U+K"
command = ~$D, $U, ~c
time = 16


[Command]
name = "ChargeD,U+2K"
command = ~$D, $U, a+b
time = 16

[Command]
name = "ChargeD,U+2K"
command = ~$D, $U, b+c
time = 16

[Command]
name = "ChargeD,U+2K"
command = ~$D, $U, a+c
time = 16


[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, a
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, b
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, c
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, ~a
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, ~b
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, ~c
time = 32


[Command]
name = "HCB+2K"
command = ~F, DF, D, DB, B, a+b
time = 32

[Command]
name = "HCB+2K"
command = ~F, DF, D, DB, B, b+c
time = 32

[Command]
name = "HCB+2K"
command = ~F, DF, D, DB, B, a+c
time = 32


[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16


[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16




;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15



;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10



;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1


[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1




;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Final Mission]
type = ChangeState
value = 3600
triggerAll = !AILevel
triggerAll = command = "FinalMission" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(48) > 0)
triggerAll = RoundState = 2 && StateType != A && var(40) = 1
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Hosenka]
type = ChangeState
value = 3400
triggerAll = !AILevel
triggerAll = command = "ChargeB,F,B,F+2k" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(48) > 0)
triggerAll = RoundState = 2 && StateType != A && !var(40)
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Senretsukyaku]
type = ChangeState
value = 3550
triggerAll = !AILevel
triggerAll = command = "ChargeB,F,B,F+2k" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(48) > 0)
triggerAll = RoundState = 2 && StateType != A && var(40) = 1
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Hazan Tenshyokyaku]
type = ChangeState
value = 3350
triggerAll = !AILevel
triggerAll = command = "MAXHazanTenshyokyaku" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(48) > 0 && var(50) > 0)
triggerAll = RoundState = 2 && StateType != A && var(40) = 1
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Tenseiranka]
type = ChangeState
value = 3250
triggerAll = !AILevel
triggerAll = command = "MAXTenseiranka"
triggerAll = RoundState = 2 && StateType != A && !var(40)
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Hoyokusen]
type = ChangeState
value = 3150
triggerAll = !AILevel
triggerAll = command = "MAXHoyokusen"
triggerAll = RoundState = 2 && StateType != A && !var(40)
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Kikosho]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXKikosho"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Senretsukyaku]
type = ChangeState
value = 3500
triggerAll = !AILevel
triggerAll = command = "Senretsukyaku" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(48) > 0)
triggerAll = RoundState = 2 && StateType != A && var(40) = 1
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Hazan Tenshyokyaku]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "HazanTenshyokyaku" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(48) > 0 && var(50) > 0)
triggerAll = RoundState = 2 && StateType != A && var(40) = 1
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Tenseiranka]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "Tenseiranka"
triggerAll = RoundState = 2 && StateType != A && !var(40)
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Hoyokusen]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "Hoyokusen"
triggerAll = RoundState = 2 && StateType != A && !var(40)
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Kikosho]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "Kikosho"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Chudanrenshu (First Hit)]
type = ChangeState
value = 231
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
triggerAll = StateNo = 230
trigger1 = MoveContact

[State -1, Chudanrenshu (Second Hit)]
type = ChangeState
value = 232
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
triggerAll = StateNo = 231
trigger1 = MoveContact

[State -1, EX Kikoken]
type = ChangeState
value = 1030
triggerAll = !AILevel
triggerAll = command = "EXKikoken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Spinning Bird Kick / Tenshyokyaku]
type = ChangeState
value = 1230 + 100 * var(40)
triggerAll = !AILevel
triggerAll = command = "ChargeD,U+2K" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(50) > 16)
triggerAll = RoundState=2 && StateType != A
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Hazanshu / Senenshu]
type = ChangeState
value = 1430 + 100 * var(40)
triggerAll = !AILevel
triggerAll = command = "HCB+2K"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Hyakuretsukyaku]
type = ChangeState
value = 1130
triggerAll = !AILevel
triggerAll = command = "kk" && var(45) >= 5
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = StateNo != 231
trigger1 = ctrl || StateNo = 40 || stateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Kikoken]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "Kikoken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Spinning Bird Kick / Tenshyokyaku]
type = ChangeState
value = 1200 + 100 * var(40)
triggerAll = !AILevel
triggerAll = command = "ChargeD,U+K" && ifElse(var(20) > 0 || (StateNo = [1000,4999]), 1, var(50) > 16)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Hazanshu / Senenshu]
type = ChangeState
value = 1400 + 100 * var(40)
triggerAll = !AILevel
triggerAll = command = "HCB+K"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Hyakuretsukyaku]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = (command = "a" || command = "b" || command = "c") && var(45) >= 5
triggerAll = RoundState = 2 && StateType != A
triggerAll = StateNo != 231
trigger1 = ctrl || StateNo = 40 || StateNo= 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(43)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Sankaku Tobi Forward]
type = ChangeState
value = 60
triggerAll = !AILevel
triggerAll = StateNo != 60 && PrevStateNo != 60 && vel x
trigger1 = command = "holdup" && command = "holdfwd"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && vel x < 0 && pos y <= -32 && BackEdgeBodyDist <= 0

[State -1, Sankaku Tobi Backwards]
type = ChangeState
value = 61
triggerAll = !AILevel
triggerAll = StateNo != 61 && PrevStateNo != 61
trigger1 = command = "holdup" && command = "holdback"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && vel x < 0 && pos y <= -32 && FrontEdgeBodyDist <= 0

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -32

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 32) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Kakukyakuraku]
type = ChangeState
value = 258
triggerAll = !AILevel
triggerall = command = "holddown" && command = "holdfwd" && command = "c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Yokusenkyaku]
type = ChangeState
value = 250
triggerAll = !AILevel
triggerall = command != "holddown" && command = "c" && command = "holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 26) * 5
triggerAll = !AILevel
triggerall = command != "holddown" && command = "c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) <= 20) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Kakusenshu]
type = ChangeState
value = 249
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2bodydist X) <= 32) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Light Punch]
type = ChangeState
value = 200
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 235 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2bodydist X) <= 10) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 235 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 235 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 235 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Yoshiken]
type = ChangeState
value = 621
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
triggerAll = vel x
trigger1 = StateNo = 620 && AnimElemTime(3) > 1 && AnimElemTime(7) < 0

[State -1, Angled Jumping Heavy Kick]
type = ChangeState
value = 651
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
triggerAll = vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
triggerAll = !vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Yosokyaku]
type = ChangeState
value = 648
triggerAll = !AILevel
triggerAll = command = "b" && command = "holddown"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Angled Jumping Medium Kick]
type = ChangeState
value = 641
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
triggerAll = vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
triggerAll = !vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Angled Jumping Light Kick]
type = ChangeState
value = 631
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
triggerAll = vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
triggerAll = !vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)

;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 850
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = A
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = ctrl && pos y <= -32
trigger1 = P2StateType = A && Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = (P2Dist x = [-20,33]) && (P2Dist y = [-118,48])

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist x) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,94]) && (P2Dist y = [-70,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist x) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,61]) && (P2Dist y = [-81,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,64]) && (P2Dist y = [-35,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,79]) && (P2Dist y = [-59,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,47]) && (P2Dist y = [-78,59]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = ifElse(vel x > 0, 651, 650)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,55]) && (P2Dist y = [-116,-55]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist x) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,78]) && (P2Dist y = [-93,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist x) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,71]) && (P2Dist y = [-96,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-11,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,73]) && (P2Dist y = [-9,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,37]) && (P2Dist y = [-66,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Yosokyaku]
type = ChangeState
value = 648
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-10,10]) && (P2Dist y = [-43,40]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = ifElse(vel x > 0, 641, 640)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,24]) && (P2Dist y = [-116,40]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-79,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,49]) && (P2Dist y = [-67,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,49]) && (P2Dist y = [-41,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,64]) && (P2Dist y = [-7,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,36]) && (P2Dist y = [-53,28]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = ifElse(vel x > 0, 631, 630)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,20]) && (P2Dist y = [-130,40]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, EX Spinning Bird Kick]
type = ChangeState
value = 1230
triggerAll = AILevel && NumEnemy && Power >= 500
triggerAll = RoundState = 2 && StateType != A && var(40) != 1
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = (P2BodyDist x = [-80,80]) && P2StateType = A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Tenshyokyaku]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1330, 1300)
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-83,83]) && P2StateType != A) || ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Hazanshu]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1430, 1400)
triggerAll = AILevel && NumEnemy && var(40) != 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [0,175]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Senenshu]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1530, 1500)
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [0,150]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Spinning Bird Kick]
type = ChangeState
value = 1200
triggerAll = AILevel && NumEnemy && var(40) != 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-21,220]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Hyakuretsukyaku]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-22,58]) && (P2Dist y = [-104,0])
triggerAll = (P2StateType != A || P2MoveType = H) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger1 = Random < (ifElse((P2StateNo = [120,155]), 100, 50) * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4 && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 8

[State -1, Kikoken]
type = ChangeState
value = ifElse(!var(40) && Power >= 500 && Random < 100, 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Final Mission]
type = ChangeState
value = 3600
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && P2StateNo != 5201
triggerAll = (P2BodyDist x = [-125,125]) && (P2Dist y = [-32,127])
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != A && P2StateType != L && (P2Dist y = [-48,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Hosenka]
type = ChangeState
value = 3400
triggerAll = AILevel && NumEnemy && var(40) != 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && P2StateNo != 5201
triggerAll = (P2BodyDist x = [-140,140]) && (P2Dist y = [-32,32])
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != A && P2StateType != L && (P2Dist y = [-48,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, MAX Kikosho]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 2 || (stateno = [1000, 4999]))
triggerAll = (Enemynear, StateNo != [120, 155]) || EnemyNear, StateType = A
triggerAll = EnemyNear, StateType != L
triggerAll = (P2BodyDist x = [0,97]) && (P2Dist y = [ -121,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(8) && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, MAX Hoyokusen]
type = ChangeState
value = 3150
triggerAll = AILevel && NumEnemy && var(40) != 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-120,120]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Tenseiranka]
type = ChangeState
value = 3250
triggerAll = AILevel && NumEnemy && var(40) != 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,43]) && (P2Dist y = [-132,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger3 = var(8) && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = StateNo = 3001 && AnimElemTime(9) < 0
trigger3 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, MAX Hazan Tenshykyaku]
type = ChangeState
value = 3350
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,75]) && (P2Dist y = [-32,136])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Senretsukyaku]
type = ChangeState
value = 3550
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-95,95]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Kikosho]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || (stateno = [1000, 4999]))
triggerAll = (Enemynear, StateNo != [120, 155]) || EnemyNear, StateType = A
triggerAll = EnemyNear, StateType != L
triggerAll = (P2BodyDist x = [0,97]) && (P2Dist y = [ -121,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Hoyokusen]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy && var(40) != 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-120,120]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Tenseiranka]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy && var(40) != 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,43]) && (P2Dist y = [-89,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, Hazan Tenshyokyaku]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-32,95])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Senretsukyaku]
type = ChangeState
value = 3500
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-95,95]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
