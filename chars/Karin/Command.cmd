; ________________________________
;| Karin by Phantom.of.the.Server |
; ��������������������������������
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
name = "qcbhcfp"
command = ~D, DB, B, DB, D, DF, x
time = 30
[Command]
name = "qcbhcfp"
command = ~D, DB, B, DB, D, DF, y
time = 30
[Command]
name = "qcbhcfp"
command = ~D, DB, B, DB, D, DF, z
time = 30
[Command]
name = "qcbhcfp"
command = ~D, DB, B, DB, D, DF, ~x
time = 30
[Command]
name = "qcbhcfp"
command = ~D, DB, B, DB, D, DF, ~y
time = 30
[Command]
name = "qcbhcfp"
command = ~D, DB, B, DB, D, DF, ~z
time = 30

[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~z
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

[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, z
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~z
time = 30

[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, c
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~a
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~b
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~c
time = 30


;====================< SPECIAL MOTIONS >====================

[Command]
name = "360k"
command = ~$B, $D, $F, $U, a
time = 30
[Command]
name = "360k"
command = ~$D, $F, $U, $B, a
time = 30
[Command]
name = "360k"
command = ~$F, $U, $B, $D, a
time = 30
[Command]
name = "360k"
command = ~$U, $B, $D, $F, a
time = 30
[Command]
name = "360k"
command = ~$F, $D, $B, $U, a
time = 30
[Command]
name = "360k"
command = ~$D, $B, $U, $F, a
time = 30
[Command]
name = "360k"
command = ~$B, $U, $F, $D, a
time = 30
[Command]
name = "360k"
command = ~$U, $F, $D, $B, a
time = 30

[Command]
name = "360k"
command = ~$B, $D, $F, $U, b
time = 30
[Command]
name = "360k"
command = ~$D, $F, $U, $B, b
time = 30
[Command]
name = "360k"
command = ~$F, $U, $B, $D, b
time = 30
[Command]
name = "360k"
command = ~$U, $B, $D, $F, b
time = 30
[Command]
name = "360k"
command = ~$F, $D, $B, $U, b
time = 30
[Command]
name = "360k"
command = ~$D, $B, $U, $F, b
time = 30
[Command]
name = "360k"
command = ~$B, $U, $F, $D, b
time = 30
[Command]
name = "360k"
command = ~$U, $F, $D, $B, b
time = 30

[Command]
name = "360k"
command = ~$B, $D, $F, $U, c
time = 30
[Command]
name = "360k"
command = ~$D, $F, $U, $B, c
time = 30
[Command]
name = "360k"
command = ~$F, $U, $B, $D, c
time = 30
[Command]
name = "360k"
command = ~$U, $B, $D, $F, c
time = 30
[Command]
name = "360k"
command = ~$F, $D, $B, $U, c
time = 30
[Command]
name = "360k"
command = ~$D, $B, $U, $F, c
time = 30
[Command]
name = "360k"
command = ~$B, $U, $F, $D, c
time = 30
[Command]
name = "360k"
command = ~$U, $F, $D, $B, c
time = 30

[Command]
name = "360k"
command = ~$B, $D, $F, $U, ~a
time = 30
[Command]
name = "360k"
command = ~$D, $F, $U, $B, ~a
time = 30
[Command]
name = "360k"
command = ~$F, $U, $B, $D, ~a
time = 30
[Command]
name = "360k"
command = ~$U, $B, $D, $F, ~a
time = 30
[Command]
name = "360k"
command = ~$F, $D, $B, $U, ~a
time = 30
[Command]
name = "360k"
command = ~$D, $B, $U, $F, ~a
time = 30
[Command]
name = "360k"
command = ~$B, $U, $F, $D, ~a
time = 30
[Command]
name = "360k"
command = ~$U, $F, $D, $B, ~a
time = 30

[Command]
name = "360k"
command = ~$B, $D, $F, $U, ~b
time = 30
[Command]
name = "360k"
command = ~$D, $F, $U, $B, ~b
time = 30
[Command]
name = "360k"
command = ~$F, $U, $B, $D, ~b
time = 30
[Command]
name = "360k"
command = ~$U, $B, $D, $F, ~b
time = 30
[Command]
name = "360k"
command = ~$F, $D, $B, $U, ~b
time = 30
[Command]
name = "360k"
command = ~$D, $B, $U, $F, ~b
time = 30
[Command]
name = "360k"
command = ~$B, $U, $F, $D, ~b
time = 30
[Command]
name = "360k"
command = ~$U, $F, $D, $B, ~b
time = 30

[Command]
name = "360k"
command = ~$B, $D, $F, $U, ~c
time = 30
[Command]
name = "360k"
command = ~$D, $F, $U, $B, ~c
time = 30
[Command]
name = "360k"
command = ~$F, $U, $B, $D, ~c
time = 30
[Command]
name = "360k"
command = ~$U, $B, $D, $F, ~c
time = 30
[Command]
name = "360k"
command = ~$F, $D, $B, $U, ~c
time = 30
[Command]
name = "360k"
command = ~$D, $B, $U, $F, ~c
time = 30
[Command]
name = "360k"
command = ~$B, $U, $F, $D, ~c
time = 30
[Command]
name = "360k"
command = ~$U, $F, $D, $B, ~c
time = 30

[Command]
name = "hcfp"
command = ~B, DB, D, DF, F, x
time = 30
[Command]
name = "hcfp"
command = ~B, DB, D, DF, F, y
time = 30
[Command]
name = "hcfp"
command = ~B, DB, D, DF, F, z
time = 30
[Command]
name = "hcfp"
command = ~B, DB, D, DF, F, ~x
time = 30
[Command]
name = "hcfp"
command = ~B, DB, D, DF, F, ~y
time = 30
[Command]
name = "hcfp"
command = ~B, DB, D, DF, F, ~z
time = 30

[Command]
name = "df2p"
command = ~F, D, DF, x+y
time = 20
[Command]
name = "df2p"
command = ~F, D, DF, x+z
time = 20
[Command]
name = "df2p"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "dfp"
command = ~F, D, DF, x
time = 20
[Command]
name = "dfp"
command = ~F, D, DF, y
time = 20
[Command]
name = "dfp"
command = ~F, D, DF, z
time = 20
[Command]
name = "dfp"
command = ~F, D, DF, ~x
time = 20
[Command]
name = "dfp"
command = ~F, D, DF, ~y
time = 20
[Command]
name = "dfp"
command = ~F, D, DF, ~z
time = 20

[Command]
name = "df2k"
command = ~F, D, DF, a+b
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, a+c
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, b+c
time = 20

[Command]
name = "dfk"
command = ~F, D, DF, a
time = 20
[Command]
name = "dfk"
command = ~F, D, DF, b
time = 20
[Command]
name = "dfk"
command = ~F, D, DF, c
time = 20
[Command]
name = "dfk"
command = ~F, D, DF, ~a
time = 20
[Command]
name = "dfk"
command = ~F, D, DF, ~b
time = 20
[Command]
name = "dfk"
command = ~F, D, DF, ~c
time = 20

[Command]
name = "dbp"
command = ~B, D, DB, x
time = 20
[Command]
name = "dbp"
command = ~B, D, DB, y
time = 20
[Command]
name = "dbp"
command = ~B, D, DB, z
time = 20
[Command]
name = "dbp"
command = ~B, D, DB, ~x
time = 20
[Command]
name = "dbp"
command = ~B, D, DB, ~y
time = 20
[Command]
name = "dbp"
command = ~B, D, DB, ~z
time = 20

[Command]
name = "qcfuf2k"
command = ~D, F, UF, a+b
time = 20
[Command]
name = "qcfuf2k"
command = ~D, F, UF, a+c
time = 20
[Command]
name = "qcfuf2k"
command = ~D, F, UF, b+c
time = 20

[Command]
name = "qcfufk"
command = ~D, F, UF, a
time = 20
[Command]
name = "qcfufk"
command = ~D, F, UF, b
time = 20
[Command]
name = "qcfufk"
command = ~D, F, UF, c
time = 20
[Command]
name = "qcfufk"
command = ~D, F, UF, ~a
time = 20
[Command]
name = "qcfufk"
command = ~D, F, UF, ~b
time = 20
[Command]
name = "qcfufk"
command = ~D, F, UF, ~c
time = 20

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, x+z
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "qcfp"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, z
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "qcf2k"
command = ~D, DF, F, a+b
time = 15
[Command]
name = "qcf2k"
command = ~D, DF, F, a+c
time = 15
[Command]
name = "qcf2k"
command = ~D, DF, F, b+c
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
name = "qcb2p"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, x+z
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z
time = 15

[Command]
name = "qcbp"
command = ~D, DB, B, x
time = 15
[Command]
name = "qcbp"
command = ~D, DB, B, y
time = 15
[Command]
name = "qcbp"
command = ~D, DB, B, z
time = 15
[Command]
name = "qcbp"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "qcbp"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "qcbp"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "qcbk"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcbk"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcbk"
command = ~D, DB, B, c
time = 15
[Command]
name = "qcbk"
command = ~D, DB, B, ~a
time = 15
[Command]
name = "qcbk"
command = ~D, DB, B, ~b
time = 15
[Command]
name = "qcbk"
command = ~D, DB, B, ~c
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
name = "recovery"
command = a+x
time = 1

[Command]
name = "2p"
command = x+y
time = 1
[Command]
name = "2p"
command = x+z
time = 1
[Command]
name = "2p"
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
trigger3 = ((stateno = [760, 762]) || stateno = 710 || (stateno = [900, 905])) && !animtime
trigger4 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, Roll Forward]
type = changestate
value = 710
triggerall = !AIlevel
triggerall = command = "a+x"
trigger1 = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = var(20) && var(6)

[State -1, Killer Satellite -Bound Punch]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "2qcbp"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = (stateno != [3200, 3202]) && var(8) && var(15) <= 0

[State -1, dive kick]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = command = "2qcfk"
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = power >= 2000 && !var(20)
trigger1 = ctrl
trigger2 = stateno != 3311 && var(8) && var(15) <= 1

[State -1, Shinpi Kaibyaku]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "2qcfp"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = stateno != 3000 && var(8) && var(15) <= 2

[State -1, Kou'ou Ken]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "2qcfk"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = stateno != 3100 && var(8) && var(15) <= 2

[State -1, EX Hou Shou]
type = changestate
value = 1120
triggerall = !AIlevel
triggerall = command = "df2p"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, EX Mujin Kyaku]
type = changestate
value = 1220
triggerall = !AIlevel
triggerall = command = "df2k"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, EX Ressen Ha]
type = changestate
value = 1420
triggerall = !AIlevel
triggerall = command = "qcf2k"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, EX Yasha Gaeshi]
type = changestate
value = 1520
triggerall = !AIlevel
triggerall = command = "qcb2p"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Arakuma Inashi]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = command = "360k"
triggerall = (command = "holdfwd" +command = "holdup") <= 1
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Hou Shou]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "dfp"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Mujin Kyaku]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = command = "dfk"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Ressen Chou]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "dbp"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Ressen Ha]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = command = "qcfk"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Guren Ken]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "qcfp"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Yasha Gaeshi (Joudan)]
type = changestate
value = 1500
triggerall = !AIlevel
triggerall = command = "qcbp"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Yasha Gaeshi (Gedan)]
type = changestate
value = 1505
triggerall = !AIlevel
triggerall = command = "qcbk"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Recovery Roll]
type = changestate
value = 5220
trigger1 = !AIlevel
trigger1 = command = "2k"
trigger1 = roundstate = 2 && alive
trigger1 = !ctrl
trigger1 = (stateno = 5040 || stateno = 5050) && vel y >= -1

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "bdp" || command = "bdk"
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && !var(20)

