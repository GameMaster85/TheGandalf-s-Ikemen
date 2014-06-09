; _______________________________
;| Nash by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;====================< BUTTON REMAPPING >====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================< DEFAULT VALUES >====================

[Defaults]
command.time = 15
command.buffer.time = 1


;====================< SINGLE BUTTON >====================

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


;====================< HOLD DIR >====================

[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = /$D
time = 1


;====================< HOLD BUTTON >====================

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


;====================< DIR >====================

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


;====================< RELEASE DIR >====================

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


;====================< RELEASE BUTTON >====================

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


;====================< SUPER MOTIONS >====================

[Command]
name = "cdbdfdbup"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "cdbdfdbup"
command = ~D, DB, B, D, DB, B, y
time = 30
[Command]
name = "cdbdfdbup"
command = ~D, DB, B, D, DB, B, z
time = 30
[Command]
name = "cdbdfdbup"
command = ~D, DB, B, D, DB, B, ~x
time = 30
[Command]
name = "cdbdfdbup"
command = ~D, DB, B, D, DB, B, ~y
time = 30
[Command]
name = "cdbdfdbup"
command = ~D, DB, B, D, DB, B, ~z
time = 30

[Command]
name = "dbdfdbup"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "dbdfdbup"
command = ~D, DB, B, D, DB, B, y
time = 30
[Command]
name = "dbdfdbup"
command = ~D, DB, B, D, DB, B, z
time = 30
[Command]
name = "dbdfdbup"
command = ~D, DB, B, D, DB, B, ~x
time = 30
[Command]
name = "dbdfdbup"
command = ~D, DB, B, D, DB, B, ~y
time = 30
[Command]
name = "dbdfdbup"
command = ~D, DB, B, D, DB, B, ~z
time = 30

[Command]
name = "cdbdfdbuk"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "cdbdfdbuk"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "cdbdfdbuk"
command = ~D, DB, B, D, DB, B, c
time = 30
[Command]
name = "cdbdfdbuk"
command = ~D, DB, B, D, DB, B, ~a
time = 30
[Command]
name = "cdbdfdbuk"
command = ~D, DB, B, D, DB, B, ~b
time = 30
[Command]
name = "cdbdfdbuk"
command = ~D, DB, B, D, DB, B, ~c
time = 30

[Command]
name = "dbdfdbuk"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "dbdfdbuk"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "dbdfdbuk"
command = ~D, DB, B, D, DB, B, c
time = 30
[Command]
name = "dbdfdbuk"
command = ~D, DB, B, D, DB, B, ~a
time = 30
[Command]
name = "dbdfdbuk"
command = ~D, DB, B, D, DB, B, ~b
time = 30
[Command]
name = "dbdfdbuk"
command = ~D, DB, B, D, DB, B, ~c
time = 30

[Command]
name = "cbfbf2p"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "cbfbf2p"
command = ~D, DF, F, D, DF, F, x+z
time = 30
[Command]
name = "cbfbf2p"
command = ~D, DF, F, D, DF, F, y+z
time = 30

[Command]
name = "bfbf2p"
command = ~D, DF, F, D, DF, F, x+z
time = 30
[Command]
name = "bfbf2p"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "bfbf2p"
command = ~D, DF, F, D, DF, F, y+z
time = 30

[Command]
name = "cbfbfp"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "cbfbfp"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "cbfbfp"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "cbfbfp"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "cbfbfp"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "cbfbfp"
command = ~D, DF, F, D, DF, F, ~z
time = 30

[Command]
name = "bfbfp"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "bfbfp"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "bfbfp"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "bfbfp"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "bfbfp"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "bfbfp"
command = ~D, DF, F, D, DF, F, ~z
time = 30

[Command]
name = "cbfbf2k"
command = ~D, DF, F, D, DF, F, a+b
time = 30
[Command]
name = "cbfbf2k"
command = ~D, DF, F, D, DF, F, a+c
time = 30
[Command]
name = "cbfbf2k"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "bfbf2k"
command = ~D, DF, F, D, DF, F, a+b
time = 30
[Command]
name = "bfbf2k"
command = ~D, DF, F, D, DF, F, a+c
time = 30
[Command]
name = "bfbf2k"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "cbfbfk"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "cbfbfk"
command = ~D, DF, F, D, DF, F, b
time = 30
[Command]
name = "cbfbfk"
command = ~D, DF, F, D, DF, F, c
time = 30
[Command]
name = "cbfbfk"
command = ~D, DF, F, D, DF, F, ~a
time = 30
[Command]
name = "cbfbfk"
command = ~D, DF, F, D, DF, F, ~b
time = 30
[Command]
name = "cbfbfk"
command = ~D, DF, F, D, DF, F, ~c
time = 30

[Command]
name = "bfbfk"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "bfbfk"
command = ~D, DF, F, D, DF, F, b
time = 30
[Command]
name = "bfbfk"
command = ~D, DF, F, D, DF, F, c
time = 30
[Command]
name = "bfbfk"
command = ~D, DF, F, D, DF, F, ~a
time = 30
[Command]
name = "bfbfk"
command = ~D, DF, F, D, DF, F, ~b
time = 30
[Command]
name = "bfbfk"
command = ~D, DF, F, D, DF, F, ~c
time = 30

[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, b
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, c
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, ~a
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, ~b
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, ~c
time = 30


;====================< SPECIAL MOTIONS >====================

[Command]
name = "cdu2k"
command = ~45$D, $U, a+b
time = 15
[Command]
name = "cdu2k"
command = ~45$D, $U, a+c
time = 15
[Command]
name = "cdu2k"
command = ~45$D, $U, b+c
time = 15

[Command]
name = "du2k"
command = ~$D, $U, a+b
time = 15
[Command]
name = "du2k"
command = ~$D, $U, a+c
time = 15
[Command]
name = "du2k"
command = ~$D, $U, b+c
time = 15

[Command]
name = "cduk"
command = ~45$D, $U, a
time = 15
[Command]
name = "cduk"
command = ~45$D, $U, b
time = 15
[Command]
name = "cduk"
command = ~45$D, $U, c
time = 15
[Command]
name = "cduk"
command = ~45$D, $U, ~a
time = 15
[Command]
name = "cduk"
command = ~45$D, $U, ~b
time = 15
[Command]
name = "cduk"
command = ~45$D, $U, ~c
time = 15

[Command]
name = "duk"
command = $D, $U, a
time = 15
[Command]
name = "duk"
command = $D, $U, b
time = 15
[Command]
name = "duk"
command = $D, $U, c
time = 15
[Command]
name = "duk"
command = $D, $U, ~a
time = 15
[Command]
name = "duk"
command = $D, $U, ~b
time = 15
[Command]
name = "duk"
command = $D, $U, ~c
time = 15

[Command]
name = "cbf2p"
command = ~45$B, F, x+y
time = 15
[Command]
name = "cbf2p"
command = ~45$B, F, x+z
time = 15
[Command]
name = "cbf2p"
command = ~45$B, F, y+z
time = 15

[Command]
name = "bf2p"
command = $B, F, x+y
time = 15
[Command]
name = "bf2p"
command = $B, F, x+z
time = 15
[Command]
name = "bf2p"
command = $B, F, y+z
time = 15

[Command]
name = "cbfp"
command = ~45$B, F, x
time = 15
[Command]
name = "cbfp"
command = ~45$B, F, y
time = 15
[Command]
name = "cbfp"
command = ~45$B, F, z
time = 15
[Command]
name = "cbfp"
command = ~45$B, F, ~x
time = 15
[Command]
name = "cbfp"
command = ~45$B, F, ~y
time = 15
[Command]
name = "cbfp"
command = ~45$B, F, ~z
time = 15

[Command]
name = "bfp"
command = $B, F, x
time = 15
[Command]
name = "bfp"
command = $B, F, y
time = 15
[Command]
name = "bfp"
command = $B, F, z
time = 15
[Command]
name = "bfp"
command = $B, F, ~x
time = 15
[Command]
name = "bfp"
command = $B, F, ~y
time = 15
[Command]
name = "bfp"
command = $B, F, ~z
time = 15

[Command]
name = "qcfk"
command = ~D, DF, F, a
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, b
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, c
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, ~a
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, ~b
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "ucf2k"
command = ~U, UF, F, a+b
time = 15
[Command]
name = "ucf2k"
command = ~U, UF, F, a+c
time = 15
[Command]
name = "ucf2k"
command = ~U, UF, F, b+c
time = 15

[Command]
name = "ucfk"
command = ~U, UF, F, a
time = 15
[Command]
name = "ucfk"
command = ~U, UF, F, b
time = 15
[Command]
name = "ucfk"
command = ~U, UF, F, c
time = 15
[Command]
name = "ucfk"
command = ~U, UF, F, ~a
time = 15
[Command]
name = "ucfk"
command = ~U, UF, F, ~b
time = 15
[Command]
name = "ucfk"
command = ~U, UF, F, ~c
time = 15

[Command]
name = "bdp"
command = ~B, DB, D, x
time = 20
[Command]
name = "bdp"
command = ~B, DB, D, y
time = 20
[Command]
name = "bdp"
command = ~B, DB, D, z
time = 20

[Command]
name = "bdk"
command = ~B, DB, D, a
time = 20
[Command]
name = "bdk"
command = ~B, DB, D, b
time = 20
[Command]
name = "bdk"
command = ~B, DB, D, c
time = 20


;====================< OTHER >====================

[Command]
name = "highjump"
command = $D, $U
time = 15


;====================< DOUBLE TAP >====================

[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10


;====================< 2/3 BUTTON COMBINATION >====================

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
name = "2k"
command = a+b
time = 1
[Command]
name = "2k"
command = a+c
time = 1
[Command]
name = "2k"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1


;==============================================================================================
;========================================< -1 STATES >===========================================
;==============================================================================================

[Statedef -1]

[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = (stateno = 52 || stateno = 101 || stateno = 106 || stateno = 5120) && !animtime
trigger2 = (stateno = [200, 499]) && !animtime
trigger3 = ((stateno = [700, 702]) || (stateno = [710, 725]) || (stateno = [900, 905])) && !animtime
trigger4 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, Roll Forward]
type = changestate
value = 720
triggerall = !AIlevel
triggerall = command = "a+x"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl && (command = "holdfwd" || command = "holdback")
trigger2 = var(20) && var(6)

[State -1, Dodge]
type = changestate
value = 710
trigger1 = !AIlevel
trigger1 = command = "a+x"
trigger1 = roundstate = 2 && statetype != A
trigger1 = ctrl

[State -1, Final Mission]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = command = "cbfbf2p" || (((stateno = [1000, 4999])||var(20)) && command = "bfbf2p")
triggerall = var(1) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || stateno = 52
trigger2 = stateno != 3400 && var(8) && var(15) <= 0

[State -1, Sonic Blade]
type = changestate
value = 3600
triggerall = !AIlevel
triggerall = command = "cbfbf2p" || (((stateno = [1000, 4999])||var(20)) && command = "bfbf2p")
triggerall = !var(1) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = !numhelper(3600)
trigger1 = ctrl || stateno = 52
trigger2 = stateno != 3600 && var(8) && var(15) <= 0

[State -1, Sommersault Justice]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "cdbdfdbuk" || (((stateno = [1000, 4999])||var(20)) && command = "dbdfdbuk")
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = stateno != 3100 && var(8) && var(15) <= 1

[State -1, Crossfire Blitz MvC]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = command = "cbfbf2k" || (((stateno = [1000, 4999])||var(20)) && command = "bfbf2k")
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
trigger1 = ctrl || stateno = 52
trigger2 = stateno != 3301 && var(8) && var(15) <= 1

[State -1, 0.....]
type = changestate
value = 3700
triggerall = !AIlevel
triggerall = command = "2qcfk"
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = power >= 1000 && (var(20) <= 60)
trigger1 = ctrl
trigger2 = stateno != 3700 && var(8) && var(15) <= 2

[State -1, Crossfire Blitz]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "cbfbfk" || (((stateno = [1000, 4999])||var(20)) && command = "bfbfk")
triggerall = roundstate = 2 && statetype != A && power >= 1000 && (var(20) <= 60)
trigger1 = ctrl || stateno = 52
trigger2 = stateno != 3200 && var(8) && var(15) <= 2

[State -1, Sonic Break]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "cbfbfp" || (((stateno = [1000, 4999])||var(20)) && command = "bfbfp")
triggerall = roundstate = 2 && statetype != A && power >= 1000 && (var(20) <= 60)
trigger1 = ctrl || stateno = 52
trigger2 = stateno != 3000 && var(8) && var(15) <= 2

[State -1, Reversed Sommersault]
type = changestate
value = 3500
triggerall = !AIlevel
triggerall = command = "cdbdfdbup" || (((stateno = [1000, 4999])||var(20)) && command = "cdbdfdbup")
triggerall = roundstate = 2 && statetype != A && power >= 1000 && (var(20) <= 60)
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = stateno != 3500 && var(8) && var(15) <= 2

[State -1, EX Sommersault Shell]
type = changestate
value = 1120
triggerall = !AIlevel
triggerall = (var(20) <= 0 && command = "cdu2k") || (var(20) > 0 && command = "du2k")
triggerall = roundstate = 2 && statetype != A && power >= 500 && (var(20) <= 60)
triggerall = !numhelper(1120)
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = var(7)

[State -1, EX Moonsault Slash]
type = changestate
value = 1220
triggerall = !AIlevel
triggerall = command = "ucf2k"
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -32
triggerall = power >= 500 && (var(20) <= 60)
trigger1 = ctrl
trigger2 = var(7)

[State -1, EX Sonic Boom]
type = changestate
value = 1020
triggerall = !AIlevel
triggerall = (var(20) <= 0 && command = "cbf2p") || (var(20) > 0 && command = "bf2p")
triggerall = roundstate = 2 && statetype != A && power >= 500 && (var(20) <= 60)
triggerall = ifelse(!var(20), !numhelper(1000), 1) && !numhelper(1020) && !numhelper(3000) && !numhelper(3600)
trigger1 = ctrl || stateno = 52
trigger2 = var(7)

[State -1, Sommersault Shell]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = (var(20) <= 0 && command = "cduk") || (var(20) > 0 && command = "duk")
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = var(7)

[State -1, Moonsault Slash]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = command = "ucfk"
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -32
trigger1 = ctrl
trigger2 = var(7)

[State -1, Sonic Boom]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = (var(20) <= 0 && command = "cbfp") || (var(20) > 0 && command = "bfp")
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1000), 1) && !numhelper(1020) && !numhelper(3000) && !numhelper(3600)
trigger1 = ctrl || stateno = 52
trigger2 = var(7)

[State -1, Shadow Warp]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "qcfk"
triggerall = var(1) && roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = var(7)

[State -1, Recovery Roll]
type = changestate
trigger1 = !AIlevel
trigger1 = command = "2k"
trigger1 = (stateno = 5040 || stateno = 5050) && vel y > -1 && alive
value = 5220

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = (command = "bdp" || command = "bdk")
trigger1 = roundstate = 2 && statetype != A && power >= 1000 && !var(20)

[State -1, Excel Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
trigger1 = !AIlevel
trigger1 = command = "c+z"
trigger1 = roundstate = 2 && power >= 1000 && !var(20)
trigger1 = ctrl

[State -1, Power Charge]
type = changestate
value = 730
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = roundstate = 2 && statetype != A && !var(20)
trigger1 = ctrl && power < const(data.power) && power < powermax

[State -1, Run]
type = changestate
value = 100
trigger1 = !AIlevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Dash]
type = changestate
value = 105
trigger1 = !AIlevel
trigger1 = command = "BB"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Air Throw]
type = changestate
value = 850
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = A && ctrl && (pos y <= -42 || vel y < 0)

