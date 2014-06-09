; ______________________________
;| Ryu by Phantom.of.the.Server |
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
name = "sgs"
command = x, x, F, a, z
time = 48
[Command]
name = "sgs"
command = x, x, F, a+z
time = 40
[Command]
name = "sgs"
command = x, x, F+a+z
time = 32

[Command]
name = "qcfhcbp"
command = ~D, F, D, B, x
time = 40
[Command]
name = "qcfhcbp"
command = ~D, F, D, B, y
time = 40
[Command]
name = "qcfhcbp"
command = ~D, F, D, B, z
time = 40
[Command]
name = "qcfhcbp"
command = ~D, F, D, B, ~x
time = 40
[Command]
name = "qcfhcbp"
command = ~D, F, D, B, ~y
time = 40
[Command]
name = "qcfhcbp"
command = ~D, F, D, B, ~z
time = 40

[Command]
name = "qcfhcbk"
command = ~D, F, D, B, a
time = 40
[Command]
name = "qcfhcbk"
command = ~D, F, D, B, b
time = 40
[Command]
name = "qcfhcbk"
command = ~D, F, D, B, c
time = 40
[Command]
name = "qcfhcbk"
command = ~D, F, D, B, ~a
time = 40
[Command]
name = "qcfhcbk"
command = ~D, F, D, B, ~b
time = 40
[Command]
name = "qcfhcbk"
command = ~D, F, D, B, ~c
time = 40

[Command]
name = "qcbhcfk"
command = ~D, B, D, F, a
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, b
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, c
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, ~a
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, ~b
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, ~c
time = 40

[Command]
name = "2df2k"
command = ~D, DF, F, D, DF, a+b
time = 30
[Command]
name = "2df2k"
command = ~D, DF, F, D, DF, a+c
time = 30
[Command]
name = "2df2k"
command = ~D, DF, F, D, DF, b+c
time = 30

[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+b
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+c
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, b+c
time = 30

[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+y
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+z
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, y+z
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
name = "2dfk"
command = ~D, DF, F, D, DF, a
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, b
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, c
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~a
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~b
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~c
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

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, x+a
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, x+b
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, x+c
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, y+a
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, y+b
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, y+c
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, z+a
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, z+b
time = 20

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, z+c
time = 20



;===================< SPECIAL MOTIONS >===================

[Command]
name = "hcfx"
command = ~B, DB, D, DF, F, x
time = 25
[Command]
name = "hcfy"
command = ~B, DB, D, DF, F, y
time = 25
[Command]
name = "hcfz"
command = ~B, DB, D, DF, F, z
time = 25
[Command]
name = "hcfx"
command = ~B, DB, D, DF, F, ~x
time = 25
[Command]
name = "hcfy"
command = ~B, DB, D, DF, F, ~y
time = 25
[Command]
name = "hcfz"
command = ~B, DB, D, DF, F, ~z
time = 25

[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, x
time = 25
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, y
time = 25
[Command]
name = "hcbz"
command = ~F, DF, D, DB, B, z
time = 25
[Command]
name = "hcbx"
command = ~F, DF, D, DB, B, ~x
time = 25
[Command]
name = "hcby"
command = ~F, DF, D, DB, B, ~y
time = 25
[Command]
name = "hcfz"
command = ~F, DF, D, DB, B, ~z
time = 25

[Command]
name = "hcfa"
command = ~B, DB, D, DF, F, a
time = 30
[Command]
name = "hcfb"
command = ~B, DB, D, DF, F, b
time = 30
[Command]
name = "hcfc"
command = ~B, DB, D, DF, F, c
time = 30
[Command]
name = "hcfa"
command = ~B, DB, D, DF, F, ~a
time = 30
[Command]
name = "hcfb"
command = ~B, DB, D, DF, F, ~b
time = 30
[Command]
name = "hcfc"
command = ~B, DB, D, DF, F, ~c
time = 30

[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+b
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, b+c
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, c+a
time = 30

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
name = "qcfs"
command = ~D, DF, F, s
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
name = "qcfs"
command = ~D, DF, F, ~s
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
name = "db2p"
command = ~B, D, DB, x+y
time = 20
[Command]
name = "db2p"
command = ~B, D, DB, x+z
time = 20
[Command]
name = "db2p"
command = ~B, D, DB, y+z
time = 20

[Command]
name = "df3p"
command = ~F, D, DF, x+y+z
time = 20

[Command]
name = "db3p"
command = ~B, D, DB, x+y+z
time = 20

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
name = "db2k"
command = ~B, D, DB, a+b
time = 20
[Command]
name = "db2k"
command = ~B, D, DB, a+c
time = 20
[Command]
name = "db2k"
command = ~B, D, DB, b+c
time = 20

[Command]
name = "df3k"
command = ~F, D, DF, a+b+c
time = 20

[Command]
name = "db3k"
command = ~B, D, DB, a+b+c
time = 20

;alternate

[Command]
name = "df3k"
command = ~F, D, DF, s
time = 20

[Command]
name = "db3k"
command = ~B, D, DB, s
time = 20

[Command]
name = "Counter_P"
command = ~B, DB, D, x
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, y
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, z
time = 16

[Command]
name = "Counter_P"
command = ~B, DB, D, ~x
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, ~y
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "Counter_K"
command = ~B, DB, D, a
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, b
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, c
time = 16

[Command]
name = "Counter_K"
command = ~B, DB, D, ~a
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~b
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~c
time = 16


;===================< OTHER >===================

[Command]
name = "highjump"
command = $D, $U
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
name = "excelcombo"
command = c+z
time = 1

[Command]
name = "roll"
command = a+x
time = 1


;===========================================================================
;===============================< -1 STATES >===============================
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

[State -1, Double Shinkuu Hadouken]
type = changestate
value = 3600
triggerall = !AIlevel && roundstate=2 && var(1)!=2 && statetype!=A && power>=3000 && !var(20)
triggerall = TeamMode = Simul && NumPartner
triggerall = Partner, Alive
triggerall = Partner, Facing = Facing
triggerall = command = "teamsuper"
triggerall = Partner, AuthorName = "Phantom.of.the.Server&Jmorphman" && Partner, Name = "Ken Masters" && (Partner, var(40) != 1)
triggerall = !(Partner, StateType = A) && !(Partner, var(20)) && !(Partner, MoveType = H)
triggerall = (Partner, ctrl || Partner, StateNo = 21 || Partner, StateNo = 40 || Partner, StateNo = 52 || (Partner, StateNo = [100,101])) || Partner, var(7)
trigger1 = ctrl || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && movecontact
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24]) && !var(33)
trigger4 = (stateno = [1000, 1999]) && numhelper(stateno + 5) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = (stateno = [1000,1020]) && (animelemtime(6) >= 0 && animelemtime(8)< 0)

[State -1, roll combo]
type = changestate
value = 720
triggerall = !AIlevel
triggerall = command = "roll"
triggerall = roundstate = 2 && statetype != A && var(20)
trigger1 = var(20) && (stateno = [200, 289]) && movecontact
trigger2 = var(20) && (stateno = [1000, 2999]) && statetype != A && movecontact
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, roll forward]
type = changestate
value = 720
triggerall = !AILevel
triggerall = command = "roll"
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(6)

[State -1, roll backward]
type = changestate
value = 725
trigger1 = !AILevel
trigger1 = command = "roll"
trigger1 = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100,101])) && command = "holdback"

[State -1, dodge]
type = changestate
value = 710
trigger1 = !AILevel
trigger1 = command = "roll"
trigger1 = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))

[State -1, Souryuken]
type = ChangeState
value = 3700
triggerall = var(1) != 2
triggerall = TeamMode = Simul && NumPartner
triggerall = Partner, Alive
triggerall = Partner, AuthorName = "Phantom.of.the.Server&Jmorphman" && Partner, Name = "Ken Masters" && (Partner, var(40) != 1)
trigger1 = Partner, StateNo = 3700 && Partner, AnimElemTime(5) < 0
trigger1 = StateNo != 3700
trigger1 = MoveType != H