[State -1, Excel Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
trigger1 = !AIlevel
trigger1 = command = "c+z"
trigger1 = roundstate = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Power Charge]
type = changestate
value = 730
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Run]
type = changestate
value = 100
trigger1 = !AIlevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Dash Backward]
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
trigger1 = roundstate = 2 && statetype = A
trigger1 = ctrl && (pos y <= -42 || vel y < 0)

[State -1, Throw]
type = changestate
value = 800
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, SHP]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = command != "holddown" && command = "z"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SHK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = command != "holddown" && command = "c"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Tsumuji -gari]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = command != "holddown" && command = "b" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SMP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command != "holddown" && command = "y"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SMK]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command != "holddown" && command = "b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = command != "holddown" && command = "x"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = command != "holddown" && command = "a"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, CHP]
type = changestate
value = 420
triggerall = !AIlevel
triggerall = command = "holddown" && command = "z"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CHK]
type = changestate
value = 450
triggerall = !AIlevel
triggerall = command = "holddown" && command = "c"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CMP]
type = changestate
value = 410
triggerall = !AIlevel
triggerall = command = "holddown" && command = "y"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CMK]
type = changestate
value = 440
triggerall = !AIlevel
triggerall = command = "holddown" && command = "b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = command = "holddown" && command = "x"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, CLK]
type = changestate
value = 430
triggerall = !AIlevel
triggerall = command = "holddown" && command = "a"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, AHP]
type = changestate
value = 620
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(6)