[State -1, Throw]
type = changestate
value = 800
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = S && ctrl

[State -1, SHPc]
type = changestate
value = 221
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "z"
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 48)]
trigger1 = ctrl
trigger2 = var(6)

[State -1, SHPf]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "z"
trigger1 = ctrl
trigger2 = var(6)

[State -1, Step Kick]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "c"
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = ctrl
trigger2 = var(6)

[State -1, SHKc]
type = changestate
value = 251
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "c"
triggerall = command != "holdfwd" && command != "holdback"
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 48)]
trigger1 = ctrl
trigger2 = var(6)

[State -1, SHKf]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "c"
trigger1 = ctrl
trigger2 = var(6)

[State -1, SMPc]
type = changestate
value = 211
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "y"
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 28)]
trigger1 = ctrl
trigger2 = var(6)

[State -1, SMPf]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "y"
trigger1 = ctrl
trigger2 = var(6)

[State -1, SMKc]
type = changestate
value = 241
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "b"
triggerall = command != "holdfwd" && command != "holdback"
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 38)]
trigger1 = ctrl
trigger2 = var(6)

[State -1, SMKf]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "b"
trigger1 = ctrl
trigger2 = var(6)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "x"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, Knee Bazooka]
type = changestate
value = 235
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && (command = "holdfwd" || command = "holdback") && command = "a"
trigger1 = ctrl
trigger2 = var(6)

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "a"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, CHP]
type = changestate
value = 420
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "z"
trigger1 = ctrl
trigger2 = var(6)