[State -1, ashurasenkuu]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = (var(1)!= 3 && (command = "df3p" || command = "db3p" || command = "df3k" || command = "db3k") || var(1) = 3 && (command = "df2p" || command = "db2p" || command = "df2k" || command = "db2k"))
triggerall = var(1) != 1 && roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, shungokusatsu]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = command = "sgs"
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, shinshoryuuken]
type = changestate
value = 3120
triggerall = !AIlevel
triggerall = (var(1) = 1 && command = "2df2k") || (var(1) =3 && command = "qcbhcfk")
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger6 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, metsuhadouken]
type = changestate
value = 3040
triggerall = !AIlevel
triggerall = (var(1) = 2 && command = "2qcbp") || (var(1) != 2 && command = "hcb2p")
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall = !numhelper(3033)
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger6 = stateno = 1010 && numhelper(stateno + 7)
trigger6 = helper(stateno + 7), var(3)
trigger7 = stateno = 1000 && (animelemtime(6)>= 0 && animelemtime(8)< 0)
trigger8 = stateno = 1020 && (animelemtime(12) > 0 && animelemtime(14)< 0)
trigger9 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, denjinhadouken]
type = changestate
value = 3020
triggerall = !AIlevel
triggerall = command = "2qcbp"
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall = !numhelper(3033)
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]))  && (movecontact = [1, 24]) && !var(43)
trigger4 = (stateno = [1000, 2999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger9 = stateno = 1500 && (movecontact = [1, 24]) && var(1) = 3 && !var(43)
trigger10 = (stateno = [1000,1010]) && (animelemtime(6)>= 0 && animelemtime(8)< 0)
trigger11 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, metsushoryuuken]
type = changestate
value = 3160
triggerall = !AIlevel
triggerall = (var(1) = 2 && command = "2df2k") || (var(1) != 2 && command = "qcfhcbk")
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) ||(stateno = [1500, 1510])|| stateno = 3100 || stateno = 3140) && (movecontact = [1, 24]) && !var(43)
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger6 = stateno = 1010 && numhelper(stateno + 7)
trigger6 = helper(stateno + 7), var(3)
trigger7 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, messatsugoushoryuu]
type = changestate
value = 3140
triggerall = !AIlevel
triggerall = command = "2dfk"
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) ||(stateno = [1500, 1510]))  && (movecontact = [1, 24]) && !var(43)
trigger4 = (stateno = [1000, 2999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger9 = stateno = 1010 && numhelper(stateno + 7)
trigger9 = helper(stateno + 7), var(3)
trigger10 = (stateno = 225 && (anim = 225 && animelemtime(4)<= 0)) && (movecontact = [1, 8])
trigger11 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, nidanshoryuutsuki]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = (var(1) = 1 && command = "2dfk") || (var(1) = 3 && command = "hcf2k")
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24]) && !var(43)
trigger4 = (stateno = [1000, 2999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger9 = stateno = 1500 && (movecontact = [1, 24]) && var(1) = 3 && !var(43)
trigger10 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, shinkuutatsumakisenpuukyakku]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "2qcbk" || (var(1) = 3 && command = "2qcbs")
triggerall = roundstate = 2 && statetype != A && power >= 2000 && var(20) <= 60
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])||(stateno = [1500, 1510])|| stateno = 3100 || stateno = 3140) && (movecontact = [1, 24]) && !var(43)
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger9 = stateno = 1010 && numhelper(stateno + 7)
trigger9 = helper(stateno + 7), var(3)
trigger10 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, shinkuuhadouken]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "2qcfp"
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])||(stateno = [1500, 1510]))  && (movecontact = [1, 24]) && !var(43)
trigger4 = (stateno = [1000, 2999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger9 = stateno = 1010 && numhelper(stateno + 7)
trigger9 = helper(stateno + 7), var(3)
trigger10 = (stateno = [1000,1010]) && (animelemtime(6)>= 0 && animelemtime(8)< 0)
trigger11 = stateno = 1020 && (animelemtime(12) > 0 && animelemtime(14)< 0)
trigger12 = stateno = 1030 && (animelemtime(9) > 0 && animelemtime(11)< 0)
trigger13 = (stateno = 205 && anim = 205) && movecontact
trigger13 = var(1) = 2
trigger14 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, reppujinraishou]
type = changestate
value = 3180
triggerall = !AIlevel
triggerall = command = "qcfhcbp"
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = !var(6)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) || stateno = 3100 || stateno = 3140) && (movecontact = [1, 24]) && !var(43)
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger6 = stateno = 1500 && (movecontact = [1, 24]) && var(1) = 3 && !var(43)
trigger7 = (stateno = 225 && (anim = 226 && animelemtime(4)<= 0)) && (movecontact = [1, 8])

[State -1, EXshoryuken]
type = changestate
value = 1110
triggerall = !AIlevel
triggerall = command = "df2p"
triggerall = var(1)!= 3 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXkuchuutatsumaki combo]
type = changestate
value = 1210
triggerall = !AIlevel
triggerall = command = "qcb2k"
triggerall = var(1) = 2 && statetype = A
trigger1 = !var(6) && (movecontact = [1, 24]) && stateno = 222 && !var(20)

[State -1, EXkuchuutatsumaki]
type = changestate
value = 1260
triggerall = !AIlevel
triggerall = command = "qcb2k"
triggerall = var(1)!= 3 && roundstate = 2 && statetype = A && var(9) != 2 && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [260, 285]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXtatsumaki]
type = changestate
value = 1210
triggerall = !AIlevel
triggerall = command = "qcb2k"
triggerall = var(1)!= 3 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXryusokyaku]
type = changestate
value = 1510
triggerall = !AIlevel
triggerall = command = "qcf2k"
triggerall = var(1) = 2 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXjoudan]
type = changestate
value = 1310
triggerall = !AIlevel
triggerall = command = "qcf2k"
triggerall = var(1) = 1 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXhadouken]
type = changestate
value = 1010
triggerall = !AIlevel
triggerall = command = "qcf2p"
triggerall = var(1)!= 3 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !numhelper(1005) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6 = (stateno = 205 && anim = 205) && movecontact
trigger6 = var(1) = 2

[State -1, EXshakunetsuhadouken]
type = changestate
value = 1030
triggerall = !AIlevel
triggerall = command = "hcb2p"
triggerall = var(1) = 2 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !numhelper(1005) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, shoryuken]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "dfx" || command = "dfy" || command = "dfz"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, classickuchuutatsumaki combo]
type = changestate
value = 1270
triggerall = !AIlevel
triggerall = var(1) != 1
triggerall = statetype = A
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
trigger1 = !var(20) && (movecontact = [1, 24]) && stateno = 222

[State -1, classickuchuutatsumaki]
type = changestate
value = 1270
triggerall = !AIlevel
triggerall = command = "hcba" || command = "hcbb" || command = "hcbc"
triggerall = roundstate = 2 && statetype = A && var(9) != 2
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [260, 285]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6 = (movecontact = [1, 8]) && (stateno = 265 && anim = 265)

[State -1, kuchuutatsumaki]
type = changestate
value = 1250
triggerall = !AIlevel
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
triggerall = roundstate = 2 && statetype = A && var(9) != 2
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [260, 285]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
;trigger6 = var(1)!= 2 && (movecontact = [1, 8]) && ((stateno = 265 && anim = 265) && animelemtime(3) < 0)

[State -1, tatsumaki]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, ryusokyaku]
type = changestate
value = 1500
triggerall = !AIlevel
triggerall = (var(1) = 2 && (command = "qcfa" || command = "qcfb" || command = "qcfc")) || (var(1) = 3 && (command = "hcfa" || command = "hcfb" || command = "hcfc"))
triggerall = var(1) != 1 && roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, joudansokutougeri]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "qcfa" || command = "qcfb" || command = "qcfc"
triggerall = var(1) != 2 && roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, shakunetsuhadouken]
type = changestate
value = 1020
triggerall = !AIlevel
triggerall = command = "hcbx" || command = "hcby" || command = "hcbz"
triggerall = var(1) != 1 && roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1005) && !numhelper(1025), 1) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, hadouken]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1005) && !numhelper(1025), 1) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1 = ctrl || (stateno = [100,101]) || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 245)
trigger2 = !var(6) && (stateno = [200, 255]) && stateno != 225 && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6 = (stateno = 205 && anim = 205) && movecontact
trigger6 = var(1) = 2

[State -1, excelcombo]
type = changestate
value = 760
triggerall = !AIlevel
triggerall = command = "excelcombo"
triggerall = roundstate = 2 && power >= 1000 && !var(20)
trigger1 = ctrl || (stateno = [100,101])

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "Counter_P" || command = "Counter_K"
trigger1 = roundstate = 2 && !var(20) && power >= 1000 && statetype != A

[State -1, run / dash]
type = changestate
value = ifelse(command = "FF", 102, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S && ctrl

[State -1, throw]
type = changestate
value = 800
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && ctrl && statetype = S && stateno != 100

[State -1, powercharge]
type = changestate
value = 740
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)

[State -1, seichuunidantsuki]
type = changestate
value = 214
triggerall = !AIlevel
triggerall = command = "recovery" && command != "holddown" && statetype != A
triggerall = var(1) != 2
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (movecontact = [1, 24]) && (stateno = [200, 255]) && var(20)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = command = "x" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SMP2]
type = changestate
value = 207
triggerall = !AIlevel
triggerall = command = "y" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SMP]
type = changestate
value = 205
triggerall = !AIlevel
triggerall = command = "y" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHP3]
type = changestate
value = 213
trigger1 = !AIlevel
trigger1 = var(1) != 1 && command = "z" && statetype != A
trigger1 = movecontact = 1 && stateno = 205 && !var(20)
trigger1 = var(7)

[State -1, SHP2]
type = changestate
value = 212
triggerall = !AIlevel
triggerall = var(1) != 2 && command = "z" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command = "z" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SLK]
type = changestate
value = 215
triggerall = !AIlevel
triggerall = command = "a" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SMK2]
type = changestate
value = 222
triggerall = !AIlevel
triggerall = command = "b" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = (ctrl || (StateNo = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SMK]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = command = "b" && command != "holdfwd" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHK]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = command = "c" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CLP]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = command = "x" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CMP]
type = changestate
value = 235
triggerall = !AIlevel
triggerall = command = "y" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CHP]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command = "z" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CLK]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = command = "a" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CMK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = command = "b" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, CHK]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = command = "c" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, ALP]
type = changestate
value = 260
triggerall = !AIlevel
triggerall = command = "x" && statetype = A
trigger1 = (ctrl || (stateno = [100,101]))
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

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

[State -1, TKK]
type = changestate
value = 282
triggerall = !AIlevel
triggerall = var(1) != 1 && command = "holddown" && command = "b" && statetype = A
triggerall = vel x > 0 && (vel y = [ -2, 2]) && var(9) != 2
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

[State -1, hado no kamae]
type = changestate
value = 198
triggerall = !AIlevel
triggerall = var(1) != 2 && command = "qcfs" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

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
;==========================< SHINSMOKE'S A.I. >=============================
;===========================================================================

;============================<A.I. Variables>===============================

[State -1, Guarding Var]
type=varset
trigger1= AIlevel && numenemy
trigger1= var(28)
var(28)=0
ignorehitpause=1

[State -1, No Guard Var]
type=varset
triggerall= AIlevel && numenemy
trigger1= ((stateno=[700,702]) || (prevstateno=[700,702]))
trigger2= enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3020 || enemynear,numhelper(3025))
trigger3= enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055))
trigger4= enemynear,hitdefattr=SCA,AT
trigger5= (prevstateno=[710,725])
var(28)=1
ignorehitpause=1