[State -1, AHK]
type = changestate
value = 650
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(6)

[State -1, AMK2]
type = changestate
value = 645
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 610 && movetype = A && movehit

[State -1, AMP]
type = changestate
value = 610
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(6)

[State -1, AMK]
type = changestate
value = 640
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(6)

[State -1, ALP]
type = changestate
value = 600
triggerall = !AIlevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(6)

[State -1, ALK]
type = changestate
value = 630
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(6)

[State -1, Taunt]
type = changestate
value = 196 - (command = "holdfwd")
triggerall = !AIlevel
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
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
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = !ctrl
trigger1 = (stateno = 5040 || stateno = 5050) && vel y >= -1 && pos y >= -20
trigger1 = p2bodydist x < 80 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, Roll Forward]
type = changestate
value = 710
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 150 && !var(26)
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA) && (p2bodydist x = [ -80, 80])

[State -1, EX Yasha Gaeshi]
type = changestate
value = 1520
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [0, 60]) && p2statetype != L
triggerall = (enemynear, facing) != facing
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = p2movetype = A && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Yasha Gaeshi (Joudan)]
type = changestate
value = 1500
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -75, 0]) && p2statetype != L
triggerall = (enemynear, facing) != facing
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = p2movetype = A && p2statetype != C && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Yasha Gaeshi (Gedan)]
type = changestate
value = 1505
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 60]) && p2statetype != L
triggerall = (enemynear, facing) != facing
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = p2movetype = A && p2statetype = C && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Dash Backward]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && var(20) <= 150 && !var(26)
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
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && var(20) <= 60
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger1 = (p2bodydist x = [0, 50]) && (life < 0.5 * lifemax)

