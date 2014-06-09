; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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
name = "otokomichi"
command = z, a, ~B, x, x
time = 45

[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, x
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, y
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, z
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, ~x
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, ~y
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, ~z
time = 45

[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, F, x+z
time = 30
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, F, y+z
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
name = "2qcfs"
command = ~D, DF, F, D, DF, F, s
time = 30
[Command]
name = "2qcfs"
command = ~D, DF, F, D, DF, F, ~s
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

[Command]
name = "2qcbs"
command = ~D, DB, B, D, DB, B, s
time = 30
[Command]
name = "2qcbs"
command = ~D, DB, B, D, DB, B, ~s
time = 30


;===================< SPECIAL MOTIONS >===================

[Command]
name = "fhcfx"
command = ~F, B, D, F, x
time = 30
[Command]
name = "fhcfy"
command = ~F, B, D, F, y
time = 30
[Command]
name = "fhcfz"
command = ~F, B, D, F, z
time = 30
[Command]
name = "fhcfx"
command = ~F, B, D, F, ~x
time = 30
[Command]
name = "fhcfy"
command = ~F, B, D, F, ~y
time = 30
[Command]
name = "fhcfz"
command = ~F, B, D, F, ~z
time = 30

[Command]
name = "fhcf2p"
command = ~F, B, D, F, x+y
time = 30
[Command]
name = "fhcf2p"
command = ~F, B, D, F, x+z
time = 30
[Command]
name = "fhcf2p"
command = ~F, B, D, F, y+z
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
name = "dfa"
command = ~F, D, DF, a
time = 16
[Command]
name = "dfb"
command = ~F, D, DF, b
time = 16
[Command]
name = "dfc"
command = ~F, D, DF, c
time = 16
[Command]
name = "dfa"
command = ~F, D, DF, ~a
time = 16
[Command]
name = "dfb"
command = ~F, D, DF, ~b
time = 16
[Command]
name = "dfc"
command = ~F, D, DF, ~c
time = 16

[Command]
name = "dbx"
command = ~B, D, DB, x
time = 20
[Command]
name = "dby"
command = ~B, D, DB, y
time = 20
[Command]
name = "dbz"
command = ~B, D, DB, z
time = 20
[Command]
name = "dbx"
command = ~B, D, DB, ~x
time = 20
[Command]
name = "dby"
command = ~B, D, DB, ~y
time = 20
[Command]
name = "dbz"
command = ~B, D, DB, ~z
time = 20

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
name = "qcba"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, c
time = 15
[Command]
name = "qcba"
command = ~D, DB, B, ~a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, ~c
time = 15

[Command]
name = "qcb2k"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, a+c
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, b+c
time = 15

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

[Command]
name = "qcfs"
command = ~D, DF, F, s
time = 15
[Command]
name = "qcbs"
command = ~D, DB, B, s
time = 15
[Command]
name = "qcfs"
command = ~D, DF, F, ~s
time = 15
[Command]
name = "qcbs"
command = ~D, DB, B, ~s
time = 15


;===================< OTHER >===================

[Command]
name = "highjump"
command = $D, $U
time = 15

[Command]
name = "jump"
command = $U
time = 1


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
name = "3p"
command = x+y+z
time = 1

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
trigger1 = (stateno = 52 || stateno = 5120) && !animtime
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
triggerall = !AIlevel
triggerall = command = "roll"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 8]) && var(20)

