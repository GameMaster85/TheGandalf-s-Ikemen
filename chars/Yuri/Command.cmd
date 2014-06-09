; _______________________________
;| Yuri by Phantom.of.the.Server |
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
name = "chouenbu"
command = x, x, F, a, z
time = 48
[Command]
name = "chouenbu"
command = x, x, F, a+z
time = 40
[Command]
name = "chouenbu"
command = x, x, F+a+z
time = 32

[Command]
name = "fbhcb2k"
command = ~F, B, F, D, B, a+b
time = 60
[Command]
name = "fbhcb2k"
command = ~F, B, F, D, B, a+c
time = 60
[Command]
name = "fbhcb2k"
command = ~F, B, F, D, B, b+c
time = 60

[Command]
name = "hcbfp"
command = ~F, DF, D, DB, B, F, x
time = 45
[Command]
name = "hcbfp"
command = ~F, DF, D, DB, B, F, y
time = 45
[Command]
name = "hcbfp"
command = ~F, DF, D, DB, B, F, z
time = 45
[Command]
name = "hcbfp"
command = ~F, DF, D, DB, B, F, ~x
time = 45
[Command]
name = "hcbfp"
command = ~F, DF, D, DB, B, F, ~y
time = 45
[Command]
name = "hcbfp"
command = ~F, DF, D, DB, B, F, ~z
time = 45

[Command]
name = "qcfhcbk"
command = ~D, DF, F, DF, D, B, a
time = 45
[Command]
name = "qcfhcbk"
command = ~D, DF, F, DF, D, B, b
time = 45
[Command]
name = "qcfhcbk"
command = ~D, DF, F, DF, D, B, c
time = 45
[Command]
name = "qcfhcbk"
command = ~D, DF, F, DF, D, B, ~a
time = 45
[Command]
name = "qcfhcbk"
command = ~D, DF, F, DF, D, B, ~b
time = 45
[Command]
name = "qcfhcbk"
command = ~D, DF, F, DF, D, B, ~c
time = 45

[Command]
name = "fhcfp"
command = ~F, B, DB, D, DF, F, x
time = 45
[Command]
name = "fhcfp"
command = ~F, B, DB, D, DF, F, y
time = 45
[Command]
name = "fhcfp"
command = ~F, B, DB, D, DF, F, z
time = 45
[Command]
name = "fhcfp"
command = ~F, B, DB, D, DF, F, ~x
time = 45
[Command]
name = "fhcfp"
command = ~F, B, DB, D, DF, F, ~y
time = 45
[Command]
name = "fhcfp"
command = ~F, B, DB, D, DF, F, ~z
time = 45

[Command]
name = "2df2p"
command = ~D, DF, F, D, DF, x+y
time = 30
[Command]
name = "2df2p"
command = ~D, DF, F, D, DF, x+z
time = 30
[Command]
name = "2df2p"
command = ~D, DF, F, D, DF, y+z
time = 30

[Command]
name = "2dfp"
command = ~D, DF, F, D, DF, x
time = 30
[Command]
name = "2dfp"
command = ~D, DF, F, D, DF, y
time = 30
[Command]
name = "2dfp"
command = ~D, DF, F, D, DF, z
time = 30
[Command]
name = "2dfp"
command = ~D, DF, F, D, DF, ~x
time = 30
[Command]
name = "2dfp"
command = ~D, DF, F, D, DF, ~y
time = 30
[Command]
name = "2dfp"
command = ~D, DF, F, D, DF, ~z
time = 30


;====================< SPECIAL MOTIONS >====================

[Command]
name = "hcba"
command = ~F, DF, D, DB, B, a
time = 30
[Command]
name = "hcbb"
command = ~F, DF, D, DB, B, b
time = 30
[Command]
name = "hcbc"
command = ~F, DF, D, DB, B, c
time = 30
[Command]
name = "hcba"
command = ~F, DF, D, DB, B, ~a
time = 30
[Command]
name = "hcbb"
command = ~F, DF, D, DB, B, ~b
time = 30
[Command]
name = "hcbc"
command = ~F, DF, D, DB, B, ~c
time = 30