[State -1, Power Charge]
type = changestate
value = 730
triggerall = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && !var(20)
trigger1 = ctrl && power < const(data.power) && power < powermax && !var(20)
trigger1 = !inguarddist && p2bodydist x >= 160 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Excel Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (enemynear, movetype = A) && (p2bodydist x = [0, 40]) && (enemynear, vel y >= 0)
trigger1 = (enemynear, stateno = [200, 699]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype != A) && p2bodydist x >= 160 && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Arakuma Inashi]
type = changestate
value = 1600
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 20]) && p2dist y = 0 && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Air Throw]
type = changestate
value = 850
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = A
trigger1 = !var(27) && (var(14) < 1 || var(20))
trigger1 = ctrl && p2statetype = A
trigger1 = (p2bodydist x = [0, 20]) && (p2dist y = [ -80, -40]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = (p2bodydist x = [0, 27]) && p2dist y = 0 
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (p2stateno = [120, 140]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 0]) && p2statetype != C && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Tsumuji -gari]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 0]) && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (ifelse(p2statetype = C, 50, 25) * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 0]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 0]) && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 0]) && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 0]) && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 0]) && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 0])
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [ -50, 30]) && (p2dist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [ -30, 40]) && (p2dist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Hou Shou]
type = changestate
value = 1120
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = frontedgebodydist >= 120
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [0, 75]) && (p2dist y = [ -50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Mujin Kyaku]
type = changestate
value = 1220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [0, 75]) && (p2dist y = [ -50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Ressen Ha]
type = changestate
value = 1420
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [0, 140]) && p2dist y = 0 && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (12 * (AIlevel ** 2 / 64.0))

[State -1, Guren Ken]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 140]) && p2dist y = 0 && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Hou Shou]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 75]) && (p2dist y = [ -50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Mujin Kyaku]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 75]) && (p2dist y = [ -50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Ressen Chou]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 140]) && p2dist y = 0 && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Ressen Ha]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(27) && (var(14) < 1 || var(20))
triggerall = (p2bodydist x = [0, 140]) && p2dist y = 0 && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Killer Satellite -Bound Punch]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
triggerall = !var(27) && (var(14) < 1 || var(36))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (p2bodydist x = [0, 100]) && (p2statetype != A) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(8)
trigger2 = (p2bodydist x = [0, 60]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, dive kick]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = power >= 2000 && !var(20)
triggerall = !var(27) && (var(14) < 1 || var(36))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = C)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (p2bodydist x = [0, 90]) && !(enemynear, pos y) && p2statetype != A && p2statetype != L
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && animelemtime(14) >= 0 && var(8) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Shinpi Kaibyaku]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = !var(27) && (var(14) < 1 || var(36))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (p2bodydist x = [0, 110]) && (p2statetype != A) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3311 && animelemtime(8) >= 0 && animelemtime(14) < 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Kou'ou Ken]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = !var(27) && (var(14) < 4 || var(36))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 0]) && (enemynear, vel y <= 1) && p2statetype != L
triggerall = p2dist y <= -25 || (enemynear, const(size.head.pos.y) <= -90)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse((prevstateno = [1200, 1299]), 500, 200) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3000 && animelemtime(30) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3311 && animelemtime(17) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Taunt]
type = changestate
value = ifelse(random < (333 * (AIlevel ** 2 / 64.0)), 195, 196)
triggerall = AIlevel && numenemy
triggerall = statetype != A && life >= (lifemax / 2)
trigger1 = ctrl && numenemy
trigger1 = (enemynear, life) <= (enemynear, lifemax / 2)
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (100 * (AIlevel ** 2 / 64.0))