[State -1, No Guard]
type=assertspecial
trigger1= AIlevel && numenemy
trigger1= var(28)
flag=nostandguard
flag2=nocrouchguard
flag3=noairguard
ignorehitpause=1

[State -1, Stop Guarding]
type=ChangeState
trigger1= AIlevel && numenemy
trigger1= stateno=[120,130]
trigger1= var(28)
value=140
ignorehitpause=1

[State -1, Enemy attacking]
type=varset
triggerall= AIlevel && roundstate=2 && var(18)!=1
trigger1= enemynear,hitdefattr=SCA,AA,AP,AT
trigger2= enemynear,movetype=A && (enemynear,stateno=[200,4999]) && enemynear,time<=2
var(18)=1
ignorehitpause=1

[State -1, Enemy attacking ending]
type=varset
triggerall= AIlevel && roundstate=2 && var(18)=1
trigger1= !(enemynear,ctrl) && !(enemynear,hitdefattr=SCA,AA,AP,AT)
trigger1= ifelse(enemynear,stateno<=4999,1,enemynear,time>=60)
trigger2= abs(enemynear,animtime)<=10
var(18)=2
ignorehitpause=1

[State -1, Enemy not attacking at all]
type=varset
triggerall= AIlevel && roundstate=2 && var(18)
trigger1= enemynear,ctrl
trigger2= enemynear,stateno<=200
var(18)=0
ignorehitpause=1

[State -1, Enemy Projectile]
type=varset
trigger1= AIlevel && roundstate=2 && var(24)
trigger1= enemynear,statetype!=A
trigger1= enemynear,stateno=[1000,3999]
trigger1= var(18)=1
trigger1= abs(enemynear,animtime)=1
var(24)=enemynear,stateno
ignorehitpause=1

[State -1, Enemy Firing Projectile]
type=varset
trigger1= AIlevel && roundstate=2 && var(24) && !var(26)
trigger1= (enemynear,stateno=[1000,3999])
trigger1= enemynear,movetype=A
var(26)=1
ignorehitpause=1

[State -1, Enemy Projectile End]
type=varset
triggerall= var(26)
trigger1= enemynear,stateno!=var(24)
trigger2= enemynear,ctrl
var(26)=0
ignorehitpause=1

[State -1, Enemy Not Dizzy]
type=varset
triggerall= AIlevel && var(40)=1
trigger1= enemynear,ctrl
trigger2= enemynear,stateno<=5000 || (enemynear,stateno=[5100,5199])
var(40)=0
ignorehitpause=1

[State -1, Enemy Dizzy]
type=varset
trigger1= AIlevel && roundstate=2
trigger1= var(40)!=1
trigger1= !(enemynear,ctrl)
trigger1= (enemynear,stateno=[5300,5310]) || (enemynear,stateno=[1115020,1115120])
var(40)=1
ignorehitpause=1

;==========================<A.I. Aerial Combos>=============================

[State -1, shoryuuken aerial juggle]
type=changestate
value=1100
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2stateno!=[5100,5299]) && p2statetype!=L
trigger1= (ctrl||(stateno=[100,101])) && (numtarget(1300) || numtarget(1310)) && (p2bodydist x=[-25,36]) && (p2dist y=[-50,-25]) && enemynear,movetype=H && random<600*(AIlevel**2/64.0)
trigger2= ctrl && numtarget(3180)
trigger2= target(3180),movetype=H && target(3180),statetype=A && p2bodydist x<=35 && (p2dist y=[-65,-45]) && random<650*(AIlevel**2/64.0)
trigger3= ctrl && (prevstateno=265 || var(1)=1 && prevstateno=1010 || prevstateno=1200 || prevstateno=1210 || prevstateno=1250)
trigger3= enemynear,movetype=H && (p2bodydist x=[0,40]) && (p2dist y=[-75,-45]) && random<850*(AIlevel**2/64.0)

[State -1, ex shoryuuken aerial juggle]
type=changestate
value=1110
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(1)!=3 && power>=500
triggerall= (p2stateno!=[5100,5299]) && p2statetype!=L
trigger1= ctrl && (prevstateno=265 || var(1)=1 && prevstateno=1010 || prevstateno=1100)
trigger1= (var(1)=2 && prevstateno=1200 || prevstateno=1210 || prevstateno=1250)
trigger1= enemynear,movetype=H && (p2bodydist x=[0,40]) && (p2dist y=[-75,-45]) && random<500*(AIlevel**2/64.0)
trigger2= ctrl && numtarget(3180)
trigger2= target(3180),movetype=H && target(3180),statetype=A && p2bodydist x<=35 && (p2dist y=[-65,-45]) && random<550*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && numtarget(1310)
trigger3= target(1310),movetype=H && target(1310),statetype=A && (p2bodydist x=[-25,36]) && (p2dist y=[-50,-25]) && random<500*(AIlevel**2/64.0)

[State -1, ex tatsumaki senpuu kyaku aerial juggle]
type=changestate
value=1210
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(1)!=3 && power>=500
triggerall= (p2stateno!=[5100,5299]) && p2statetype!=L
triggerall= (p2bodydist x=[-35,35]) && (p2dist y=[-72,-48])
triggerall= ctrl && random<750*(AIlevel**2/64.0)
trigger1= numtarget(265)
trigger1= target(265),movetype=H && target(265),statetype=A
trigger2= numtarget(1015)
trigger2= target(1015),movetype=H && target(1015),statetype=A
trigger3= numtarget(1200)
trigger3= target(1200),movetype=H && target(1200),statetype=A
trigger4= numtarget(1250)
trigger4= target(1250),movetype=H && target(1250),statetype=A

[State -1, denjin hadouken aerial juggle]
type=changestate
value=3020
trigger1= AIlevel && numenemy
trigger1= var(1)!=2 && roundstate=2 && statetype!=A
trigger1= power>=1000 && var(20)<=60 && prevstateno!=3020
trigger1= !(enemynear,ctrl) && (p2stateno!=[5100,5299]) && p2statetype!=L
trigger1= !numhelper(3005) && !numhelper(3025) && !numhelper(3033) && !numhelper(3045) && !numhelper(3055)
trigger1= ctrl && numtarget(1100)
trigger1= target(1100),movetype=H && target(1100),statetype=A && (p2bodydist x=[40,60]) && (p2dist y=[-160,-80]) && (random<750 || life<333 || p2life<333)*(AIlevel**2/64.0)

[State -1, shinkuu hadouken aerial juggle]
type=changestate
value=3000
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && var(20)<=60 && prevstateno!=3000
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3033) && !numhelper(3045) && !numhelper(3055)
triggerall= !(enemynear,ctrl) && (p2stateno!=[5100,5299]) && p2statetype!=L
triggerall= (p2bodydist x=[40,100]) && (p2dist y=[-120,-40])
triggerall= ctrl && (random<900 || life<333 || p2life<333)*(AIlevel**2/64.0)
trigger1= numtarget(265)
trigger1= target(265),movetype=H && target(265),statetype=A
trigger2= numtarget(1100)
trigger2= target(1100),movetype=H && target(1100),statetype=A
trigger3= var(1)!=1 && numtarget(1200)
trigger3= target(1200),movetype=H && target(1200),statetype=A
trigger4= numtarget(1250)
trigger4= target(1250),movetype=H && target(1250),statetype=A

[State -1, nidan shoryuu tsuki aerial juggle]
type=changestate
value=3100
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A
triggerall= power>=1000 && var(20)<=60 && prevstateno!=3100
triggerall= !(enemynear,ctrl) && (p2stateno!=[5100,5299]) && p2statetype!=L
triggerall= ((p2bodydist x-enemynear,vel x*10)=[20,110]) || p2bodydist x<=90 && enemynear,backedgebodydist<=20
triggerall= ((p2dist y+enemynear,vel y*10)=[-70,-30])
triggerall= ctrl && (random<750 || life<333 || p2life<333)*(AIlevel**2/64.0)
trigger1= var(1)=3 && numtarget(265)
trigger1= target(265),movetype=H && target(265),statetype=A
trigger2= numtarget(1250)
trigger2= target(1250),movetype=H && target(1250),statetype=A
trigger3= numtarget(3180)
trigger3= target(3180),movetype=H && target(3180),statetype=A

[State -1, messatsu gou shoryuu aerial juggle]
type=changestate
value=3140
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A
triggerall= power>=1000 && var(20)<=60 && prevstateno!=3140
triggerall= !(enemynear,ctrl) && (p2stateno!=[5100,5299]) && p2statetype!=L
triggerall= (p2bodydist x=[0,35]) && (p2dist y=[-80,-50])
triggerall= ctrl && (random<800 || life<333 || p2life<333)*(AIlevel**2/64.0)
trigger1= numtarget(265)
trigger1= target(265),movetype=H && target(265),statetype=A
trigger2= numtarget(1200)
trigger2= target(1200),movetype=H && target(1200),statetype=A
trigger3= numtarget(1250)
trigger3= target(1250),movetype=H && target(1250),statetype=A

[State -1, shin shoryuken aerial juggle]
type=changestate
value=3120
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A
triggerall= power>=3000 && !var(20) && prevstateno!=3120
triggerall= !(enemynear,ctrl) && (p2stateno!=[5100,5299]) && p2statetype!=L
triggerall= (p2bodydist x=[-30,30]) && (p2dist y=[-70,-40])
triggerall= (ctrl||(stateno=[100,101])) && (random<700 || life<333 || p2life<333)*(AIlevel**2/64.0)
trigger1= numtarget(265)
trigger1= target(265),movetype=H && target(265),statetype=A
trigger2= numtarget(1250)
trigger2= target(1250),movetype=H && target(1250),statetype=A
trigger3= numtarget(1300)
trigger3= target(1300),movetype=H && target(1300),statetype=A

