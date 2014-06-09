; _______________________________
;| Vega by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;===================< BUTTON REMAPPING >===================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================< DEFAULT VALUES >===================

[Defaults]
command.time = 15
command.buffer.time = 1


;===================< SINGLE BUTTON >===================

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


;===================< HOLD DIR >===================

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


;===================< HOLD BUTTON >===================

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


;===================< DIR >===================

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


;===================< SUPER MOTIONS >===================

[Command]
name = "cbfbf2p"
command = ~45$B, $F, $B, F, x+y
time = 30
[Command]
name = "cbfbf2p"
command = ~45$B, $F, $B, F, x+z
time = 30
[Command]
name = "cbfbf2p"
command = ~45$B, $F, $B, F, y+z
time = 30

[Command]
name = "bfbf2p"
command = ~$B, $F, $B, F, x+y
time = 30
[Command]
name = "bfbf2p"
command = ~$B, $F, $B, F, x+z
time = 30
[Command]
name = "bfbf2p"
command = ~$B, $F, $B, F, y+z
time = 30

[Command]
name = "cbfbfp"
command = ~45$B, $F, $B, F, x
time = 30
[Command]
name = "cbfbfp"
command = ~45$B, $F, $B, F, y
time = 30
[Command]
name = "cbfbfp"
command = ~45$B, $F, $B, F, z
time = 30
[Command]
name = "cbfbfp"
command = ~45$B, $F, $B, F, ~x
time = 30
[Command]
name = "cbfbfp"
command = ~45$B, $F, $B, F, ~y
time = 30
[Command]
name = "cbfbfp"
command = ~45$B, $F, $B, F, ~z
time = 30

[Command]
name = "bfbfp"
command = ~$B, $F, $B, F, x
time = 30
[Command]
name = "bfbfp"
command = ~$B, $F, $B, F, y
time = 30
[Command]
name = "bfbfp"
command = ~$B, $F, $B, F, z
time = 30
[Command]
name = "bfbfp"
command = ~$B, $F, $B, F, ~x
time = 30
[Command]
name = "bfbfp"
command = ~$B, $F, $B, F, ~y
time = 30
[Command]
name = "bfbfp"
command = ~$B, $F, $B, F, ~z
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


;===================< SPECIAL MOTIONS >===================

[Command]
name = "cbfx"
command = ~45$B, F, x
time = 15
[Command]
name = "cbfy"
command = ~45$B, F, y
time = 15
[Command]
name = "cbfz"
command = ~45$B, F, z
time = 15
[Command]
name = "cbfx"
command = ~45$B, F, ~x
time = 15
[Command]
name = "cbfy"
command = ~45$B, F, ~y
time = 15
[Command]
name = "cbfz"
command = ~45$B, F, ~z
time = 15

[Command]
name = "bfx"
command = $B, F, x
time = 15
[Command]
name = "bfy"
command = $B, F, y
time = 15
[Command]
name = "bfz"
command = $B, F, z
time = 15
[Command]
name = "bfx"
command = $B, F, ~x
time = 15
[Command]
name = "bfy"
command = $B, F, ~y
time = 15
[Command]
name = "bfz"
command = $B, F, ~z
time = 15

[Command]
name = "cbfa"
command = ~45$B, F, a
time = 15
[Command]
name = "cbfb"
command = ~45$B, F, b
time = 15
[Command]
name = "cbfc"
command = ~45$B, F, c
time = 15
[Command]
name = "cbfa"
command = ~45$B, F, ~a
time = 15
[Command]
name = "cbfb"
command = ~45$B, F, ~b
time = 15
[Command]
name = "cbfc"
command = ~45$B, F, ~c
time = 15

[Command]
name = "bfa"
command = $B, F, a
time = 15
[Command]
name = "bfb"
command = $B, F, b
time = 15
[Command]
name = "bfc"
command = $B, F, c
time = 15
[Command]
name = "bfa"
command = $B, F, ~a
time = 15
[Command]
name = "bfb"
command = $B, F, ~b
time = 15
[Command]
name = "bfc"
command = $B, F, ~c
time = 15

[Command]
name = "cdux"
command = ~45$D, $U, x
time = 15
[Command]
name = "cduy"
command = ~45$D, $U, y
time = 15
[Command]
name = "cduz"
command = ~45$D, $U, z
time = 15
[Command]
name = "cdux"
command = ~45$D, $U, ~x
time = 15
[Command]
name = "cduy"
command = ~45$D, $U, ~y
time = 15
[Command]
name = "cduz"
command = ~45$D, $U, ~z
time = 15
[Command]
name = "dux"
command = $D, $U, x
time = 15
[Command]
name = "duy"
command = $D, $U, y
time = 15
[Command]
name = "duz"
command = $D, $U, z
time = 15