[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, a+b
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, a+c
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, b+c
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
name = "dfx"
command = ~F, D, DF, x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, z
time = 20
[Command]
name = "dfx"
command = ~F, D, DF, ~x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, ~y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, ~z
time = 20

[Command]
name = "dfa"
command = ~F, D, DF, a
time = 20
[Command]
name = "dfb"
command = ~F, D, DF, b
time = 20
[Command]
name = "dfc"
command = ~F, D, DF, c
time = 20
[Command]
name = "dfa"
command = ~F, D, DF, ~a
time = 20
[Command]
name = "dfb"
command = ~F, D, DF, ~b
time = 20
[Command]
name = "dfc"
command = ~F, D, DF, ~c
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
name = "qcfx"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, z
time = 15
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "qcfz"
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
name = "qcfa"
command = ~D, DF, F, a
time = 15
[Command]
name = "qcfb"
command = ~D, DF, F, b
time = 15
[Command]
name = "qcfc"
command = ~D, DF, F, c
time = 15
[Command]
name = "qcfa"
command = ~D, DF, F, ~a
time = 15
[Command]
name = "qcfb"
command = ~D, DF, F, ~b
time = 15
[Command]
name = "qcfc"
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
name = "qcbx"
command = ~D, DB, B, x
time = 15
[Command]
name = "qcby"
command = ~D, DB, B, y
time = 15
[Command]
name = "qcbz"
command = ~D, DB, B, z
time = 15
[Command]
name = "qcbx"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "qcby"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "qcbz"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "bdx"
command = ~B, DB, D, x
time = 20
[Command]
name = "bdy"
command = ~B, DB, D, y
time = 20
[Command]
name = "bdz"
command = ~B, DB, D, z
time = 20

[Command]
name = "bda"
command = ~B, DB, D, a
time = 20
[Command]
name = "bdb"
command = ~B, DB, D, b
time = 20
[Command]
name = "bdc"
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
trigger3 = ((stateno = [700, 702]) || (stateno = [710, 725]) || (stateno = [900, 905])) && !animtime
trigger4 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, Roll Forward]
type = changestate
value = 720
triggerall = !AIlevel
triggerall = command = "a+x"
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100, 101])) && command = "holdfwd"
trigger2 = var(20) && var(6)

[State -1, Roll Backward]
type = changestate
value = 725
triggerall = !AIlevel
triggerall = command = "a+x"
triggerall = roundstate = 2 && statetype != A && command = "holdback"
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Dodge]
type = changestate
value = 710
triggerall = !AIlevel
triggerall = command = "a+x"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Shin Hien HououKyaku]
type = changestate
value = 3220
triggerall = !AIlevel
triggerall = command = "fbhcb2k"
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = stateno != 3220 && var(8)

[State -1, Yuri Chou Enbu]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = command = "chouenbu"
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52 || (stateno = [200, 251])
trigger2 = stateno != 3300 && var(8)

[State -1, Hien HououKyaku]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "qcfhcbk"
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = stateno != 3200 && var(8)

[State -1, Haou Shoukou Ken]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "fhcfp"
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3000)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = stateno != 3000 && var(8)

[State -1, Hien Rekkou]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "2dfp"
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = stateno != 3100 && var(8)

[State -1, EX Hyaku Retsu Binta]
type = changestate
value = 1620
triggerall = !AIlevel
triggerall = command = "hcb2k"
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, EX Double Chou Upper]
type = changestate
value = 1130
trigger1 = !AIlevel
trigger1 = command = "df2p"
trigger1 = stateno = 1105 && ((prevstateno = 1100 && var(10) = 2) || prevstateno = 1120)
trigger1 = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60