;==========================<A.I. Parries>=============================

[State -1, Standing Parry]
type=hitoverride
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl && statetype=S && random<(500+250*(var(18)=1))*(AIlevel**2/64.0)
trigger1= var(21):=1
trigger2= ctrl && (enemynear,numproj || enemynear,numhelper) && random<(450+200*(var(26)=1)*(p2stateno>=1000))*(AIlevel**2/64.0)
trigger2= var(21):=1
trigger3= (stateno=[700,701]) && random<750*(AIlevel**2/64.0)
trigger3= var(21):=1
attr=SA,AA,AP
stateno=700
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl && statetype=C && random<(500+250*(var(18)=1))*(AIlevel**2/64.0)
trigger1= var(21):=2
trigger2= (stateno=[700,701]) && random<750*(AIlevel**2/64.0)
trigger2= var(21):=2
attr=C,AA,AP
stateno=701
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= ctrl && statetype=A && random<(500+250*(var(18)=1))*(AIlevel**2/64.0)
trigger1= var(21):=3
trigger2= ctrl && (enemynear,numproj || enemynear,numhelper) && random<(450+200*(var(26)=1)*(p2stateno>=1000))*(AIlevel**2/64.0)
trigger2= var(21):=3
trigger3= stateno=702 && random<750*(AIlevel**2/64.0)
trigger3= var(21):=3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[700,702]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= !AIlevel && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0

;==========================<A.I. Movement>=============================

[State -1, Guard]
type=changestate
value=120
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= (ctrl||(stateno=[100,101])) && (stateno!=[120,155])
trigger1= !var(28) && !var(20)
trigger1= ifelse(statetype=A, (var(9)!=2 || stateno=5210), 1)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<=70)
trigger1= statetype!=A || enemynear,statetype=A
trigger1= enemynear,movetype=A && random<500*(AIlevel**2/64.0)

[State -1, run/dash]
type=changestate
value=102
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=S && ctrl
triggerall= (stateno!=[100,105]) && (prevstateno!=[100,105]) && (stateno!=[700,701]) && (prevstateno!=[700,701])
trigger1= !(numtarget(1300) || numtarget(1310)) && enemynear,movetype!=A && var(18)=0 && p2bodydist x>=200 && random<100*(AIlevel**2/64.0)
trigger2= AIlevel>=4 && enemynear,stateno=5300 && var(40)=1 && p2bodydist x>=30 && random<250*(AIlevel**2/64.0)
trigger3= AIlevel>=4 && !(numtarget(1300) || numtarget(1310)) && (numtarget(3020) || numtarget(3025) || p2stateno>=1110000) && p2bodydist x>=15 && enemynear,movetype=H && random<500*(AIlevel**2/64.0)
trigger4= (numtarget(1300) || numtarget(1310)) && p2bodydist x>=110 && enemynear,movetype=H && random<300*(AIlevel**2/64.0)

[State -1, back dash]
type=changestate
value=105
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=S && ctrl && var(40)=0
triggerall= (p2bodydist x=[-10,80]) && backedgebodydist>=80 && (stateno!=[100,106]) && (prevstateno!=[100,106])
triggerall= (stateno!=[700,701]) && !(numtarget(1300) || numtarget(1310)) && !(enemynear,stateno=5300) && !numtarget(3020) && !numtarget(3025) && !numtarget(3045) && (p2stateno!=[1110000,1115120])
trigger1= enemynear,movetype=A && (p2bodydist x=[40,80]) && !var(26) && random<(50+100*(var(18)=1))*(AIlevel**2/64.0)
trigger2= (p2statetype=L && p2stateno!=5120 || (p2stateno=[5200,5201])) && (p2bodydist x=[-10,25]) && random<150*(AIlevel**2/64.0)

[State -1, Jump]
type=changestate
value=40
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && ctrl
trigger1= (enemynear,movetype=A||var(18)=1) && p2bodydist x<=160 && enemynear,hitdefattr=SC,AT
trigger2= enemynear,movetype!=A && var(18)=0 && enemynear,statetype=A && p2bodydist x<=80 && !(enemynear,ctrl) && random<100*(AIlevel**2/64.0)
trigger3= enemynear,movetype=A && enemynear,statetype!=A && (p2bodydist x>=200 || (p2bodydist x=[80,160])) && !(enemynear,ctrl)
trigger3= (((p2stateno=[1000,1999]) && (enemynear,numhelper) && !numhelper(9741)) || (enemynear,numproj)) && var(18)=1 && random<100*(AIlevel**2/64.0)

[State -1, roll forward]
type=changestate
value=720
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemy,hitdefattr=SC,AT) && !var(28)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && (p2bodydist x=[80,120]) && !var(26) && random<100*(AIlevel**2/64.0)
trigger2= (ctrl||(stateno=[100,101])) && ((p2stateno>=1000 && enemynear,animtime<=-30) || (enemynear,numproj)) 
trigger2= p2bodydist x>=80 && inguarddist && random<(250+100*(var(18)=1))*(AIlevel**2/64.0)

[State -1, roll backward]
type=changestate
value=725
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= !(enemy,hitdefattr=SC,AT) && !var(28) && backedgebodydist>=60 && !var(26)
triggerall= (stateno!=[700,701]) && !(numtarget(1300) || numtarget(1310)) && !(enemynear,stateno=5300) && !numtarget(3020) && !numtarget(3025) && !numtarget(3045) && (p2stateno!=[1110000,1115120])
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && (p2bodydist x=[25,45]) && random<100*(AIlevel**2/64.0)
trigger2= (ctrl||(stateno=[100,101])) && p2statetype=L && (p2bodydist x=[25,45]) && random<100*(AIlevel**2/64.0)

[State -1, dodge]
type=changestate
value=710
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemy,hitdefattr=SC,AT) && !var(28)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && !var(26) && (p2bodydist x=[0,40]) && random<100*(AIlevel**2/64.0)
trigger2= (ctrl||(stateno=[100,101])) && enemynear,numproj && inguarddist && random<(150+100*(var(18)=1))*(AIlevel**2/64.0)

[State -1, ashura senkuu]
type=changestate
value=1400
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && statetype!=A && roundstate=2 && ctrl && var(40)=0
trigger1= enemynear,movetype=A && (p2bodydist x=[0,90]) && (enemynear,facing!=facing) && p2statetype!=C
trigger1= random<ifelse((enemy,hitdefattr=SC,AT),550,250)*(AIlevel**2/64.0)
trigger1= var(10):=2
trigger2= inguarddist && (enemynear,numproj || var(26)) && p2bodydist x>=120 && random<350*(AIlevel**2/64.0)
trigger2= var(10):=3
trigger3= enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3020 || enemynear,numhelper(3025))
trigger3= inguarddist && p2bodydist x>=140 && random<400*(AIlevel**2/64.0)
trigger3= var(10):=2

[State -1, zero counter]
type=changestate
value=750
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= power>=1000 && !var(20)
trigger1= (p2dist x=[0,60]) && (stateno=150 || stateno=152) && random<300*(AIlevel**2/64.0)

[State -1, power charge]
type=changestate
value=740
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl && !var(20) && var(40)=0
trigger1= enemynear,statetype!=A && enemynear,movetype!=H
trigger1= enemynear,movetype!=A && var(18)=0
trigger1= power<const(data.power) && power<powermax
trigger1= !enemynear,hitdefattr=SCA,AT
trigger1= !inguarddist && p2bodydist x>=160 && random<100*(AIlevel**2/64.0)
trigger1= !numhelper(1005) && !numhelper(1015) && !numhelper(1017)
trigger1= !numhelper(1025) && !numhelper(3005) && !numhelper(3033)

[State -1, Fall Recovery]
type=changestate
value=5210
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && canrecover
trigger1= vel y>=0 && pos y<=-20 && random<150*(AIlevel**2/64.0)

[State -1, Fall Recovery]
type=changestate
value=5200
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && gethitvar(fall.recover)
trigger1= vel y>=0 && pos y>=-20 && random<200*(AIlevel**2/64.0)

[State -1, taunt]
type=changestate
value=195
triggerall= AIlevel && numenemy
triggerall= statetype!=A && (prevstateno!=[195,197]) && var(40)=0
trigger1= ctrl && roundstate=2 && (enemynear,life)<=(enemynear,lifemax/2)
trigger1= p2bodydist x>=160 && !(enemynear,ctrl) && (enemynear,movetype=H)
trigger1= p2stateno=5050 && p2stateno!=5210 && random<150*(AIlevel**2/64.0)
trigger2= ctrl && roundstate=3 && winko && (p2stateno=5050 || p2statetype=L) && random<300*(AIlevel**2/64.0)

;==========================<A.I. Attacks>=============================

[State -1, SLP]
type=changestate
value=200
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && p2statetype!=C && !(enemynear,hitfall) && !inguarddist
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (p2bodydist x=[0,40]) && random<50*(AIlevel**2/64.0)
trigger2= (stateno=200 || stateno=230 || stateno=245) && time>=5 && movecontact && enemynear,statetype!=A && random<100*(AIlevel**2/64.0)

[State -1, SMP2]
type=changestate
value=207
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype!=A && var(40)=0
trigger1= (p2bodydist x=[0,25]) && (p2bodydist y=[-50,0]) && ((p2stateno!=[5200,5210]) && p2statetype!=L) && !(enemynear,hitfall)
trigger1= (p2stateno!=[120,155]) && enemynear,movetype!=A && var(18)=0
trigger1= (ctrl||(stateno=[100,101])) && p2statetype=C && random<100*(AIlevel**2/64.0)