[Command]
name = "cdua"
command = ~45$D, $U, a
time = 15
[Command]
name = "cdub"
command = ~45$D, $U, b
time = 15
[Command]
name = "cduc"
command = ~45$D, $U, c
time = 15
[Command]
name = "cdua"
command = ~45$D, $U, ~a
time = 15
[Command]
name = "cdub"
command = ~45$D, $U, ~b
time = 15
[Command]
name = "cduc"
command = ~45$D, $U, ~c
time = 15

[Command]
name = "dua"
command = $D, $U, a
time = 15
[Command]
name = "dub"
command = $D, $U, b
time = 15
[Command]
name = "duc"
command = $D, $U, c
time = 15
[Command]
name = "dua"
command = $D, $U, ~a
time = 15
[Command]
name = "dub"
command = $D, $U, ~b
time = 15
[Command]
name = "duc"
command = $D, $U, ~c
time = 15

[Command]
name = "hcfx"
command = ~B, DB, D, DF, F, x
time = 30
[Command]
name = "hcfy"
command = ~B, DB, D, DF, F, y
time = 30
[Command]
name = "hcfz"
command = ~B, DB, D, DF, F, z
time = 30
[Command]
name = "hcfx"
command = ~B, DB, D, DF, F, ~x
time = 30
[Command]
name = "hcfy"
command = ~B, DB, D, DF, F, ~y
time = 30
[Command]
name = "hcfz"
command = ~B, DB, D, DF, F, ~z
time = 30

[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, x
time = 30
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, y
time = 30
[Command]
name = "hcbz"
command = ~F, DF, D, DB, B, z
time = 30
[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, ~x
time = 30
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, ~y
time = 30
[Command]
name = "hcbz"
command = ~F, DF, D, DB, B, ~z
time = 30

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
name = "df2p"
command = ~F, D, DF, x+y
time = 25
[Command]
name = "df2p"
command = ~F, D, DF, x+z
time = 25
[Command]
name = "df2p"
command = ~F, D, DF, y+z
time = 25

[Command]
name = "db2p"
command = ~B, D, DB, x+y
time = 25
[Command]
name = "db2p"
command = ~B, D, DB, x+z
time = 25
[Command]
name = "db2p"
command = ~B, D, DB, y+z
time = 25

[Command]
name = "df2k"
command = ~F, D, DF, a+b
time = 25
[Command]
name = "df2k"
command = ~F, D, DF, a+c
time = 25
[Command]
name = "df2k"
command = ~F, D, DF, b+c
time = 25

[Command]
name = "db2k"
command = ~B, D, DB, a+b
time = 25
[Command]
name = "db2k"
command = ~B, D, DB, a+c
time = 25
[Command]
name = "db2k"
command = ~B, D, DB, b+c
time = 25

[Command]
name = "Counter_P"
command = F, D, DF, x
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, y
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, z
time = 16

[Command]
name = "Counter_K"
command = F, D, DF, a
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, b
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, c
time = 16


;===================< OTHER >===================

[Command]
name = "highjump"
command = $D, $U
time = 15

[Command]
name = "taunt"
command = ~D, D, s
time = 15


;===================< DOUBLE TAP >===================
[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10


;===================< 2/3 BUTTON COMBINATION >===================

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
name = "roll"
command = a+x
time = 1

[Command]
name = "excelcombo"
command = c+z
time = 1


;===========================================================================
;===============================< -1 STATES >=================================
;===========================================================================

[Statedef -1]

[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = (stateno = 52 || stateno = 105 || stateno = 5120) && !animtime
trigger2 = (stateno = [200, 259]) && !animtime
trigger3 = ((stateno = [700, 701]) || (stateno = [710, 729]) || stateno = 760) && !animtime
trigger4 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, roll combo]
type = changestate
value = 720
triggerall = !AIlevel
triggerall = command = "roll"
triggerall = roundstate = 2 && statetype != A && var(20)
trigger1 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger2 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, roll / dodge]
type = changestate
value = ifelse(command = "holdfwd", 720, ifelse(command = "holdback", 725, 710))
trigger1 = !AIlevel
trigger1 = command = "roll"
trigger1 = roundstate = 2 && statetype != A
trigger1 = ctrl

[State -1, finalpsychocrusher]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = command = "cbfbf2p" || ((stateno = [1000, 4999]) && command = "bfbf2p")
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1300 || stateno = 1400) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, vegawarp]
type = changestate
value = 1700
trigger1 = !AIlevel
trigger1 = command = "df2p" || command = "db2p" || command = "df2k" || command = "db2k"
trigger1 = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)