[State -1, EX Chou Upper]
type = changestate
value = 1120
triggerall = !AIlevel
triggerall = command = "df2p"
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, EX Saifa]
type = changestate
value = 1320
triggerall = !AIlevel
triggerall = command = "qcb2p"
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !numhelper(1320)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, EX Arata Raiou Ken]
type = changestate
value = 1220
triggerall = !AIlevel
triggerall = command = "qcf2k"
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, EX Ko'ou Ken]
type = changestate
value = 1020
triggerall = !AIlevel
triggerall = command = "qcf2p"
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !numhelper(1020) && !numhelper(3000)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, Hyaku Retsu Binta]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = command = "hcbc" || command = "hcbb" || command = "hcba"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, Triple Chou Upper]
type = changestate
value = 1140
trigger1 = !AIlevel
trigger1 = command = "dfz"
trigger1 = stateno = 1112 && prevstateno = 1130
trigger1 = roundstate = 2 && statetype != A

[State -1, Double Chou Upper]
type = changestate
value = 1110
trigger1 = !AIlevel
trigger1 = command = "dfz"
trigger1 = stateno = 1105 && ((prevstateno = 1100 && var(10) = 2) || prevstateno = 1120)
trigger1 = roundstate = 2 && statetype != A

[State -1, Chou Upper]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "dfx" || command = "dfy" || command = "dfz"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, Saifa]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "qcbx" || command = "qcby" || command = "qcbz"
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1300), 1)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, Raiou Ken]
type = changestate
value = 1250
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = ifelse(!var(20), !numhelper(1000) && !numhelper(1250), 1) && !numhelper(1020) && !numhelper(1270) && !numhelper(3000)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, Ko'ou Ken]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1000) && !numhelper(1250), 1) && !numhelper(1020) && !numhelper(1270) && !numhelper(3000)
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, Arata Raiou Ken]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = command = "qcfa" || command = "qcfb" || command = "qcfc"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101]) || stateno = 52
trigger2 = var(7)

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "bdx" || command = "bdy" || command = "bdz" || command = "bda" || command = "bdb" || command = "bdc"
trigger1 = roundstate = 2 && statetype != A && power >= 1000 && !var(20)

[State -1, Excel Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
trigger1 = !AIlevel
trigger1 = command = "c+z"
trigger1 = roundstate = 2 && power >= 1000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Power Charge]
type = changestate
value = 730
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = roundstate = 2 && statetype != A && !var(20)
trigger1 = (ctrl || (stateno = [100, 101])) && power < const(data.power) && power < powermax

[State -1, Run]
type = changestate
value = 100
trigger1 = !AIlevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl && (stateno != [100, 106])

[State -1, Dash]
type = changestate
value = 105
trigger1 = !AIlevel
trigger1 = command = "BB"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl && (stateno != [100, 106])

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

[State -1, Enbu Kyaku]
type = changestate
value = 311
triggerall = !AIlevel
triggerall = statetype != A && command = "b"
trigger1 = (stateno = [200, 201]) && animelemtime(4) < 0 && (movecontact || movereversed)

[State -1, Enbu Kyaku]
type = changestate
value = 312
triggerall = !AIlevel
triggerall = statetype != A && command = "y"
trigger1 = stateno = 311 && animelemtime(6) < 0 && (movecontact || movereversed)

[State -1, Enbu Kyaku]
type = changestate
value = 313
triggerall = !AIlevel
triggerall = statetype != A && command = "c"
trigger1 = stateno = 312 && animelemtime(5) < 0 && (movecontact || movereversed)

[State -1, SHP]
type = changestate
value = 221
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "z" && abs(p2bodydist x) <= 30
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SHP]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "z"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SHK]
type = changestate
value = 251
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "c" && abs(p2bodydist x) <= 30
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SHK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "c"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SMP]
type = changestate
value = 211
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "y" && abs(p2bodydist x) <= 20
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SMP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "y"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, En Yoku]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "holdfwd" && command = "b"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SMK]
type = changestate
value = 241
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "b" && abs(p2bodydist x) <= 20
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SMK]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "b"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, SLP]
type = changestate
value = 201
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "x" && abs(p2bodydist x) <= 10
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "x"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, SLK]
type = changestate
value = 231
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "a" && abs(p2bodydist x) <= 10
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = statetype != A && command != "holddown" && command = "a"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, CHP]
type = changestate
value = 420
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "z"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CHK]
type = changestate
value = 450
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "c"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CMP]
type = changestate
value = 410
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "y"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CMK]
type = changestate
value = 440
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "b"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "x"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(6)