[State -1, SMP]
type=changestate
value=205
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-20,50]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && p2statetype!=C && !(enemynear,hitfall) && !inguarddist
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (p2bodydist x=[0,45]) && random<100*(AIlevel**2/64.0)
trigger2= (stateno=200 || stateno=212 || (stateno=[230,235])) && !animtime && ctrl
trigger2= movecontact && enemynear,statetype!=A && random<250*(AIlevel**2/64.0)

[State -1, SHP2]
type=changestate
value=212
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-25,40]) && (p2bodydist y=[-50,50]) && !(enemynear,hitfall) && p2statetype!=L && enemynear,statetype!=A && !inguarddist
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && random<(175+50*(var(18)=1))*(AIlevel**2/64.0)
trigger2= ctrl && (stateno=[700,701]) && enemynear,movetype!=A && random<(75+75*(var(18)=2))*(AIlevel**2/64.0)

[State -1, SHP2 after denjin hadouken]
type=changestate
value=212
trigger1= AIlevel>=4 && numenemy
trigger1= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=1
trigger1= ctrl || (stateno=[100,101])
trigger1= enemynear,stateno=5300 || p2stateno=1115120 && enemynear,time>=9
trigger1= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && random<400*(AIlevel**2/64.0)

[State -1, SHP3]
type=changestate
value=213
trigger1= AIlevel && numenemy
trigger1= var(1)!=1 && roundstate=2 && statetype!=A && var(40)=0
trigger1= (p2bodydist x=[0,50]) && p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall)
trigger1= stateno=205 && movecontact && random<150*(AIlevel**2/64.0)

[State -1, seichuunidantsuki]
type=changestate
value=214
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[0,35]) && (p2bodydist y=[-50,50]) && p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && random<(75+125*(var(18)=1))*(AIlevel**2/64.0)
trigger2= ctrl && (stateno=[700,701]) && enemynear,movetype!=A && random<(100+100*(var(18)=2))*(AIlevel**2/64.0)
trigger3= (stateno=212 || stateno=230) && !animtime && ctrl && movecontact && random<250*(AIlevel**2/64.0)

[State -1, seichuunidantsuki after metsu or denjin hadouken]
type=changestate
value=214
trigger1= AIlevel>=4 && numenemy
trigger1= roundstate=2 && statetype!=A && var(40)=1
trigger1= ctrl || (stateno=[100,101])
trigger1= enemynear,stateno=5300 || p2stateno=1115120 && enemynear,time>=12
trigger1= (p2bodydist x=[0,35]) && (p2bodydist y=[-50,50]) && random<350*(AIlevel**2/64.0)

[State -1, SHP]
type=changestate
value=210
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-5,35]) && (p2dist y=[-86,50]) && p2statetype!=L && p2statetype!=C && !inguarddist && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && random<150*(AIlevel**2/64.0)
trigger2= (stateno=200 || stateno=230) && !animtime && ctrl
trigger2= movecontact && enemynear,statetype!=A && (p2bodydist x=[0,20]) && random<250*(AIlevel**2/64.0)

[State -1, SLK]
type=changestate
value=215
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl||(stateno=[100,101])) && random<50*(AIlevel**2/64.0)
trigger2= stateno=245 && !animtime && ctrl && movecontact && (p2bodydist x=[0,40]) && random<100*(AIlevel**2/64.0)

[State -1, SMK2]
type=changestate
value=222
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-20,50]) && (p2bodydist y=[-50,50]) && (p2stateno!=[1000,4999]) && !(enemynear,hitfall) && !inguarddist
triggerall= enemynear,statetype!=A && p2statetype!=L && p2statetype!=C && p2statetype=S && (p2stateno!=[120,155])
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && random<200*(AIlevel**2/64.0)
trigger2= ctrl && (stateno=[700,701]) && (p2bodydist x=[20,50]) && enemynear,movetype!=A && random<(250+50*(var(18)=2))*(AIlevel**2/64.0)

[State -1, SMK]
type=changestate
value=220
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype!=A && var(40)=0
trigger1= (p2bodydist x=[-20,22]) && (p2bodydist y=[-50,50])
trigger1= p2statetype!=L && p2statetype!=C && !(enemynear,hitfall) && !inguarddist
trigger1= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && random<100*(AIlevel**2/64.0)

[State -1, SHK]
type=changestate
value=225
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-20,35]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && p2statetype!=C && !(enemynear,hitfall) && !inguarddist
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && random<150*(AIlevel**2/64.0)
trigger2= stateno=200 && !animtime && ctrl && movecontact && enemynear,statetype!=A && (p2bodydist x=[0,20]) && random<250*(AIlevel**2/64.0)

[State -1, CLP]
type=changestate
value=230
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl||(stateno=[100,101])) && random<50*(AIlevel**2/64.0)
trigger2= stateno=245 && time>=5 && movecontact && random<100*(AIlevel**2/64.0)
trigger3= stateno=235 && !animtime && ctrl && movecontact && random<250*(AIlevel**2/64.0)
trigger4= stateno=1500 && movehit && animtime=0 && enemynear,movetype=H && random<300*(AIlevel**2/64.0)

[State -1, CMP]
type=changestate
value=235
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-25,45]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl||(stateno=[100,101])) && random<100*(AIlevel**2/64.0)
trigger2= (stateno=200 || stateno=212 || (stateno=[230,235]) || stateno=245) && !animtime && ctrl
trigger2= movecontact && random<250*(AIlevel**2/64.0)
trigger3= stateno=1500 && movehit && animtime=0 && enemynear,movetype=H && random<300*(AIlevel**2/64.0)

[State -1, CHP]
type=changestate
value=240
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-10,30]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall) && !inguarddist
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && random<(ifelse(enemynear,statetype=A,150,25))*(AIlevel**2/64.0)
trigger2= (stateno=200 || stateno=212) && !animtime && ctrl && movecontact && enemynear,statetype!=A && random<250*(AIlevel**2/64.0)

[State -1, CLK]
type=changestate
value=245
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-10,50]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl||(stateno=[100,101])) && random<50*(AIlevel**2/64.0)
trigger2= (stateno=230 || stateno=245) && time>=5 && movecontact && random<100*(AIlevel**2/64.0)
trigger3= stateno=235 && !animtime && ctrl && movecontact && random<250*(AIlevel**2/64.0)
trigger4= stateno=1500 && movehit && animtime=0 && enemynear,movetype=H && random<300*(AIlevel**2/64.0)

[State -1, CMK]
type=changestate
value=250
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[0,55]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall)
trigger1= (ctrl||(stateno=[100,101])) && (p2bodydist x=[0,50]) && random<100*(AIlevel**2/64.0)
trigger2= ctrl && stateno=701 && (p2bodydist x=[20,45]) && enemynear,movetype!=A && random<(150+100*(var(18)=2))*(AIlevel**2/64.0)
trigger3= (stateno=200 || stateno=212 || (stateno=[230,235]) || stateno=245) && !animtime && ctrl
trigger3= movecontact && random<250*(AIlevel**2/64.0)
trigger4= (ctrl||(stateno=[100,101])) && (p2bodydist x=[20,45]) && (enemynear,movetype=A || (p2stateno=[1000,1030])) && inguarddist && random<(200+100*(var(18)=1)*(var(26)=1))*(AIlevel**2/64.0)

[State -1, CHK]
type=changestate
value=255
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-10,55]) && (p2bodydist y=[-50,50])
triggerall= p2statetype!=L && enemynear,statetype!=A && !(enemynear,hitfall)
trigger1= (ctrl||(stateno=[100,101])) && random<150*(AIlevel**2/64.0)
trigger2= ctrl && stateno=701 && (p2bodydist x=[15,45]) && enemynear,movetype!=A && random<(150+150*(var(18)=2))*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && (p2bodydist x=[20,45]) && enemynear,movetype=A && inguarddist && random<(150+100*(var(18)=1)*(var(26)=1))*(AIlevel**2/64.0)

[State -1, ALP]
type=changestate
value=260
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype=A && var(40)=0
trigger1= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<50*(AIlevel**2/64.0)

[State -1, AMP]
type=changestate
value=265
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype=A && var(40)=0
trigger1= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,10]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<(400+100*(stateno=702 || prevstateno=702))*(AIlevel**2/64.0)