[State -1, otokomichi]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = command = "otokomichi"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2)
trigger2 = stateno = [200, 250]
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, chouhatsushinwa]
type = changestate
value = 4100
triggerall = !AIlevel
triggerall = command = "2qcbs"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, hishouburaiken]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "2qcbk"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 2000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300 || stateno = 3100) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, ZZZ]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = command = "2qcf2p"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = !numhelper(3005) && !numhelper(3405)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300 || stateno = 3100 || stateno = 3200) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3000 && stateno != 3400
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, kouryuurekka]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "2qcfk"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300 || stateno = 3200) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, shinkuugadouken]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "2qcfp"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3005) && !numhelper(3405)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300 || stateno = 3100 || stateno = 3200) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3000
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, chouhatsudensetsu]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = command = "2qcfs"
triggerall = roundstate = 2 && statetype != A && (power >= 1000 || var(33)) && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300 || stateno = 3100 || stateno = 3200) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, EXkouryuuken]
type = changestate
value = 1110
triggerall = !AIlevel
triggerall = command = "df2p"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXdankuukyaku2]
type = changestate
value = 1220
triggerall = command = "hcb2k"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXkuuchuudankuukyaku]
type = changestate
value = 1260
triggerall = !AIlevel
triggerall = command = "qcb2k"
triggerall = !var(33) && roundstate = 2 && statetype = A && var(9) != 2 && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [260, 285]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXdankuukyaku]
type = changestate
value = 1210
triggerall = command = "qcb2k"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXgadouken]
type = changestate
value = 1010
triggerall = !AIlevel
triggerall = command = "qcf2p"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !numhelper(1015) && !numhelper(3005)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXsaikyouryuubougyo]
type = changestate
value = ifelse(statetype = S, 1510, ifelse(statetype = C, 1511, 1512))
trigger1 = !AIlevel
trigger1 = command = "3p"
trigger1 = !var(33) && roundstate = 2 && p2dist x > 0 && power >= 500 && var(20) <= 60
trigger1 = stateno = 150 || stateno = 152 || stateno = 154

[State -1, EXuppercut]
type = changestate
value = 1150
triggerall = !AIlevel
triggerall = command = "recovery" && command = "holddown"
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, zuki]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = command = "2qcbp"
triggerall = !var(33) && roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, gadoushoukouken]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = command = "fhcfx" || command = "fhcfy" || command = "fhcfz"
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = !numhelper(1015) && !numhelper(3005)
triggerall = ifelse(!var(20), !numhelper(1005) && !numhelper(1405), 1)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, kouryuuken]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "dfx" || command = "dfy" || command = "dfz"
triggerall = !var(33) && roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, shin poing]
type = changestate
value = 1700
triggerall = !AIlevel
triggerall = command = "dfa" || command = "dfb" || command = "dfc"
triggerall = !var(33) && roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, kuuchuudankuukyaku]
type = changestate
value = 1250
triggerall = !AIlevel
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
triggerall = !var(33) && roundstate = 2 && statetype = A && var(9) != 2
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [260, 285]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, dankuukyaku]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
triggerall = !var(33) && roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, gadouken]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = !numhelper(1015) && !numhelper(3005)
triggerall = ifelse(!var(20), !numhelper(1005) && !numhelper(1405), 1)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, premiumsign]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "qcfa" || command = "qcfb" || command = "qcfc"
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1305), 1)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 250]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, saikyouryuubougyo]
type = changestate
value = ifelse(statetype = S, 1500, ifelse(statetype = C, 1501, 1502))
trigger1 = !AIlevel
trigger1 = command = "recovery"
trigger1 = !var(33) && roundstate = 2 && p2dist x > 0
trigger1 = stateno = 150 || stateno = 152 || stateno = 154

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "Counter_P" || command = "Counter_K"
trigger1 = !var(33) && roundstate = 2 && power >= 2000 && statetype != A && !var(20)

[State -1, airthrow]
type = changestate
value = 850
trigger1 = !AIlevel
trigger1 = command = "recovery" && (command = "holdfwd" || command = "holdback")
trigger1 = !var(33) && roundstate = 2 && statetype = A && var(9) != 2 && (pos y <= -42 || vel y < 0)
trigger1 = ctrl && stateno != 100

[State -1, throw]
type = changestate
value = 800
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = !var(33) && roundstate = 2 && statetype = S
trigger1 = ctrl && stateno != 100

[State -1, excelcombo]
type = changestate
value = 760
trigger1 = !AIlevel
trigger1 = command = "excelcombo"
trigger1 = !var(33) && roundstate = 2 && power >= 1000 && !var(20)
trigger1 = ctrl