[State -1, CLK]
type = changestate
value = 430
triggerall = !AIlevel
triggerall = statetype != A && command = "holddown" && command = "a"
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5
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

[State -1, Yuri Ori]
type = changestate
value = 645
triggerall = !AIlevel
triggerall = statetype = A
triggerall = command = "holdback" && command = "b"
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
value = 195
triggerall = !AIlevel
triggerall = statetype != A && command = "start"
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

[State -1, Roll Forward]
type = changestate
value = 720
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && var(20) <= 150 && !var(26)
triggerall = (ctrl || (stateno = [100, 101]))
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA)
trigger1 = (p2bodydist x = [ -80, 80]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Roll Backward]
type = changestate
value = 725
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && var(20) <= 150 && !var(26)
triggerall = (ctrl || (stateno = [100, 101]))
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA)
trigger1 = backedgedist >= 80 && (p2bodydist x = [ -80, 80]) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Dodge]
type = changestate
value = 710
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && var(20) <= 150 && !var(26)
triggerall = (ctrl || (stateno = [100, 101]))
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA) && (p2bodydist x = [ -60, 60]) && (enemynear, vel x) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = prevstateno = 710 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && var(20) <= 150 && !var(26)
triggerall = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype = A) && backedgedist >= 80 && (p2bodydist x = [80, 120]) && (enemynear, vel x)
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 150, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (p2bodydist x = [0, 80]) && backedgebodydist >= 80
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

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
trigger1 = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = (p2bodydist x = [ -50, 50]) && (life < 0.5 * lifemax) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Power Charge]
type = changestate
value = 730
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !var(20)
triggerall = (ctrl || (stateno = [100, 101])) && power < const(data.power) && power < powermax
trigger1 = (enemynear, movetype != A) && !inguarddist && p2bodydist x >= 160 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Excel Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && power >= 1000 && !var(20)
triggerall = ctrl || (stateno = [100, 101])
trigger1 = (enemynear, movetype = A) && (p2bodydist x = [0, 40]) && (enemynear, vel y >= 0)
trigger1 = (enemynear, stateno = [200, 699]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Run]
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
trigger1 = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -75, -25]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 140]) && (p2bodydist x = [0, 30]) && (p2bodydist y = [ -75, -25]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -25, 0]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 140]) && (p2bodydist x = [0, 30]) && (p2bodydist y = [ -25, 0]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Enbu Kyaku]
type = changestate
value = 311
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = (stateno = [200, 201]) && animelemtime(4) < 0 && movehit
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Enbu Kyaku]
type = changestate
value = 312
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 311 && animelemtime(6) < 0 && movehit = 1

[State -1, Enbu Kyaku]
type = changestate
value = 313
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 312 && animelemtime(5) < 0 && movehit = 1

[State -1, SHP]
type = changestate
value = 221
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x <= 30
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x > 30
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 251
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x <= 30
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x > 30
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, En Yoku]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && p2statetype = C && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 211
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x <= 20
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x > 20
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 241
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x <= 20
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x > 20
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 201
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x <= 10
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x > 10
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 231
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x <= 10
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist x > 10
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50]) && (p2statetype != C) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != L)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [0, 50]) && (p2statetype != L)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != L)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [0, 50]) && (p2statetype != L)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50])
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [0, 50])
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 201 || stateno = 231 || stateno = 400 || stateno = 430) && time >= 5 && random < (25 * (AIlevel ** 2 / 64.0))
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