[State -1, AHP]
type=changestate
value=270
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=A && var(40)=0
triggerall= (p2bodydist x=[-20,65]) && (p2dist y=[-50,80])
triggerall= ((p2stateno!=[5200,5210]) && p2statetype!=L) && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype!=A && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= (p2bodydist x=[10,65]) && (p2dist y=[-60,70]) && random<(300+100*(var(18)=2||var(26))+150*(enemynear,movetype=A))*(AIlevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && (p2bodydist x=[-20,60]) && random<300*(AIlevel**2/64.0)

[State -1, ALK]
type=changestate
value=275
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype=A && var(40)=0
trigger1= (p2bodydist x=[0,60]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<50*(AIlevel**2/64.0)

[State -1, AMK]
type=changestate
value=280
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=A && var(40)=0
triggerall= (p2bodydist x=[-15,50]) && (p2bodydist y=[-50,80])
triggerall= ((p2stateno!=[5200,5210]) && p2statetype!=L) && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype!=A && sysvar(1)=1 && vel y>=-2
trigger1= (p2bodydist x=[10,50]) && (p2dist y=[-60,70]) && random<=(200+150*(var(18)=2||var(26))+100*(p2stateno>=1000))*(AIlevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && (p2bodydist x=[-15,40]) && random<200*(AIlevel**2/64.0)

[State -1, AHK]
type=changestate
value=285
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=A && var(40)=0
triggerall= (p2bodydist x=[-20,60]) && (p2bodydist y=[-50,80])
triggerall= ((p2stateno!=[5200,5210]) && p2statetype!=L) && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype!=A && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= (p2bodydist x=[10,60]) && (p2dist y=[-60,70]) && random<=(250+200*(var(18)=2||var(26))+100*(p2stateno>=1000))*(AIlevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && (p2bodydist x=[-20,50]) && random<250*(AIlevel**2/64.0)

[State -1, TKK]
type=changestate
value=282
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype=A && var(40)=0
triggerall= vel x>=0 && (vel y=[-2,2]) && (p2bodydist x=[40,80]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype!=A && random<250*(AIlevel**2/64.0)
trigger2= ctrl && stateno=702 && enemynear,movetype!=A && enemynear,statetype!=A && random<(250+250*(var(18)=2))*(AIlevel**2/64.0)

[State -1, throw]
type=changestate
value=800
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl && var(40)=0
triggerall= enemynear,statetype!=A && p2statetype!=L && enemynear,movetype!=H
trigger1= (p2bodydist x=[0,22]) && (p2bodydist y=[-25,25]) && random<250*(AIlevel**2/64.0)
trigger2= (p2stateno=[120,140]) && (p2bodydist x=[0,24]) && (p2bodydist y=[-25,25]) && random<500*(AIlevel**2/64.0)

[State -1, shoryuuken]
type=changestate
value=1100
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2bodydist x=[-20,40]) && (p2dist y=[-100,0]) && (p2stateno!=[120,155]) && (p2stateno!=[5100,5299])
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,285]) || enemynear,statetype=A)
trigger1= (p2dist y=[-55,0]) && !(enemynear,hitfall) && random<(333+333*(var(18)=1))*(AIlevel**2/64.0)
trigger2= (stateno=200 || var(1)!=2 && stateno=205 || stateno=215 || stateno=220 && anim=221 || (stateno=[230,235]) || (stateno=[245,250]))
trigger2= movehit && p2bodydist x<=15 && random<100*(AIlevel**2/64.0)
trigger3= (stateno=210 && anim=211 || stateno=240) && enemynear,statetype=A && prevstateno!=710 && movehit && (p2bodydist x=[-10,10]) && random<500*(AIlevel**2/64.0)

[State -1, ex shoryuuken]
type=changestate
value=1110
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= var(1)!=3 && power>=500
triggerall= (p2stateno!=[120,155]) && (p2bodydist x=[-20,40]) && (p2dist y=[-100,0]) && (p2stateno!=[5100,5299])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || var(1)!=2 && stateno=205 || stateno=215 || stateno=220 && anim=221 || (stateno=[230,235]) || (stateno=[245,250]))
trigger1= movehit && p2bodydist x<=15 && random<150*(AIlevel**2/64.0)
trigger2= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,285])) && (p2dist y=[-60,0]) && random<(200+50*(var(18)=1))*(AIlevel**2/64.0)
trigger3= (stateno=210 && anim=211 || stateno=240) && enemynear,statetype=A && prevstateno!=710 && movehit && random<500*(AIlevel**2/64.0)

[State -1, joudansokutougeri]
type=changestate
value=1300
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && p2statetype!=C && enemynear,statetype!=A
triggerall= (p2bodydist x=[0,75]) && (p2bodydist y=[-180,60]) && !var(26) && (p2stateno!=[1000,4999])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && (p2bodydist x=[65,75]) && random<(200+150*(var(18)=1))*(AIlevel**2/64.0)
trigger2= (stateno=210 && anim=211 || stateno=240 || stateno=250) && p2bodydist x<=38
trigger2= movehit && enemynear,movetype=H && random<150*(AIlevel**2/64.0)
trigger3= stateno=214 && animelemtime(3)>=0 && movehit && enemynear,movetype=H && random<150*(AIlevel**2/64.0)

[State -1, ex joudansokutougeri]
type=changestate
value=1310
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= var(1)=1 && power>=500
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && p2statetype!=C && enemynear,statetype!=A
triggerall= (p2bodydist x=[0,90]) && (p2bodydist y=[-180,60]) && !var(26) && (p2stateno!=[1000,4999])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && (p2bodydist x=[80,90]) && random<(100+150*(var(18)=1))*(AIlevel**2/64.0)
trigger2= (stateno=210 && anim=211 || stateno=240 || stateno=250) && p2bodydist x<=46
trigger2= movehit && enemynear,movetype=H && random<150*(AIlevel**2/64.0)
trigger3= stateno=214 && animelemtime(3)>=0 && movehit && enemynear,movetype=H && random<200*(AIlevel**2/64.0)

[State -1, ryusokyaku]
type=changestate
value=1500
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && !(enemynear,hitfall) && enemynear,statetype!=A
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-180,60]) && !var(26) && (p2stateno!=[1000,4999])
triggerall= !var(6)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && p2statetype=C && (p2bodydist x=[60,70]) && random<(200+150*(var(18)=1))*(AIlevel**2/64.0)
trigger2= (stateno=205 || stateno=210 && anim=211 || stateno=235 || stateno=240 || stateno=250) && p2bodydist x<=35
trigger2= movehit && enemynear,movetype=H && random<150*(AIlevel**2/64.0)

[State -1, ex ryusokyaku]
type=changestate
value=1510
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= var(1)=2 && power>=500
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && !(enemynear,hitfall) && enemynear,statetype!=A
triggerall= (p2bodydist x=[0,90]) && (p2bodydist y=[-180,60]) && !var(26) && (p2stateno!=[1000,4999])
triggerall= !var(6)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && p2statetype=C && (p2bodydist x=[70,90]) && random<(100+100*(var(18)=1))*(AIlevel**2/64.0)
trigger2= (stateno=205 || stateno=210 && anim=211 || stateno=235 || stateno=240 || stateno=250) && p2bodydist x<=40
trigger2= movehit && enemynear,movetype=H && random<100*(AIlevel**2/64.0)

[State -1, classic kuchuu tatsumaki senpuu kyaku]
type=changestate
value=1270
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype=A && var(9)!=2 && var(40)=0
trigger1= (p2bodydist x=[0,40]) && (p2dist y=[-60,60]) && p2statetype!=L 
trigger1= !(enemynear,ctrl) && (p2stateno!=[120,155]) && enemynear,statetype=A
trigger1= ctrl && enemynear,movetype=A && random<(100+50*(var(18)=1))*(AIlevel**2/64.0)

[State -1, classic kuchuu tatsumaki combo]
type=changestate
value=1270
trigger1= AIlevel && numenemy
trigger1= var(1)!=1 && roundstate=2 && statetype=A && var(9)!=2 && var(40)=0
trigger1= (p2stateno!=[120,155]) && p2statetype!=C
trigger1= stateno=222 && movehit && enemynear,movetype=H && random<350*(AIlevel**2/64.0)

[State -1, ex kuchuu tatsumaki senpuu kyaku]
type=changestate
value=1260
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype=A && var(9)!=2 && var(40)=0
trigger1= var(1)!=3 && power>=500
trigger1= (p2bodydist x=[0,40]) && (p2dist y=[-60,60]) && p2statetype!=L 
trigger1= !(enemynear,ctrl) && (p2stateno!=[120,155]) && enemynear,statetype=A
trigger1= ctrl && enemynear,movetype=A && random<(100+120*(var(18)=1))*(AIlevel**2/64.0)

[State -1, kuchuu tatsumaki senpuu kyaku]
type=changestate
value=1250
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype=A && var(9)!=2 && var(40)=0
trigger1= (p2bodydist x=[0,40]) && (p2dist y=[-60,60]) && p2statetype!=L && enemynear,statetype=A
trigger1= ctrl && enemynear,movetype=A && random<(150+100*(var(18)=1))*(AIlevel**2/64.0)

[State -1, tatsumaki senpuu kyaku]
type=changestate
value=1200
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && p2statetype!=C && (p2stateno!=[3020,3040])
triggerall= (p2bodydist x=[-30,120]) && (p2dist y=[-120,0]) && enemynear,vel y>=-1 && enemynear,vel x>=-2
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || p2stateno>=1000) && (p2dist y=[-60,0]) && inguarddist && random<(340+160*(var(18)=1)*(var(26)=1))*(AIlevel**2/64.0)
trigger2= stateno=200 || var(1)!=2 && stateno=205 || stateno=210 && anim=211 || (stateno=[230,250])
trigger2= enemynear,statetype!=A && movehit && (p2bodydist x=[0,50]) && random<150*(AIlevel**2/64.0)

[State -1, ex tatsumaki senpuu kyaku]
type=changestate
value=1210
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= var(1)!=3 && power>=500
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && p2statetype!=C && (p2stateno!=[5100,5299])
triggerall= (p2dist x=[-55,95]) && (p2dist y=[-120,0]) && enemynear,vel y>=-1 && enemynear,vel x>=-3
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && (p2bodydist x=[-35,35]) && (p2dist y=[-80,0]) && random<(175+175*(var(18)=1)*(var(26)=0))*(AIlevel**2/64.0)
trigger2= stateno=200 || var(1)!=2 && stateno=205 || stateno=210 && anim=211 || (stateno=[230,250])
trigger2= (p2bodydist x=[0,16]) && enemynear,statetype!=A && movehit && random<150*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && numtarget(1310)
trigger3= target(1310),movetype=H && target(1310),statetype=A && (p2bodydist x=[-50,60]) && (p2dist y=[-72,-48]) && random<750*(AIlevel**2/64.0)
trigger4= ctrl && var(1)=2 && prevstateno=1210
trigger4= enemynear,backedgedist<=1 || enemynear,frontedgedist<=1
trigger4= enemynear,movetype=H && (p2bodydist x=[-35,35]) && enemynear,vel y>=-1 && random<550*(AIlevel**2/64.0)

[State -1, ex kuchuutatsumaki combo]
type=changestate
value=1210
trigger1= AIlevel && numenemy
trigger1= roundstate=2 && statetype=A && var(40)=0
trigger1= var(1)=2 && power>=500
trigger1= (p2stateno!=[120,155]) && p2statetype!=C
trigger1= !var(6)
trigger1= stateno=222 && movehit && enemynear,movetype=H && random<400*(AIlevel**2/64.0)