[State -1, vegawarp]
type = changestate
value = 1710
triggerall = !AIlevel
triggerall = command = "df2p" || command = "db2p" || command = "df2k" || command = "db2k"
triggerall = roundstate = 2
trigger1 = alive && ((stateno = 5050 && canrecover) || stateno = 5110)
trigger2 = var(20) && (stateno = [200, 289])
trigger3 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger4 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, follow -up]
type = changestate
value = 3150
triggerall = !AIlevel
triggerall = command = "2qcbk"
triggerall = roundstate = 2 && power >= 1000 && var(20) <= 60
trigger1 = stateno = 3000 && anim = 3001 && animelemtime(17) < 0 && (movecontact = [1, 24])
trigger2 = stateno = 3050 && anim = 3050 && (movecontact = [1, 24])
trigger3 = stateno = 3100 && animelemtime(14) < 0 && (movecontact = [1, 24])

[State -1, psychobreaksmasher]
type = changestate
value = 3050
triggerall = !AIlevel
triggerall = command = "cbfbfp" || ((stateno = [1000, 4999]) && command = "bfbfp")
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1300 || stateno = 1400 || stateno = 3100) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, heartbreakdespair]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "2qcfp"
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1300 || stateno = 1400 || stateno = 3100) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, kneepressnightmare]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "2qcfk"
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1300 || stateno = 1400) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, psychoimpact]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "hcfx" || command = "hcfy" || command = "hcfz"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, psychobanish]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = command = "dfx" || command = "dfy" || command = "dfz"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, psychofield]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = command = "hcbx" || command = "hcby" || command = "hcbz"
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1605), 1)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, psychocrusher]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = (var(20) <= 0 && (command = "cbfx" || command = "cbfy" || command = "cbfz")) || (var(20) > 0 && (command = "bfx" || command = "bfy" || command = "bfz"))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, doublekneepress]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = (var(20) <= 0 && (command = "cbfa" || command = "cbfb" || command = "cbfc")) || (var(20) > 0 && (command = "bfa" || command = "bfb" || command = "bfc"))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, headpress]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = (var(20) <= 0 && (command = "cdua" || command = "cdub" || command = "cduc")) || (var(20) > 0 && (command = "dua" || command = "dub" || command = "duc"))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 40 || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, devilreverse]
type = changestate
value = 1250
triggerall = !AIlevel
triggerall = (var(20) <= 0 && (command = "cdux" || command = "cduy" || command = "cduz")) || (var(20) > 0 && (command = "dux" || command = "duy" || command = "duz"))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || stateno = 40 || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "Counter_P" || command = "Counter_K"
trigger1 = roundstate = 2 && !var(20) && power >= 2000 && statetype != A

[State -1, throw]
type = changestate
value = 800
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = S && ctrl && stateno != 100

[State -1, excelcombo]
type = changestate
value = 760
trigger1 = !AIlevel
trigger1 = command = "excelcombo"
trigger1 = roundstate = 2 && power >= 1000 && !var(20) && ctrl

[State -1, powercharge]
type = changestate
value = 740
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)

[State -1, run / dash]
type = changestate
value = ifelse(command = "FF", 100, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S && ctrl

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = command = "x" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SMP]
type = changestate
value = 205
triggerall = !AIlevel
triggerall = command = "y" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command = "z" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && anim = 206 && animelemtime(4) >= 0 && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SLK]
type = changestate
value = 215
triggerall = !AIlevel
triggerall = command = "a" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SMK]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = command = "b" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHK]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = command = "c" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CLP]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = command = "x" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CMP]
type = changestate
value = 235
triggerall = !AIlevel
triggerall = command = "y" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CHP]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command = "z" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CLK]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = command = "a" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CMK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = command = "b" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CHK]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = command = "c" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, ALP]
type = changestate
value = 260
triggerall = !AIlevel
triggerall = command = "x" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, HellAttack]
type = changestate
value = 266
trigger1 = !AIlevel
trigger1 = command = "y" && statetype = A && vel x
trigger1 = stateno = 265 && animelemtime(3) >= 0

[State -1, AMP]
type = changestate
value = 265
triggerall = !AIlevel
triggerall = command = "y" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AHP]
type = changestate
value = 270
triggerall = !AIlevel
triggerall = command = "z" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, ALK]
type = changestate
value = 275
triggerall = !AIlevel
triggerall = command = "a" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AMK]
type = changestate
value = 280
triggerall = !AIlevel
triggerall = command = "b" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AHK]
type = changestate
value = 285
triggerall = !AIlevel
triggerall = command = "c" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, Standing Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "down" && command != "fwd" && command != "back" && command != "up"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 702
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7