[State -1, CHK]
type = changestate
value = 450
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "c"
trigger1 = ctrl
trigger2 = var(6)

[State -1, CMP]
type = changestate
value = 410
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "y"
trigger1 = ctrl
trigger2 = var(6)

[State -1, CMK]
type = changestate
value = 440
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "b"
trigger1 = ctrl
trigger2 = var(6)

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "x"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, CLK]
type = changestate
value = 430
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "a"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, AHP]
type = changestate
value = 620
triggerall = !AIlevel
triggerall = statetype = A && command = "z"
trigger1 = ctrl
trigger2 = var(6)

[State -1, AHK]
type = changestate
value = 650
triggerall = !AIlevel
triggerall = statetype = A && command = "c"
trigger1 = ctrl
trigger2 = var(6)

[State -1, AMP]
type = changestate
value = 610
triggerall = !AIlevel
triggerall = statetype = A && command = "y"
trigger1 = ctrl
trigger2 = var(6)

[State -1, AMK]
type = changestate
value = 640
triggerall = !AIlevel
triggerall = statetype = A && command = "b"
trigger1 = ctrl
trigger2 = var(6)

[State -1, ALP]
type = changestate
value = 600
triggerall = !AIlevel
triggerall = statetype = A && command = "x"
trigger1 = ctrl
trigger2 = var(6)