[State -1, shakunetsu hadouken]
type=changestate
value=1020
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && var(40)=0
triggerall= prevstateno!=5120 && (stateno!=[700,701]) && (prevstateno!=[700,701]) && (p2stateno!=[1110000,1115120]) && !(enemynear,stateno=5300) && !(enemynear,hitfall) && p2statetype!=L
triggerall= p2bodydist x>=10 && p2dist y>=-25 && prevstateno!=3020 && !numtarget(3020) && !numtarget(3025) && !inguarddist
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !var(6)
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3020 || enemynear,numhelper(3025)))
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055)))
triggerall= !(enemynear,name="Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= !(enemynear,name="Pocket Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && p2bodydist x>=160 && enemynear,statetype=S && random<100*(AIlevel**2/64.0)
trigger2= stateno=210 && anim=211 || stateno=240
trigger2= movecontact && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && ((p2stateno=[1000,1020]) && p2stateno!=1010 && p2stateno!=1030) && p2bodydist x>=160 && enemynear,statetype!=A &&  random<200*(AIlevel**2/64.0)
trigger4= (ctrl||(stateno=[100,101])) && (p2stateno=[5200,5210]) && p2dist y<=-120 && p2bodydist x>=90 && random<300*(AIlevel**2/64.0)
trigger5= stateno=214 && animelemtime(3)>=0 && movecontact && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)

[State -1, ex shakunetsu hadouken]
type=changestate
value=1030
triggerall= AIlevel && numenemy
triggerall= var(1)=2 && roundstate=2 && statetype!=A && var(40)=0
triggerall= prevstateno!=5120 && (stateno!=[700,701]) && (prevstateno!=[700,701]) && !(enemynear,hitfall) && p2statetype!=L
triggerall= p2bodydist x>=10 && p2dist y>=-25 && !inguarddist
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !var(6)
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3020 || enemynear,numhelper(3025)))
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055)))
triggerall= !(enemynear,name="Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= !(enemynear,name="Pocket Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= stateno=210 && anim=211 || stateno=240 || stateno=250
trigger1= movehit && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)
trigger2= stateno=214 && animelemtime(3)>=0 && movehit && enemynear,statetype!=A && random<100*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[1000,1030])) && p2bodydist x>=180 && enemynear,statetype!=A && random<250*(AIlevel**2/64.0)

[State -1, hadouken]
type=changestate
value=1000
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= prevstateno!=5120 && (stateno!=[700,701]) && (p2stateno!=[1110000,1115120]) && (prevstateno!=[700,701])
triggerall= prevstateno!=3020 && !(enemynear,stateno=5300) && !numtarget(3020) && !numtarget(3025) && !inguarddist
triggerall= p2bodydist x>=10 && p2dist y>=-25
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !var(6)
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3020 || enemynear,numhelper(3025)))
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055)))
triggerall= !(enemynear,name="Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= !(enemynear,name="Pocket Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && p2bodydist x>=120 && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)
trigger2= (stateno=205 || stateno=210 && anim=211 || stateno=235 || stateno=240 || stateno=250)
trigger2= movecontact && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)
trigger3= stateno=214 && animelemtime(3)>=0 && movecontact && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)
trigger4= stateno=255 && p2bodydist x<=50 && moveguarded && random<100*(AIlevel**2/64.0)
trigger5= (ctrl||(stateno=[100,101])) && ((p2stateno=[1000,1020]) && p2stateno!=1010 && p2stateno!=1030) && p2bodydist x>=160 && enemynear,statetype!=A &&  random<250*(AIlevel**2/64.0)
trigger6= (ctrl||(stateno=[100,101])) && (p2stateno=[5200,5210]) && p2dist y<=-120 && p2bodydist x>=90 && random<350*(AIlevel**2/64.0)

[State -1, ex hadouken]
type=changestate
value=1010
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= var(1)!=3 && power>=500
triggerall= (prevstateno!=5120 || p2statetype!=L) && (stateno!=[700,701]) && (prevstateno!=[700,701]) && (!(enemynear,hitfall) || numtarget(1250)) && !inguarddist
triggerall= (p2stateno!=[120,155]) && p2bodydist x>=10 && p2dist y>=-25
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !var(6)
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3020 || enemynear,numhelper(3025)))
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055)))
triggerall= !(enemynear,name="Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= !(enemynear,name="Pocket Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= stateno=205 || stateno=210 && anim=211 || (stateno=[230,250])
trigger1= movehit && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)
trigger2= stateno=214 && animelemtime(3)>=0 && movehit && enemynear,statetype!=A && random<150*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[1000,1030])) && p2bodydist x>=140 && enemynear,statetype!=A && random<300*(AIlevel**2/64.0)
trigger4= ctrl && numtarget(1250)
trigger4= target(1250),movetype=H && target(1250),statetype=A && (p2bodydist x=[10,40]) && (p2dist y=[-50,-36]) && random<500*(AIlevel**2/64.0)

[State -1, hado no kamae]
type=changestate
value=198
trigger1= AIlevel && numenemy
trigger1= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=0
trigger1= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(1017) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1= (prevstateno!=5120||p2statetype!=L) && !var(26) && !(enemynear,hitfall) && !inguarddist
trigger1= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && enemynear,movetype=A && (p2stateno!=[1000,4999]) && p2bodydist x>=160 && random<100*(AIlevel**2/64.0)