[State -1, Yuri Ori]
type = changestate
value = 645
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2dist x = [ -60, 0]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

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
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
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
triggerall = (p2bodydist x = [ -30, 30]) && (p2dist y = [ -50, 50]) && (p2statetype != L)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, EX Double Chou Upper]
type = changestate
value = 1130
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = stateno = 1105 && ((prevstateno = 1100 && var(10) = 2) || prevstateno = 1120) && movehit
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -80, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1, EX Chou Upper]
type = changestate
value = 1120
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = numenemy >= 2 || var(14) < 2
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -80, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Arata Raiou Ken]
type = changestate
value = 1220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [50, 150]) && (p2dist y = [ -40, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52)
trigger1 = random < (ifelse(p2statetype = C, 50, 25) * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Hyaku Retsu Binta]
type = changestate
value = 1620
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 80]) && (p2dist y = [ -60, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Saifa]
type = changestate
value = 1320
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = numenemy >= 2 || var(14) < 1
triggerall = !numhelper(1320)
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -100, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Ko'ou Ken]
type = changestate
value = 1020
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = numenemy >= 2 || var(14) < 2
triggerall = !numhelper(1020) && !numhelper(3000)
triggerall = (p2bodydist x = [0, 100]) && (p2dist y = [ -75, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Triple Chou Upper]
type = changestate
value = 1140
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = stateno = 1112 && prevstateno = 1130 && movehit
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -80, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Double Chou Upper]
type = changestate
value = 1110
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = stateno = 1105 && ((prevstateno = 1100 && var(10) = 2) || prevstateno = 1120) && movehit
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -80, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Chou Upper]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -80, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Arata Raiou Ken]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [50, 100]) && (p2dist y = [ -40, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52)
trigger1 = random < (ifelse(p2statetype = C, 50, 25) * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Hyaku Retsu Binta]
type = changestate
value = 1600
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 80]) && (p2dist y = [ -60, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Raiou Ken]
type = changestate
value = 1250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = numenemy >= 2 || var(14) < 2
triggerall = ifelse(!var(20), !numhelper(1000) && !numhelper(1250), 1) && !numhelper(1020) && !numhelper(1270) && !numhelper(3000)
triggerall = (p2bodydist x = [0, 160]) && p2dist y >= 0
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (20 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Ko'ou Ken]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 2
triggerall = ifelse(!var(20), !numhelper(1000) && !numhelper(1250), 1) && !numhelper(1020) && !numhelper(1270) && !numhelper(3000)
triggerall = (p2bodydist x = [0, 100]) && (p2dist y = [ -75, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (20 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Saifa]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = numenemy >= 2 || var(14) < 2
triggerall = ifelse(!var(20), !numhelper(1300), 1)
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -100, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Hien Rekkou]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = numenemy >= 2 || var(14) < 2
triggerall = (p2bodydist x = [0, 100]) && (p2dist y = [ -75, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 3000 && stateno != 3100 && stateno != 3210 && var(8) && (movecontact || var(18)) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Hien HououKyaku]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = (p2bodydist x = [0, 140]) && (p2dist y = [ -60, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 3100 && stateno != 3210 && var(8) && (movecontact || var(18)) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && var(8) && animelemtime(24) >= 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Haou Shoukou Ken]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3000) && !numhelper(3020)
triggerall = (p2bodydist x = [0, 160]) && (p2dist y = [ -80, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 3000 && stateno != 3100 && stateno != 3210 && var(8) && (movecontact || var(18)) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && var(8) && animelemtime(24) >= 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Yuri Chou Enbu]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = (p2bodydist x = [0, 120]) && (p2dist y = [ -40, 0]) && (p2statetype != L) && (enemynear, vel y >= 0) && (p2movetype != H)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, Shin Hien HououKyaku]
type = changestate
value = 3220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = (p2bodydist x = [0, 160]) && (p2dist y = [ -45, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 3100 && stateno != 3210 && stateno != 3230 && var(8) && (movecontact || var(18)) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && var(8) && animelemtime(24) >= 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Taunt]
type = changestate
value = 195
triggerall = AIlevel && numenemy
triggerall = statetype != A && life >= 500
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = life >= (enemynear, life) && p2bodydist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, vel y >= 0) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movecontact || var(18))
trigger2 = life >= 2 * (enemynear, life) && random < (200 * (AIlevel ** 2 / 64.0))