[State -1, ALK]
type = changestate
value = 630
triggerall = !AIlevel
triggerall = statetype = A && command = "a"
trigger1 = ctrl
trigger2 = var(6)

[State -1, Taunt]
type = changestate
value = 195 + (command = "holdfwd")
triggerall = !AIlevel
triggerall = statetype != A && command = "start"
trigger1 = ctrl
trigger2 = var(7)


;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Recovery Roll]
type = changestate
value = 5220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && stateno = 5050
triggerall = vel y > 0 && pos y >= -20 && alive
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Roll Forward]
type = changestate
value = 720
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && var(20) <= 270 && !var(26)
triggerall = ctrl
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA)
trigger1 = (p2bodydist x = [ -80, 80]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Dodge]
type = changestate
value = 710
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && var(20) <= 270 && !var(26)
triggerall = ctrl
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA) && (p2bodydist x = [ -60, 60]) && (enemynear, vel x) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = prevstateno = 710 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Dash Backward]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && var(20) <= 270 && !var(26)
triggerall = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype = A) && backedgedist >= 80 && (p2bodydist x = [80, 120]) && (enemynear, vel x)
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 150, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (p2bodydist x = [0, 80]) && backedgebodydist >= 80
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = !var(26) || p2bodydist x >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A && power >= 1000 && !var(20)
trigger1 = (p2bodydist x = [0, 50]) && (life < 0.5 * lifemax) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Power Charge]
type = changestate
value = 730
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !var(20)
triggerall = ctrl && power < const(data.power) && power < powermax
trigger1 = (enemynear, movetype != A) && !inguarddist && p2bodydist x >= 160 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Excel Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && power >= 1000 && !var(20)
triggerall = ctrl
trigger1 = (enemynear, movetype = A) && (p2bodydist x = [0, 40]) && (enemynear, vel y >= 0)
trigger1 = (enemynear, stateno = [200, 699]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Dash Forward]
type = changestate
value = 100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype != A) && p2bodydist x >= 160 && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Air Throw]
type = changestate
value = 850
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && ctrl
triggerall = p2statetype = A && p2movetype != H
trigger1 = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -75, -25]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -25, 0]) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 140]) && (p2bodydist x = [0, 30]) && (p2bodydist y = [ -25, 0]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 221
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 48)]
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 251
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 48)]
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 211
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 28)]
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 241
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = p2bodydist x = [0, ceil(const(size.xscale) * 38)]
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50])
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50])
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [ -40, 40]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, EX Sommersault Shell]
type = changestate
value = 1120
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && (var(20) <= 60)
triggerall = var(56) >= 45 || var(20) > 0
triggerall = numenemy >= 2 || var(14) < 2
triggerall = (p2bodydist x = [0, 72]) && (p2dist y = [ -90, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = (ctrl || stateno = 52) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, EX Moonsault Slash]
type = changestate
value = 1220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && power >= 500 && (var(20) <= 60)
triggerall = (var(3) != [1, 2]) && pos y <= -32
triggerall = numenemy >= 2 || var(14) < 2
triggerall = (p2bodydist x = [0, 90]) && p2dist y >= 0 && (p2statetype != L)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Sonic Boom]
type = changestate
value = 1020
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && (var(20) <= 60)
triggerall = var(55) >= 45 || var(20) > 0
triggerall = numenemy >= 2 || var(14) < 2
triggerall = ifelse(!var(20), !numhelper(1000), 1) && !numhelper(1020) && !numhelper(3000) && !numhelper(3600)
triggerall = (p2bodydist x >= 0) && (p2dist y = [ -75, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Sommersault Shell]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(56) >= 45 || var(20) > 0
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 72]) && (p2dist y = [ -90, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
trigger1 = (ctrl || stateno = 52) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Moonsault Slash]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -32
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 90]) && p2dist y >= -30 && (p2statetype != L)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Sonic Boom]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(55) >= 45 || var(20) > 0
triggerall = numenemy >= 2 || var(14) < 1
triggerall = ifelse(!var(20), !numhelper(1000), 1) && !numhelper(1020) && !numhelper(3000) && !numhelper(3600)
triggerall = p2bodydist x >= 0 && (p2dist y = [ -75, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Crossfire Blitz]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && (var(20) <= 60)
triggerall = var(56) >= 45 || var(20) > 0
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -60, 0]) && (p2statetype != L)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3000 && anim = 3003 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && animelemtime(21) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3301 && animelemtime(23) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 3701 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Sonic Break]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && (var(20) <= 60)
triggerall = var(55) >= 45 || var(20) > 0
triggerall = (p2bodydist x = [0, 100]) && (p2dist y = [ -75, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3100 && animelemtime(21) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3200 && animelemtime(21) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3301 && animelemtime(23) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 3701 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Sommersault Justice]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = var(56) >= 45
triggerall = (p2bodydist x = [0, 100]) && (p2dist y = [ -60, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = (ctrl || stateno = 52) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3000 && anim = 3003 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3200 && animelemtime(21) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3301 && animelemtime(23) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 3701 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Reversed Sommersault]
type = changestate
value = 3500
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && (var(20) <= 60)
triggerall = var(56) >= 45 || var(20) > 0
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -90, 0]) && (p2statetype != L)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3000 && anim = 3003 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && animelemtime(21) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3200 && animelemtime(21) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 3301 && animelemtime(23) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger6 = stateno = 3701 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Moonsault Strike]
type = changestate
value = 3700
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2]) && power >= 1000 && (var(20) <= 60)
triggerall = (p2bodydist x = [0, 60]) && (p2dist y >= -30) && (p2statetype != L)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3100 && animelemtime(21) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3500 && animelemtime(15) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Final Mission]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = var(1) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = var(55) >= 45
triggerall = (p2bodydist x = [0, 120]) && (p2dist y = [ -60, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = (ctrl || stateno = 52) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Sonic Blade]
type = changestate
value = 3600
triggerall = AIlevel && numenemy
triggerall = !var(1) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = var(55) >= 45
triggerall = (p2bodydist x = [0, 120]) && (p2dist y = [ -60, 0]) && (p2statetype != A) && (p2statetype != L)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Taunt]
type = changestate
value = ifelse(random < 500, 195, 196)
triggerall = AIlevel && numenemy
triggerall = statetype != A && life >= (lifemax / 2)
trigger1 = ctrl && numenemy
trigger1 = (enemynear, life) <= (enemynear, lifemax / 2)
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (100 * (AIlevel ** 2 / 64.0))