[State -1, powercharge]
type = changestate
value = 740
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = !var(33) && roundstate = 2
trigger1 = statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)

[State -1, recoveryroll]
type = changestate
trigger1 = !AIlevel
trigger1 = command = "2k"
trigger1 = stateno = 5050 && vel y > -1 && alive && !var(33)
value = 5220

[State -1, run / dash]
type = changestate
value = ifelse(command = "FF", 100, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S
trigger1 = ctrl

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = command = "x" && command != "holddown"
triggerall = !var(33) && statetype != A
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
triggerall = command = "y" && command != "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command = "z" && command != "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SLK]
type = changestate
value = 215
triggerall = !AIlevel
triggerall = command = "a" && command != "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SMK]
type = changestate
value = 220
triggerall = command = "b" && command != "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHK]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = command = "c" && command != "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CLP]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = command = "x" && command = "holddown"
triggerall = !var(33) && statetype != A
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
triggerall = command = "y" && command = "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CHP]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command = "z" && command = "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CLK]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = command = "a" && command = "holddown"
triggerall = !var(33) && statetype != A
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
triggerall = command = "b" && command = "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CHK]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = command = "c" && command = "holddown"
triggerall = !var(33) && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, ALP]
type = changestate
value = 260
triggerall = !AIlevel
triggerall = command = "x"
triggerall = !var(33) && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AMP]
type = changestate
value = 265
triggerall = !AIlevel
triggerall = command = "y"
triggerall = !var(33) && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AHP]
type = changestate
value = 270
triggerall = !AIlevel
triggerall = command = "z"
triggerall = !var(33) && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, ALK]
type = changestate
value = 275
triggerall = !AIlevel
triggerall = command = "a"
triggerall = !var(33) && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AMK]
type = changestate
value = 280
triggerall = !AIlevel
triggerall = command = "b"
triggerall = !var(33) && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AHK]
type = changestate
value = 285
triggerall = !AIlevel
triggerall = command = "c"
triggerall = !var(33) && statetype = A
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

[State -1, rolling taunt]
type = changestate
value = ifelse(command = "qcbs", 404, 403)
triggerall = !AIlevel
triggerall = !var(33) && (command = "qcfs" || command = "qcbs") && roundstate = 2 && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 285]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, taunt]
type = changestate
value = ifelse(statetype = A, 402, ifelse(statetype = C, 401, 400))
triggerall = !AIlevel
triggerall = command = "start"
triggerall = !var(33)
trigger1 = ctrl
trigger2 = (stateno = [200, 285]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, chouhatsushinwareset]
type = changestate
value = 4101
trigger1 = !AIlevel
trigger1 = var(33) < 0 && statetype != A && movetype != H

[State -1, specialtaunt]
type = changestate
value = 415
triggerall = command = "start"
triggerall = var(33) && roundstate = 2 && statetype != A
trigger1 = ctrl
trigger2 = stateno = [410, 411]
trigger3 = (stateno = [413, 414]) && animelemtime(16) >= 0