[State -1, shin shoryuken]
type=changestate
value=3120
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=3000 && !var(20) && prevstateno!=3120
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L && (p2stateno!=[5100,5299])
triggerall= (p2bodydist x=[-20,30]) && (p2dist y=[-140,0]) && enemynear,vel y>=-2 && enemynear,vel x>=-2
triggerall= movetype=A || (!(enemynear,hitfall) || numtarget(1200) || numtarget(1250))
triggerall= !var(6)
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,285]) || enemynear,statetype=A)
trigger1= (p2dist y=[-80,0]) && random<(550+450*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= stateno=1100 && movehit && (p2bodydist x=[-20,28]) && random<(125+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= stateno=1300 && movehit && enemynear,movetype=H && (p2bodydist x=[-10,30])
trigger3= enemynear,backedgedist<=1 || enemynear,frontedgedist<=1
trigger3= random<(200+260*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= (stateno=210 && anim=211 || stateno=240) && enemynear,statetype=A && (p2bodydist x=[0,10])
trigger4= prevstateno!=710 && enemynear,movetype=H && random<(450+550*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= stateno=250 && enemynear,movetype=H && (p2bodydist x=[0,15]) && p2statetype!=C && enemynear,statetype!=A && random<(400+500*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger6= ctrl && (numtarget(1200) || numtarget(1250))
trigger6= enemynear,backedgedist<=1 || enemynear,frontedgedist<=1
trigger6= enemynear,movetype=H && p2bodydist x<=25 && p2dist y>=-36 && random<(300+350*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, shun goku satsu]
type=changestate
value=4000
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=3000 && !var(20) && prevstateno!=4000
triggerall= (p2bodydist x=[0,50]) && p2stateno!=40 && !var(26) && !(enemynear,hitfall)
triggerall= !(enemynear,ctrl) && p2statetype!=L && (p2stateno!=[5030,5119]) && enemynear,statetype!=A
triggerall= ifelse((enemynear,vel y>=0),(enemynear,vel x<=0),(enemynear,vel y>=0))
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,255])) && random<(500+500*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= (ctrl||(stateno=[100,101])) && (p2stateno=[5200,5201]) && (p2bodydist x=[25,50]) && random<(300+300*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && (enemynear,stateno=52 || (p2stateno=[100,102])) && (p2bodydist x=[0,40]) && random<(400+400*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, jinraishou]
type=changestate
value=3180
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=2000 && !var(20) && prevstateno!=3180
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=C && p2statetype!=L
triggerall= (p2stateno!=[5100,5299]) && enemynear,statetype!=A && !(enemynear,hitfall) && !inguarddist
triggerall= (p2bodydist x=[0,35]) && (p2dist y=[-120,0]) && enemynear,vel y>=-2 && enemynear,vel x>=-2
triggerall= !var(6)
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,225]))
trigger1= p2bodydist x<=30 && random<(320+180*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= ((stateno=[200,205]) || stateno=210 && anim=211 || stateno=215 || (stateno=[230,250])) && movehit
trigger2= (p2bodydist x=[0,25]) && random<(125+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= stateno=1000 && numhelper(1005)
trigger3= helper(1005),var(3) && (enemynear,backedgedist<=1 || enemynear,frontedgedist<=1)
trigger3= p2bodydist x<=35 && enemynear,statetype!=A && random<(100+50*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, metsu shoryuken]
type=changestate
value=3160
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=2000 && !var(20) && prevstateno!=3160
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L && (p2stateno!=[5100,5299])
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-100,0]) && (enemynear,vel y=[-7,1]) && enemynear,vel x>=-4
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && p2stateno>=1000
trigger1= enemynear,statetype!=A && inguarddist && random<(150+100*(var(18)=1)*(var(26)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,255]))
trigger2= (p2bodydist x=[0,50]) && enemynear,statetype!=A && random<(360+140*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= (stateno=210 && anim=211 || stateno=240 || stateno=250) && movehit && enemynear,movetype=H && enemynear,statetype!=A
trigger3= (p2bodydist x=[0,40]) && random<(130+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= stateno=214 && animelemtime(3)>=0 && movehit && enemynear,movetype=H && enemynear,statetype!=A
trigger4= (p2bodydist x=[0,45]) && random<(135+155*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= stateno=1300 && movehit && !var(43) && random<(300+350*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger6= stateno=1000 && numhelper(1005)
trigger6= helper(1005),var(3) && (p2bodydist x=[10,45]) && enemynear,statetype!=A && random<(355+385*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, metsu hadouken]
type=changestate
value=3040
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=3000 && !var(20) && prevstateno!=3040 && !(enemynear,ctrl)
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3033) && !numhelper(3045) && !numhelper(3055)
triggerall= (stateno!=[700,701]) && (prevstateno!=[700,701])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (p2statetype=L && p2stateno!=5120) && p2bodydist x>=160 && enemynear,vel y>=-2 && random<(450+475*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= stateno=1000 && (animelemtime(6)>=0 && animelemtime(8)<0)
trigger2= p2bodydist x>=180 && enemynear,statetype!=A && p2statetype=L && random<(380+430*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= stateno=1000 && numhelper(1005)
trigger3= helper(1005),var(3) && (p2bodydist x=[30,60]) && enemynear,statetype!=A && random<(50+100*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, messatsu gou shoryuu]
type=changestate
value=3140
triggerall= AIlevel && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=1000 && var(20)<=60 && prevstateno!=3140
triggerall= (p2bodydist x=[-20,40]) && (p2dist y=[-60,0]) && (p2stateno!=[5100,5299])
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,285]) || enemynear,statetype=A)
trigger1= (p2dist y=[-50,0]) && !(enemynear,hitfall) && random<(400+100*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= (stateno=200 || var(1)!=2 && stateno=205 || stateno=210 && anim=211 || stateno=215 || stateno=220 && anim=221 || (stateno=[230,250])) && movehit && (p2bodydist x=[5,35]) && enemynear,statetype!=A && random<(120+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= prevstateno!=750 && stateno=1100 && movehit && !var(43) && random<(300+325*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= prevstateno!=750 && stateno=255 && enemynear,movetype=H && p2bodydist x<=35 && random<(500+525*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= stateno=1000 && numhelper(1005)
trigger5= helper(1005),var(3) && (enemynear,backedgedist<=1 || enemynear,frontedgedist<=1)
trigger5= (p2bodydist x=[0,35]) && enemynear,statetype!=A && random<(100+100*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, nidan shoryuu tsuki]
type=changestate
value=3100
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=1000 && var(20)<=60 && prevstateno!=3100
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L && (p2stateno!=[5100,5299])
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-100,0]) && enemynear,vel y<=8
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && p2stateno>=1000
trigger1= enemynear,statetype!=A && inguarddist && random<(250+250*(var(18)=1)*(var(26)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,255]))
trigger2= (p2bodydist x=[0,50]) && enemynear,statetype!=A && random<(420+460*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= (stateno=210 && anim=211 || stateno=240 || stateno=250) && movehit && enemynear,statetype!=A
trigger3= (p2bodydist x=[0,40]) && random<(100+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= stateno=214 && animelemtime(3)>=0 && movehit && enemynear,movetype=H && enemynear,statetype!=A
trigger4= (p2bodydist x=[0,45]) && random<(120+160*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= stateno=1300 && movehit && p2bodydist x<=50 && !var(43) && random<(325+375*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger6= stateno=1000 && numhelper(1005)
trigger6= helper(1005),var(3) && (p2bodydist x=[10,45]) && enemynear,statetype!=A && random<(345+385*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, shinkuu tatsumaki senpuu kyaku]
type=changestate
value=3200
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=2000 && var(20)<=60 && prevstateno!=3200
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2stateno!=[5100,5299]) && p2statetype!=L
triggerall= (p2bodydist x=[-40,70]) && (p2dist y=[-160,0]) && enemynear,vel x>=-2
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,285])) && (p2bodydist x=[-30,30]) && (p2dist y=[-80,0]) && random<(140+360*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= ((stateno=[1100,1110])||stateno=1300) && movehit && enemynear,movetype=H
trigger2= enemynear,backedgedist<=1 || enemynear,frontedgedist<=1
trigger2= p2bodydist x<=40 && !var(43) && random<(340+370*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && (numtarget(1300) || numtarget(1310)) && (p2bodydist x=[-20,70]) && p2dist y<=40 && random<(200+250*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= stateno=3100 && movehit && anim=3101 && hitcount=2 && !var(33) && !var(43) && random<(100+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= stateno=3140 && movehit && anim=3140 && hitcount=7 && !var(43) && random<(100+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger6= stateno=3000 && numhelper(3005)
trigger6= helper(3005),var(3) && (p2bodydist x=[-40,40]) && random<(300+350*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger7= prevstateno!=750 && stateno=255 && enemynear,movetype=H && p2bodydist x<=35 && random<(500+300*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, denjin hadouken]
type=changestate
value=3020
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=1000 && var(20)<=60 && prevstateno!=3020 && !(enemynear,ctrl)
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3033) && !numhelper(3045) && !numhelper(3055)
triggerall= (stateno!=[700,701]) && (prevstateno!=[700,701])
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= stateno=1000 && (animelemtime(6)>=0 && animelemtime(8)<0)
trigger1= enemynear,statetype!=A && p2statetype=L && p2bodydist x>=180 && random<(260+300*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= prevstateno!=750 && (stateno=[1100,1110]) && movehit && enemynear,movetype=H && !var(43) && random<(300+350*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= (ctrl||(stateno=[100,101])) && (p2statetype=L && p2stateno!=5120) && p2bodydist x>=160 && enemynear,vel y>=-2 && random<(330+360*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= stateno=1000 && numhelper(1005)
trigger4= helper(1005),var(3) && (p2bodydist x=[30,60]) && enemynear,statetype!=A && random<(125+25*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= prevstateno!=750 && stateno=255 && movehit && enemynear,movetype=H && random<(100+50*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, shinkuu hadouken]
type=changestate
value=3000
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(40)=0
triggerall= power>=1000 && var(20)<=60 && prevstateno!=3000
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3033) && !numhelper(3045) && !numhelper(3055)
triggerall= p2bodydist x>=10 && (p2dist y=[-100,0]) && enemynear,vel y<=8
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (prevstateno!=5120 || p2statetype!=L) && (p2stateno!=[5100,5299])
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3020 || enemynear,numhelper(3025)))
triggerall= !(enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055)))
triggerall= !(enemynear,name="Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= !(enemynear,name="Pocket Shin Gouki" && enemynear,authorname="Phantom.of.the.Server" && (p2stateno=3000 || enemynear,numhelper(3005)))
triggerall= !var(6)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,285]) || enemynear,statetype=A)
trigger1= (p2bodydist x=[40,80]) && (p2dist y=[-45,0]) && !(enemynear,hitfall) && random<(300+200*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= (stateno=[200,205]) || stateno=210 && anim=211 || (stateno=[235,250])
trigger2= movehit && enemynear,statetype!=A && random<(100+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= stateno=1300 && movehit && !var(43) && random<(250+300*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3) && enemynear,statetype!=A && random<(100+50*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= (ctrl||(stateno=[100,101])) && ((p2stateno=[1000,1030])) && enemynear,statetype!=A && p2bodydist x>=160 && random<(250+200*(var(26)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger6= ctrl && stateno=52 && !animtime && prevstateno=1210
trigger6= enemynear,backedgedist<=1 || enemynear,frontedgedist<=1
trigger6= enemynear,movetype=H && (p2dist x=[15,120]) && p2dist y>=-48 && random<(320+480*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger7= (stateno=[1000,1010]) && (animelemtime(6)>=0 && animelemtime(8)<0) || stateno=1030 && (animelemtime(9)>0 && animelemtime(11)<0) || stateno=1020 && (animelemtime(12)>0 && animelemtime(14)<0)
trigger7= p2stateno!=40 && enemynear,statetype!=A && enemynear,movetype=A && random<(150+50*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)

[State -1, Double Shinkuu Hadouken]
type=changestate
value=3600
triggerall= AIlevel && roundstate=2 && var(1)!=2 && statetype!=A && power>=3000 && !var(20) && var(40)=0
triggerall= teammode=simul && numpartner
triggerall= partner,alive
triggerall= partner,facing=facing
triggerall= partner,authorname = "Phantom.of.the.Server&Jmorphman" && Partner,Name= "Ken Masters" && (partner,var(40)!=1)
triggerall= !(partner,statetype=A) && !(partner,var(20)) && !(partner,movetype=H)
triggerall= (partner,ctrl || partner,stateno=21 || partner,stateno=40 || partner,stateno=52 || (partner,stateno=[100,101])) || partner,var(7)
triggerall= p2bodydist x>=10 && (p2dist y=[-100,0]) && enemynear,vel y<=8
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (prevstateno!=5120 || p2statetype!=L) && (p2stateno!=[5100,5299])
trigger1= (ctrl||(stateno=[100,101])) && (enemynear,movetype=A || (p2stateno=[200,285]) || enemynear,statetype=A)
trigger1= (p2bodydist x=[60,120]) && (p2dist y=[-45,0]) && !(enemynear,hitfall) && random<(200+300*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger2= (stateno=[200,205]) || stateno=210 && anim=211 || (stateno=[235,250])
trigger2= movehit && enemynear,statetype!=A && random<(100+100*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger3= stateno=1300 && movehit && !var(43) && random<(200+150*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3) && enemynear,statetype!=A && random<(50+100*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger5= (ctrl||(stateno=[100,101])) && ((p2stateno=[1000,1030])) && enemynear,statetype!=A && p2bodydist x>=120 && random<(200+250*(var(26)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger6= stateno=1000 && (animelemtime(6)>=0 && animelemtime(8)<0)
trigger6= p2stateno!=40 && enemynear,statetype!=A && enemynear,movetype=A && random<(100+100*(var(18)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
trigger7= (ctrl||(stateno=[100,101])) && p2stateno=3600 && enemynear,statetype!=A && p2bodydist x>=140 && random<(150+250*(var(26)=1)*(life<333)*(p2life<333))*(AIlevel**2/64.0)