[State -1, taunt]
type = changestate
value = 195
triggerall = !AIlevel
triggerall = command = "start" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)


;===========================================================================
;=================================< A.I. >====================================
;===========================================================================

[State -1, Standing Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7

[State -1, Reset Parry]
type = hitoverride
trigger1 = (!ctrl && (stateno != [700, 702]) && stateno != 5120) || var(20)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger5 = statetype = A && var(21) != 3
slot = 0
time = 0

[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && (stateno != [100, 106])
trigger1 = enemynear, movetype != A && p2bodydist x > 120 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, sidestep / dodge]
type = changestate
value = ifelse((backedgebodydist > 40 && random < (200 * (AIlevel ** 2 / 64.0))), 725, ifelse(random < (600 * (AIlevel ** 2 / 64.0)), 720, 710))
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20)
trigger1 = life < 500 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 740
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && power < powermax && !var(20) && ctrl
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

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

[State -1, taunt]
type = changestate
value = 195
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = life >= 500 && life >= (enemynear, life)
trigger1 = p2dist x > 200 && (enemynear, vel y > 0) && ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = !(enemynear, ctrl) && (enemynear, movetype = H)

[State -1, throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2dist x = [0, 64]) && (p2dist y = [ -25, 25]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (p2dist x = [0, 64]) && (p2dist y = [ -25, 25]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 205
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 205 && anim = 206 && animelemtime(4) >= 0 && (movehit = [1, 16])

[State -1, SLK]
type = changestate
value = 215
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 225
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 20]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 235
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 20]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 260
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, HellAttack]
type = changestate
value = 266
trigger1 = AIlevel && numenemy
trigger1 = statetype = A && roundstate = 2 && vel x
trigger1 = stateno = 265 && animelemtime(4) >= 0

[State -1, AMP]
type = changestate
value = 265
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (ifelse(p2statetype = A, 250, 50) * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 270
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 275
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 25]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 280
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 285
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [ -50, 75]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, psycho banish]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x = [0, 40]) && (p2dist y >= -60) && (enemynear, vel y > -2)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, psycho crusher]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x = [160, 320]) && (p2dist y >= -120) && (enemynear, vel y > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, double knee press]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x = [0, 160]) && (p2dist y >= -120) && (enemynear, vel y > -2)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, psycho impact]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x = [0, 200]) && (p2dist y >= -120) && (enemynear, vel y > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, head press]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155])
triggerall = (p2dist y >= -160) && (enemynear, vel y <= 0)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, devil reverse]
type = changestate
value = 1250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2dist y >= -160) && (enemynear, vel y <= 0)
trigger1 = ctrl && random < (15 * (AIlevel ** 2 / 64.0))

[State -1, psychofield]
type = changestate
value = 1600
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1605), 1)
triggerall = p2statetype != L && (enemynear, vel y <= 0)
trigger1 = ctrl && p2dist x > 160 && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, knee press nightmare]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x = [0, 90]) && (p2dist y >= -180) && (enemynear, vel y > -2) && (enemynear, vel x >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1300 || stateno = 1400) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)

[State -1, heartbreak]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A) && p2statetype != L
triggerall = (p2bodydist x = [0, 90]) && (p2dist y >= -180) && (enemynear, vel y > -2) && (enemynear, vel x >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1300 || stateno = 1400) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = (stateno = 3100) && animelemtime(8) >= 0 && (movehit = [1, 16]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, mega crusher]
type = changestate
value = 3050
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = frontedgedist >= 160
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A) && p2statetype != L
triggerall = (p2bodydist x = [0, 90]) && (p2dist y >= -180) && (enemynear, vel y > -2) && (enemynear, vel x >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1300 || stateno = 1400) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = (stateno = 3100) && animelemtime(8) >= 0 && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, follow -up]
type = changestate
value = 3150
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && power >= 1000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A) && p2statetype != L
triggerall = (p2bodydist x = [ -48, 48]) && (p2dist y >= -90)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = stateno = 3000 && anim = 3001 && animelemtime(13) >= 0 && animelemtime(17) < 0 && (movecontact = [1, 24]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3050 && anim = 3050 && hitcount >= 7 && (movecontact = [1, 24]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && animelemtime(11) >= 0 && animelemtime(14) < 0 && (movecontact = [1, 24]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, final psycho crusher]
type = changestate
value = 4000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A)
triggerall = (p2statetype = A^^p2movetype = H) && p2statetype != L
trigger1 = ctrl && numenemy && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = (enemynear, animtime >= 20) || (enemynear, pos y <= -60)