[State -1, rollingtaunt]
type = changestate
value = ifelse(command = "holdback", 414, 413)
triggerall = (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")
triggerall = var(33) && (command = "holddown") && (command = "holdfwd" || command = "holdback") && roundstate = 2 && statetype != A
trigger1 = ctrl
trigger2 = stateno = 410
trigger3 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 1 && command = "x"
trigger4 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 2 && command = "y"
trigger5 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 3 && command = "z"
trigger6 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 4 && command = "a"
trigger7 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 5 && command = "b"
trigger8 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 6 && command = "c"

[State -1, taunt]
type = changestate
value = 410
triggerall = (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")
triggerall = var(33) && command != "holddown" && roundstate = 2 && statetype != A
trigger1 = ctrl
trigger2 = stateno = 411
trigger3 = (stateno = [413, 414]) && animelemtime(16) >= 0
trigger4 = stateno = 410 && var(34) != 1 && command = "x"
trigger5 = stateno = 410 && var(34) != 2 && command = "y"
trigger6 = stateno = 410 && var(34) != 3 && command = "z"
trigger7 = stateno = 410 && var(34) != 4 && command = "a"
trigger8 = stateno = 410 && var(34) != 5 && command = "b"
trigger9 = stateno = 410 && var(34) != 6 && command = "c"

[State -1, taunt]
type = changestate
value = 411
triggerall = (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")
triggerall = var(33) && command = "holddown" && roundstate = 2 && statetype != A
trigger1 = ctrl
trigger2 = stateno = 410
trigger3 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 1 && command = "x"
trigger4 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 2 && command = "y"
trigger5 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 3 && command = "z"
trigger6 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 4 && command = "a"
trigger7 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 5 && command = "b"
trigger8 = ((stateno = 411) || ((stateno = [413, 414]) && animelemtime(16) >= 0)) && var(34) != 6 && command = "c"

[State -1, taunt]
type = changestate
value = 412
trigger1 = (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")
trigger1 = var(33) && roundstate = 2 && statetype = A
trigger1 = ctrl

[State -1, Jump]
type = changestate
value = 40
trigger1 = command = "jump"
trigger1 = var(33) && roundstate = 2 && statetype != A
trigger1 = (stateno = [410, 414])


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
ignorehitpause = 1

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
ignorehitpause = 1

[State -1, Air Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || (stateno = 702 && random < (150 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7
ignorehitpause = 1

[State -1, Reset Parry]
type = hitoverride
trigger1 = (!ctrl && (stateno != [700, 702]) && stateno != 5120) || var(20)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger5 = statetype = A && var(21) != 3
slot = 0
time = 0

[State -1, otokomichi]
type = changestate
value = 4000
trigger1 = AIlevel && numenemy
trigger1 = !var(33) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = life <= 100 || enemynear, life <= 535
trigger1 = (enemynear, movetype != H) && (enemynear, stateno != 40) && !(enemynear, ctrl)
trigger1 = (p2bodydist x = [0, 80]) && (enemynear, vel y >= 0) && (p2dist y = [ -64, 8])
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, roll / dodge]
type = changestate
value = ifelse((backedgebodydist > 40 && random < 200), 725, ifelse(random < 600, 720, 710))
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = S && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

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
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = !var(33) && roundstate = 2 && power >= 2000 && !var(20) && life < 500 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 740
trigger1 = AIlevel && numenemy
trigger1 = !var(33) && roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, recoveryroll]
type = changestate
trigger1 = stateno = 5050 && vel y > -1 && alive
trigger1 = AIlevel && numenemy
trigger1 = pos y = -30 && random < (200 * (AIlevel ** 2 / 64.0))
value = 5220

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

[State -1, airthrow]
type = changestate
value = 850
trigger1 = AIlevel && numenemy
trigger1 = !var(33) && roundstate = 2 && statetype = A && var(9) != 2 && ctrl
trigger1 = p2statetype = A && p2movetype != H && (pos y <= -42 || vel y < 0)
trigger1 = (p2bodydist x = [0, 36]) && (p2bodydist y = [ -25, 25]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, throw]
type = changestate
value = 800
trigger1 = AIlevel && numenemy
trigger1 = !var(33) && roundstate = 2 && statetype = S && stateno != 100 && ctrl
trigger1 = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -25, 25]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 47]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 205
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 59]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 75]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 215
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 77]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 81]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 225
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 83]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 235
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 61]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 63]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 57]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 92]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 260
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 36]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 265
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 58]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 270
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 53]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 275
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 69]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 280
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [ -63, 63]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 285
triggerall = AIlevel && numenemy
triggerall = !var(33) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 47]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, taunt]
type = changestate
value = ifelse(statetype = A, 402, ifelse(statetype = C, 401, 400))
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && ctrl
triggerall = life >= (enemynear, life) -200 && p2movetype != A && (prevstateno != [400, 499])
trigger1 = p2bodydist x >= 120 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = p2statetype = L && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, zuki]
type = changestate
value = 1600
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && (p2bodydist x = [0, 80]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && (enemynear, movetype = A) && (enemynear, vel x >= 0) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, gadouken]
type = changestate
value = ifelse((power >= 500 && random < 200), 1010, 1000)
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && (p2bodydist x = [0, 120])
triggerall = (enemynear, vel y > -1)
triggerall = !numhelper(1005) && !numhelper(1015) && !numhelper(1405) && !numhelper(3005)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && (p2dist x = [80, 160]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, kouryuuken]
type = changestate
value = ifelse((power >= 500 && random < 200), 1110, 1100)
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x > 0) && (enemynear, vel y > -1) && (enemynear, vel x > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && p2bodydist x < 50 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && p2bodydist x < 100 && p2dist y > 120 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, uppercut]
type = changestate
value = 1150
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 500
triggerall = (p2stateno != [120, 155]) && p2statetype != L && p2movetype = A
triggerall = (p2bodydist x = [0, 85]) && (enemynear, vel y > -1) && (enemynear, vel x > -2) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, kuuchuudankuukyaku]
type = changestate
value = ifelse((power >= 500 && random < 100), 1260, 1250)
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype = A && var(9) != 2 && vel y > -5
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 160]) && (enemynear, vel y > -1) && (enemynear, vel x > -2) && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [260, 285]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, dankuukyaku]
type = changestate
value = ifelse((power >= 500 && random < 200), 1210, 1200)
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 160]) && (enemynear, vel y > -1) && (enemynear, vel x > -2) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, gadoushoukouken]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (enemynear, vel y > -1) && (p2bodydist x = [0, 120]) && !(enemynear, hitfall)
triggerall = !numhelper(1005) && !numhelper(1015) && !numhelper(1405) && !numhelper(3005)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && (p2dist x = [80, 160]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, chouhatsushinwa]
type = changestate
value = 4100
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = p2bodydist x >= 120 && p2movetype != A
triggerall = life >= 900 && (enemynear, life <= 100)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, shin poing]
type = changestate
value = 1700
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155])
triggerall = (p2bodydist x > 0) && (enemynear, vel y > -1) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (p2dist x = [80, 160]) && p2movetype = A && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, chouhatsudensetsu]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 1000
triggerall = p2bodydist x >= 120 && p2movetype != A
triggerall = life >= 500 && (enemynear, life <= 250)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, hishouburaiken]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != A && p2statetype != L
triggerall = (p2bodydist x = [0, 40]) && (enemynear, vel x > -2) && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 205 || stateno = 210 || stateno = 220 || stateno = 225 || stateno = 235 || stateno = 240 || stateno = 250
trigger2 = (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 3100 && animelemtime(6) >= 0) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))

[State -1, kouryurekka]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 1000
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 60]) && p2dist y >= -120 && (enemynear, vel y > -1) && (enemynear, vel x > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300 || (stateno = 3200 && animelemtime(56) >= 0)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 1400
trigger4 = helper(stateno + 5), var(3) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, shinkuu mvc]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 2000
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 60]) && (enemynear, vel y > -1)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !numhelper(3005) && !numhelper(3405)
trigger1 = ((stateno = [1100, 1199]) || (stateno = 3100 && animelemtime(6) >= 0)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, shinkuugadouken]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && power >= 1000
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 90]) && (enemynear, vel y > -1)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !numhelper(3005)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 250]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ((stateno = [1100, 1199]) || (stateno = 3100 && animelemtime(6) >= 0) || (stateno = 3200 && animelemtime(56) >= 0)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 1400 && stateno != 3000
trigger4 = helper(stateno + 5), var(3) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, rolling taunt]
type = changestate
value = ifelse(random < 667, 404, 403)
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A && ctrl
triggerall = life >= (enemynear, life) -200 && p2movetype != A && (prevstateno != [400, 499])
trigger1 = ctrl && random < (10 * (AIlevel ** 2 / 64.0))
