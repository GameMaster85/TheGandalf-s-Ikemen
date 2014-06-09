; Dhalsim By RajaaBoy

;=========================================================================
; Yoga Fire - Edge
;=========================================================================
[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1000, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1000, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1000, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1000, Change Animation]
type = changeanim
trigger1 = !time
value = 1003 ; 1000 + var(22) - 1

[state 1000, Edge: Change Animation]
type = changeanim
triggerall = anim = 1003
triggerall = animelemtime(3) >= 0
triggerall = animelemtime(5) < 0
trigger1 = !ailevel
trigger1 = command != "hold_x" && command != "hold_y" && command != "hold_z"
trigger2 = ailevel && numenemy
trigger2 = p2bodydist x <= 128 || enemy,numproj || inguarddist
trigger2 = random < 496
value = 1000 + var(22) - 1
elem = animelemno(0) - 1 * (animelemtime(4) >= 0)

[state 1000, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 1000, 0
volumescale = 100
channel = 0
persistent = 0

[state 1000, Sound]
type = playsnd
trigger1 = !animelemtime(4 + 2 * (anim = 1003))
value = 3, 0 + 4 * (anim = 1003)
volumescale = 100

[state 1000, Yoga Fire]
type = helper
trigger1 = anim != 1003
trigger1 = !animelemtime(4)
name = "Yoga Fire"
ID = 1005
stateno = 1005
postype = p1
pos = 96, -48
ownpal = 1
keyctrl = 0
size.xscale = 0.85
size.yscale = 0.3

[state 1000, Yoga Fire]
type = helper
trigger1 = anim = 1003
trigger1 = !animelemtime(6)
name = "Yoga Fire"
ID = 1005
stateno = 1010
postype = p1
pos = 96, -48
ownpal = 1
keyctrl = 0
size.xscale = 0.95
size.yscale = 0.4

[state 1000, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1000, Idle]
type = statetypeset
trigger1 = animelemtime(5 + (anim = 1003)) >= 0
movetype = I
persistent = 0

[state 1000, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1005]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1005, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1006

[state 1005, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1005, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1005, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(var(19), 0.5, root,fvar(0))

[state 1005, Change Animation]
type = changeanim
trigger1 = !time
value = 1005

[state 1005, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1005, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1005, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1007
slot = 0
time = -1
forceair = 0

[state 1005, Set Velocity]
type = velset
trigger1 = !time
x = 3.0 * (var(22) = 1) + 6.0 * (var(22) = 2) + 9.0 * (var(22) = 3)
y = 0.0

[state 1005, Multiply Velocity]
type = velmul
trigger1 = time % 5 = 0
x = 0.85

[state 1005, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1005, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1005, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, SP 
damage = ceil(cond(cond(var(22) = 1, 53, cond(var(22) = 2, 60, 67)) * fvar(0) < 7, 7, cond(var(22) = 1, 53, cond(var(22) = 2, 60, 67)) * fvar(0))), 7
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 12
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -12.0 + 7.0 * (var(22) > 1), -7.03125 * (var(22) > 1)
guard.velocity = -7.5
air.velocity = -5.0, -8.7890625
airguard.velocity = -5.0, -2.0
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 32
fall = var(22) > 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
p2facing = p2statetype != A

[state 1005, Idle]
type = statetypeset
trigger1 = animelemtime(21) >= 0
movetype = I
ignorehitpause = 1
persistent = 0

[state 1005, Destroy Helper]
type = destroyself
trigger1 = !animtime
trigger2 = frontedgedist <= -96

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1006]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1006, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1006, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1006, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1006, Custom Cancel]
type = parentvarset
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 1

[state 1006, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1006, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1006, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1006, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1006, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1006, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1007
slot = 0
time = -1
forceair = 0

[state 1006, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1006, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1006, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1006, Fire]
type = helper
trigger1 = !numhelper(6305)
trigger1 = movehit = 1
trigger1 = numtarget
name = "Fire"
ID = 6305
stateno = 6305
ownpal = 1
pausemovetime = 65536
supermovetime = 65536

[state 1006, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1006, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1006, Destroy Helper]
type = changestate
trigger1 = !time
value = 1008

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 1007]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1007, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1007, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1007, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1007, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1007, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1007
slot = 0
time = -1
forceair = 0

[state 1007, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1007, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 1007, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = 6105
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1007, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1007, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1007, End State]
type = changestate
trigger1 = !time
value = 1008

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1008]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1008, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 1

[state 1008, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1008, Angle]
type = angledraw
trigger1 = 1
scale = 1.0, 1.5

[state 1008, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1008, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1008, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1010]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1010, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1011

[state 1010, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1010, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1010, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(var(19), 0.5, root,fvar(0))

[state 1010, Change Animation]
type = changeanim
trigger1 = !time
value = 1010

[state 1010, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1010, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1010, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1012
slot = 0
time = -1
forceair = 0

[state 1010, Set Velocity]
type = velset
trigger1 = !time
x = 6.0
y = 0.0

[state 1010, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1010, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1010, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, SP 
damage = ceil(cond(74 * fvar(0) < 7, 7, 74 * fvar(0))), 7
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 8
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -5.0, -7.03125
guard.velocity = -7.5
air.velocity = -5.0, -7.03125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 32
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
p2facing = p2statetype != A

[state 1010, Destroy Helper]
type = destroyself
trigger1 = frontedgedist <= -96

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1011]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1011, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 1011, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1011, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1011, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1011, Custom Cancel]
type = parentvarset
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 1

[state 1011, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1011, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1011, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1011, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1011, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1011, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1012
slot = 0
time = -1
forceair = 0

[state 1011, Vulnerability]
type = nothitby
trigger1 = var(0) >= 2
value = SCA
time = -1

[state 1011, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1011, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1011, Fire]
type = helper
trigger1 = !numhelper(6305)
trigger1 = movehit = 1
trigger1 = numtarget
name = "Fire"
ID = 6305
stateno = 6305
ownpal = 1
pausemovetime = 65536
supermovetime = 65536

[state 1011, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1011, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1011,  Destroy Helper]
type = changestate
trigger1 = time > 6
value = 1010 + 3 * (var(0) >= 2)

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 1012]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1012, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 1012, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1012, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1012, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1012, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1012, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1012
slot = 0
time = -1
forceair = 0

[state 1012, Vulnerability]
type = nothitby
trigger1 = var(0) >= 2
value = SCA
time = -1

[state 1012, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 1012, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = 6105
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1012, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1012, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1012, End State]
type = changestate
trigger1 = !time
value = 1010 + 3 * (var(0) >= 2)

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1013]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1013, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 1

[state 1013, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1013, Angle]
type = angledraw
trigger1 = 1
scale = 1.0, 1.5

[state 1013, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1013, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1013, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Fire - Airborne
;=========================================================================
[Statedef 1100]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 64
sprpriority = 1

[state 1100, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1100, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1100, Change Animation]
type = changeanim
trigger1 = !time
value = 1100

[state 1100, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 1000, 0
volumescale = 100
channel = 0

[state 1100, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 3, 0
volumescale = 100

[state 1100, Set Position]
type = posset
trigger1 = pos y > 16
y = 16

[state 1100, Multiply Velocity]
type = velmul
trigger1 = animelemtime(6) < 0
x = 0.91
y = 0.91

[state 1100, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animelemtime(6) >= 0
x = 0.9
y = 0.9

[state 1100, Increment Velocity]
type = veladd
trigger1 = numhelper(4000)
trigger1 = !helper(4000),var(41)
trigger1 = animelemtime(6) >= 0
y = const(movement.yaccel)

[state 1100, Yoga Fire]
type = helper
trigger1 = !animelemtime(4)
name = "Yoga Fire"
ID = 1005
stateno = 1110
postype = p1
pos = 96, -64
ownpal = 1
keyctrl = 0
size.xscale = 0.85
size.yscale = 0.3

[state 1100, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1100, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 1100, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = !animelemtime(7)
value = 1800
anim = 1801

[state 1100, End State]
type = changestate
trigger1 = animelemtime(6) >= 0
trigger1 = pos y + vel y > 0
value = 1105
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 1105]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1105, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1105, Change Animation]
type = changeanim
trigger1 = !time
value = 1105

[state 1105, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 1105, Land Smoke]
type = helper
trigger1 = !animelemtime(1)
name = "Land Smoke"
ID = 6010
stateno = 6010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 1105, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1110]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 1110, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1111

[state 1110, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1110, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1110, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(var(19), 0.5, root,fvar(0))

[state 1110, Change Animation]
type = changeanim
trigger1 = !time
value = 1005

[state 1110, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1110, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1110, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1112
slot = 0
time = -1
forceair = 0

[state 1110, Set Velocity]
type = velset
trigger1 = !time
x = 3.0 * (var(22) = 1) + 6.0 * (var(22) = 2) + 9.0 * (var(22) = 3)
y = parent, vel y

[state 1110, Multiply Velocity]
type = velmul
trigger1 = time % 5 = 0
x = 0.85
y = 0.85

[state 1110, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1110, Miss]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1110, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = A, SP 
damage = ceil(cond(cond(var(22) = 1, 53, cond(var(22) = 2, 60, 67)) * fvar(0) < 7, 7, cond(var(22) = 1, 53, cond(var(22) = 2, 60, 67)) * fvar(0))), 7
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 12
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -12.0 + 7.0 * (var(22) > 1), -7.03125 * (var(22) > 1)
guard.velocity = -7.5
air.velocity = -5.0, -8.7890625
airguard.velocity = -5.0, -2.0
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 32
fall = var(22) > 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
p2facing = p2statetype != A

[state 1110, Idle]
type = statetypeset
trigger1 = animelemtime(21) >= 0
movetype = I
ignorehitpause = 1
persistent = 0

[state 1110, Destroy Helper]
type = destroyself
trigger1 = !animtime
trigger2 = frontedgedist <= -96

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1111]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1111, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1111, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1111, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1111, Custom Cancel]
type = parentvarset
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 1

[state 1111, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1111, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1111, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1111, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1111, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1111, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1112
slot = 0
time = -1
forceair = 0

[state 1111, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1111, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1111, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1111, Fire]
type = helper
trigger1 = !numhelper(6305)
trigger1 = movehit = 1
trigger1 = numtarget
name = "Fire"
ID = 6305
stateno = 6305
ownpal = 1
pausemovetime = 65536
supermovetime = 65536

[state 1111, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1111, Miss]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1111, Destroy Helper]
type = changestate
trigger1 = !time
value = 1113

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 1112]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1112, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1112, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1112, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1112, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1112, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1112
slot = 0
time = -1
forceair = 0

[state 1112, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1112, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 1112, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = 6105
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1112, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1112, Miss]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1112, End State]
type = changestate
trigger1 = !time
value = 1113

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1113]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1113, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 1

[state 1113, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1113, Angle]
type = angledraw
trigger1 = 1
scale = 1.0, 1.5

[state 1113, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1113, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1113, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Flame
;=========================================================================
[Statedef 1200]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1200, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1200, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1200, Change Animation]
type = changeanim
trigger1 = !time
value = 1200

[state 1200, Frame Time]
type = null
trigger1 = !time
trigger1 = var(0) := 24 * (var(22) = 1) + 36 * (var(22) = 2) + 48 * (var(22) = 3)
trigger2 = animelemtime(7) > 0 && var(0)
trigger2 = var(0) := var(0) - 1

[state 1200, Change Animation]
type = changeanim
triggerall = animelemtime(7) > 0
trigger1 = anim = 1200 && var(0) <= 0
trigger2 = numhelper(var(43))
trigger2 = helper(var(43)),movecontact || helper(var(43)),movereversed || helper(var(43)),stateno = [1206, 1208]
trigger3 = !numhelper(var(43))
value = 1201
persistent = 0

[state 1200, Voice]
type = playsnd
trigger1 = anim = 1200
trigger1 = !animelemtime(2)
value = 1200, 0
volumescale = 100
channel = 0

[state 1200, Sound]
type = playsnd
trigger1 = anim = 1200
trigger1 = !animelemtime(6)
value = 3, 1
volumescale = 100

[state 1200, Yoga Flame]
type = helper
trigger1 = anim = 1200
trigger1 = !animelemtime(6)
name = "Yoga Flame"
ID = var(43) := cond((var(43) + 1 != [1205, 1299]), 1205, var(43) + 1)
stateno = 1205
postype = p1
pos = 56, -44
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 0.85

[state 1200, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1200, Idle]
type = statetypeset
trigger1 = anim = 1201
movetype = I
persistent = 0

[state 1200, End State]
type = changestate
trigger1 = anim = 1201
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1205]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1205, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1206

[state 1205, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1205, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1205, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(var(19), 0.5, root,fvar(0))

[state 1205, Change Animation]
type = changeanim
trigger1 = !time
value = 1205

[state 1205, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1200
trigger1 = parent,anim = 1200
pos = 56, -44

[state 1205, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1205, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1205, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1207
slot = 0
time = -1
forceair = 0

[state 1205, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1205, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1205, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, SP
damage = ceil(cond(cond(var(22) = 1, 105, cond(var(22) = 2, 113, 120)) * fvar(0) < 7, 7, cond(var(22) = 1, 105, cond(var(22) = 2, 113, 120)) * fvar(0))), 13
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.0, -7.0
guard.velocity = -6.0
air.velocity = -3.0, -7.0
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
p2facing = p2statetype != A

[state 1205, End State]
type = changestate
trigger1 = parent,stateno != 1200
trigger2 = parent,anim != 1200
trigger3 = parent,movetype = H
value = 1208

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1206]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1206, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1206, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1206, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1206, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1206, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1200
trigger1 = parent,anim = 1200
pos = 56, -44

[state 1206, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1206, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1206, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1206, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1206, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1207
slot = 0
time = -1
forceair = 0

[state 1206, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1206, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1206, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1206, Fire]
type = helper
trigger1 = !numhelper(6305)
trigger1 = movehit = 1
trigger1 = numtarget
name = "Fire"
ID = 6305
stateno = 6305
ownpal = 1
pausemovetime = 65536
supermovetime = 65536

[state 1206, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1206, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1206, End State]
type = changestate
trigger1 = !time
value = 1208

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 1207]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1207, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1200
trigger1 = parent,anim = 1200
pos = 56, -44

[state 1207, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1207, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1207, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1207, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1207, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1207
slot = 0
time = -1
forceair = 0

[state 1207, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1207, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 1207, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = 6105
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1207, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1207, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1207, End State]
type = changestate
trigger1 = !time
value = 1208

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1208]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1208, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 3

[state 1208, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1208, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1208, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Flame - Airborne
;=========================================================================
[Statedef 1300]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = vel x, vel y
poweradd = 64
sprpriority = 1

[state 1300, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1300, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1300, Change Animation]
type = changeanim
trigger1 = !time
value = 1300

[state 1300, Frame Time]
type = null
trigger1 = !time
trigger1 = var(0) := 24 * (var(22) = 1) + 36 * (var(22) = 2) + 48 * (var(22) = 3)
trigger2 = animelemtime(5) > 0 && var(0)
trigger2 = var(0) := var(0) - 1

[state 1300, Change Animation]
type = changeanim
triggerall = animelemtime(5) > 0
trigger1 = anim = 1300 && var(0) <= 0
trigger2 = numhelper(var(44))
trigger2 = helper(var(44)),movecontact || helper(var(44)),movereversed || helper(var(44)),stateno = [1306, 1308]
trigger3 = !numhelper(var(44))
value = 1301
persistent = 0

[state 1300, Voice]
type = playsnd
trigger1 = anim = 1300
trigger1 = !animelemtime(2)
value = 1200, 0
volumescale = 100
channel = 0

[state 1300, Sound]
type = playsnd
trigger1 = anim = 1300
trigger1 = !animelemtime(4)
value = 3, 1
volumescale = 100

[state 1300, Set Position]
type = posset
trigger1 = pos y > 16
y = 16

[state 1300, Multiply Velocity]
type = velmul
trigger1 = anim = 1300
trigger2 = anim = 1301
trigger2 = animelemtime(2) < 0
x = 0.91
y = 0.91

[state 1100, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = anim = 1301
trigger1 = animelemtime(2) >= 0
x = 0.9
y = 0.9

[state 1300, Increment Velocity]
type = veladd
trigger1 = numhelper(4000)
trigger1 = !helper(4000),var(41)
trigger1 = anim = 1301
trigger1 = animelemtime(2) >= 0
y = const(movement.yaccel)

[state 1300, Yoga Flame]
type = helper
trigger1 = anim = 1300
trigger1 = !animelemtime(4)
name = "Yoga Flame"
ID = var(44) := cond((var(44) + 1 != [1310, 1399]), 1310, var(44) + 1)
stateno = 1310
postype = p1
pos = 48, -56
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 0.85

[state 1300, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1300, Idle]
type = statetypeset
trigger1 = anim = 1301
movetype = I
persistent = 0

[state 1300, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = anim = 1301
trigger1 = !animelemtime(3)
value = 1800
anim = 1801

[state 1300, End State]
type = changestate
trigger1 = anim = 1301
trigger1 = animelemtime(2) >= 0
trigger1 = pos y + vel y > 0
value = 1305
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 1305]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1305, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1305, Change Animation]
type = changeanim
trigger1 = !time
value = 1105

[state 1305, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 1305, Land Smoke]
type = helper
trigger1 = !animelemtime(1)
name = "Land Smoke"
ID = 6010
stateno = 6010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 1305, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1310]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1310, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1311

[state 1310, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1310, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1310, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(var(19), 0.5, root,fvar(0))

[state 1310, Change Animation]
type = changeanim
trigger1 = !time
value = 1205

[state 1205, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1300
trigger1 = parent,anim = 1300
pos = 48, -56

[state 1310, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1310, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1310, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1312
slot = 0
time = -1
forceair = 0

[state 1310, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1310, Miss]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1310, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = A, SP
damage = ceil(cond(cond(var(22) = 1, 105, cond(var(22) = 2, 113, 120)) * fvar(0) < 7, 7, cond(var(22) = 1, 105, cond(var(22) = 2, 113, 120)) * fvar(0))), 13
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.0, -7.0
guard.velocity = -6.0
air.velocity = -3.0, -7.0
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
p2facing = p2statetype != A

[state 1310, End State]
type = changestate
trigger1 = parent,stateno != 1300
trigger2 = parent,anim != 1300
trigger3 = parent,movetype = H
value = 1313

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1311]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1311, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1311, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1311, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1311, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1311, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1300
trigger1 = parent,anim = 1300
pos = 48, -56

[state 1311, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1311, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1311, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1311, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1311, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1312
slot = 0
time = -1
forceair = 0

[state 1311, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1311, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1311, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1311, Fire]
type = helper
trigger1 = !numhelper(6305)
trigger1 = movehit = 1
trigger1 = numtarget
name = "Fire"
ID = 6305
stateno = 6305
ownpal = 1
pausemovetime = 65536
supermovetime = 65536

[state 1311, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1311, Miss]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1311, End State]
type = changestate
trigger1 = !time
value = 1313

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 1312]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1312, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1200
trigger1 = parent,anim = 1200
pos = 48, -56

[state 1312, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1312, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1312, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1312, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1312, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1312
slot = 0
time = -1
forceair = 0

[state 1312, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1312, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 1312, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = 6105
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1312, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1312, Miss]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1312, End State]
type = changestate
trigger1 = !time
value = 1313

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1313]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1313, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 3

[state 1313, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1313, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1313, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Blast
;=========================================================================
[Statedef 1400]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1400, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "a" || command = "NE_a", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1400, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1400, Change Animation]
type = changeanim
trigger1 = !time
value = 1400 + var(22) - 1

[state 1400, Frame Time]
type = null
trigger1 = !time
trigger1 = var(0) := 14 * (var(22) = 1) + 18 * (var(22) = 2) + 26 * (var(22) = 3)
trigger2 = animelemtime(5) > 0 && var(0)
trigger2 = var(0) := var(0) - 1

[state 1400, Change Animation]
type = changeanim
triggerall = animelemtime(5) > 0
trigger1 = anim = 1400 + var(22) - 1 && var(0) <= 0
trigger2 = numhelper(var(45))
trigger2 = helper(var(45)),movecontact || helper(var(45)),movereversed || helper(var(45)),stateno = [1411, 1413]
trigger3 = !numhelper(var(45))
value = 1405
persistent = 0

[state 1400, Voice]
type = playsnd
trigger1 = anim = 1400 + var(22) - 1
trigger1 = !animelemtime(2)
value = 1400, 0
volumescale = 100
channel = 0

[state 1400, Sound]
type = playsnd
trigger1 = anim = 1400 + var(22) - 1
trigger1 = !animelemtime(5)
value = 3, 1
volumescale = 100

[state 1400, Yoga Blast]
type = helper
trigger1 = anim = 1400 + var(22) - 1
trigger1 = !animelemtime(5)
name = "Yoga Blast"
ID = var(45) := cond((var(45) + 1 != [1410, 1499]), 1410, var(45) + 1)
stateno = 1410
postype = p1
pos = 42, -82
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 0.7

[state 1400, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1400, Idle]
type = statetypeset
trigger1 = anim = 1405
movetype = I
persistent = 0

[state 1400, End State]
type = changestate
trigger1 = anim = 1405
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1410]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1410, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1411

[state 1410, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1410, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1410, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(var(19), 0.5, root,fvar(0))

[state 1410, Change Animation]
type = changeanim
trigger1 = !time
value = 1410

[state 1410, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1400
trigger1 = parent,anim = 1400 + var(22) - 1
pos = 42, -82

[state 1410, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1410, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1410, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1412
slot = 0
time = -1
forceair = 0

[state 1410, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1410, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1410, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, SP
damage = ceil(cond(cond(var(22) = 1, 113, cond(var(22) = 2, 120, 128)) * fvar(0) < 7, 7, cond(var(22) = 1, 113, cond(var(22) = 2, 120, 128)) * fvar(0))), 14
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -88)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.0, -7.0
guard.velocity = -6.0
air.velocity = -3.0, -7.0
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
p2facing = p2statetype != A

[state 1410, End State]
type = changestate
trigger1 = parent,stateno != 1400
trigger2 = parent,anim != 1400 + var(22) - 1
trigger3 = parent,movetype = H
value = 1413

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1411]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1411, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1411, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1411, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1411, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1411, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1400
trigger1 = parent,anim = 1400 + var(22) - 1
pos = 42, -82

[state 1411, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1411, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1411, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1411, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1411, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1412
slot = 0
time = -1
forceair = 0

[state 1411, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1411, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1411, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1411, Fire]
type = helper
trigger1 = !numhelper(6305)
trigger1 = movehit = 1
trigger1 = numtarget
name = "Fire"
ID = 6305
stateno = 6305
ownpal = 1
pausemovetime = 65536
supermovetime = 65536

[state 1411, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1411, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1411, End State]
type = changestate
trigger1 = !time
value = 1413

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 1412]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1412, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 1400
trigger1 = parent,anim = 1400 + var(22) - 1
pos = 42, -82

[state 1412, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1412, Priority]
type = sprpriority
trigger1 = 1
value = 5

[state 1412, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1412, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 1412, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1412
slot = 0
time = -1
forceair = 0

[state 1412, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1412, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 1412, Hit Spark]
type = helper
trigger1 = !time
name = "Hit Spark"
ID = 6100
stateno = 6105
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), var(8)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 1412, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1412, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1412, End State]
type = changestate
trigger1 = !time
value = 1413

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1413]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1413, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 3

[state 1413, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1413, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1413, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Teleport
;=========================================================================
[Statedef 1500]
type = S
movetype = I
physics = N
ctrl = 0
; facep2 = 1
velset = 0, 0
sprpriority = 1

[state 1500, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "623PP/KK" && (command = "a" || command = "b" || command = "c"), 1, cond(command = "623PP/KK" && (command = "x" || command = "y" || command = "z"), 2, cond(command = "421PP/KK" && (command = "a" || command = "b" || command = "c"), 3, 4)))

[state 1500, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1500, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1500, Change Animation]
type = changeanim
trigger1 = !time
value = cond(command = "421PP/KK", 1501, 1500)

[state 1500, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1500, Vulnerability]
type = nothitby
trigger1 = animelemtime(10) < 0
value = SCA
time = 1

[state 1500, Solidity]
type = playerpush
trigger1 = animelemtime(8) < 0
value = 0

[state 1500, Transparency]
type = trans
trigger1 = animelemno(0) = [1, 5]
trans = addalpha
alpha = 256 - 25 * time, 25 * time

[state 1500, Transparency]
type = trans
trigger1 = animelemno(0) = 7
trans = addalpha
alpha = 21 * animelemtime(7), 256 - 21 * animelemtime(7)

[state 1500, Turn]
type = turn
trigger1 = !animelemtime(7)
trigger1 = p2dist x < 0
persistent = 0

[state 1500, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 1500, 0
volumescale = 100
channel = 0

[state 1500, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 3, 2
volumescale = 100

[state 1500, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 3, 3
volumescale = 100

[state 1500, Increment Position]
type = posadd
trigger1 = animelemno(0) = 6
x = cond(var(22) = 1, 8.0, cond(var(22) = 3, -240.0, cond(var(22) = 2, 4.0, -112.0)))

[state 1500, End State]
type = changestate
trigger1 = !animtime
value = 52
ctrl = 0

;=========================================================================
; Airborne
;=========================================================================
[Statedef 1501]
type = A
movetype = I
physics = N
ctrl = 0
; facep2 = 1
velset = 0, 0
sprpriority = 1

[state 1501, Level]
type = null
triggerall = !time
trigger1 = !ailevel
trigger1 = var(22) := cond(command = "623PP/KK" && (command = "a" || command = "b" || command = "c"), 1, cond(command = "623PP/KK" && (command = "x" || command = "y" || command = "z"), 2, cond(command = "421PP/KK" && (command = "a" || command = "b" || command = "c"), 3, 4)))

[state 1501, Change Animation]
type = changeanim
trigger1 = !time
value = cond(command = "421PP/KK", 1501, 1500)

[state 1501, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1501, Vulnerability]
type = nothitby
trigger1 = animelemtime(10) < 0
value = SCA
time = 1

[state 1501, Solidity]
type  = playerpush
trigger1 = animelemtime(8) < 0
value = 0

[state 1501, Transparency]
type = trans
trigger1 = animelemno(0) = [1, 5]
trans = addalpha
alpha = 256 - 25 * time, 25 * time

[state 1501, Transparency]
type = trans
trigger1 = animelemno(0) = 7
trans = addalpha
alpha= 21 * animelemtime(7), 256 - 21 * animelemtime(7)

[state 1501, Turn]
type = turn
trigger1 = !animelemtime(7)
trigger1 = p2dist x < 0
persistent = 0

[state 1501, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 1500, 0
volumescale = 100
channel = 0

[state 1501, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 3, 2
volumescale = 100

[state 1501, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 3, 3
volumescale = 100

[state 1501, Increment Position]
type = posadd
trigger1 = animelemno(0) = 6
x = cond(var(22) = 1, 8.0, cond(var(22) = 3, -240.0, cond(var(22) = 2, 4.0, -112.0)))

[state 1501, Increment Velocity]
type = veladd
trigger1 = animelemtime(11) > 0
y = 0.55458333

[state 1501, Control]
type = ctrlset
trigger1 = !animelemtime(11)
value = 1

[state 1501, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = !animelemtime(8)
value = 1800
anim = 1801

[state 1501, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52
ctrl = 0

;=========================================================================
; Recover
;=========================================================================
[Statedef 1502]
type = L
movetype = I
physics = N
ctrl = 0
; facep2 = 1
velset = 0, 0
sprpriority = 1

[state 1502, Level]
type = null
triggerall = !time
trigger1 = !ailevel
trigger1 = var(22) := cond(command = "623PP/KK" && (command = "a" || command = "b" || command = "c"), 1, cond(command = "623PP/KK" && (command = "x" || command = "y" || command = "z"), 2, cond(command = "421PP/KK" && (command = "a" || command = "b" || command = "c"), 3, 4)))

[state 1502, Change Animation]
type = changeanim
trigger1 = !time
value = 1502
elem = 2

[state 1502, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1502, Vulnerability]
type = nothitby
trigger1 = animelemtime(14) < 0
value = SCA
time = 1

[state 1502, Solidity]
type = playerpush
trigger1 = animelemtime(11) < 0
value = 0

[state 1502, Set State Type]
type = statetypeset
trigger1 = animelemtime(9) >= 0
statetype = A
persistent = 0

[state 1502, Transparency]
type = trans
trigger1 = animelemno(0) = [1, 7]
trans = addalpha
alpha = 256 - 19 * time, 19 * time

[state 1502, Transparency]
type = trans
trigger1 = animelemno(0) = [9, 12]
trans = addalpha
alpha = 15 * animelemtime(9), 256 - 15 * animelemtime(9)

[state 1502, Turn]
type = turn
trigger1 = !animelemtime(9)
trigger1 = p2dist x < 0
persistent = 0

[state 1502, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 2, 2
volumescale = 100
channel = 0

[state 1502, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 3, 2
volumescale = 100

[state 1502, Sound]
type = playsnd
trigger1 = !animelemtime(9)
value = 3, 3
volumescale = 100

[state 1502, Increment Position]
type = posadd
trigger1 = animelemno(0) = [2, 7]
y = -2.0

[state 1502, Increment Position]
type = posadd
trigger1 = animelemno(0) = 8
x = cond(var(22) = 1, 20.0, cond(var(22) = 3, -20.0, cond(var(22) = 2, 10.0, -10.0)))

[state 1502, Increment Velocity]
type = veladd
trigger1 = animelemtime(14) > 0
y = const(movement.yaccel)

[state 1502, Control]
type = ctrlset
trigger1 = !animelemtime(14)
value = 1

[state 1502, End State]
type = changestate
trigger1 = animelemtime(14) > 0
trigger1 = pos y + vel y > 0
value = 52
ctrl = 0

;=========================================================================
; Yoga Grasp
;=========================================================================
[statedef 1600]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1600, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "a" || command = "NE_a", 1, cond(command = "b" || command = "NE_b", 2, 3))

[state 1600, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1600, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1600, Change Animation]
type = changeanim
trigger1 = !time
value = 1600 + var(22) - 1

[state 1600, Voice]
type = playsnd
trigger1 = !time
value = 1600, 0
volumescale = 100
channel = 0

[state 1600, Voice]
type = null ; playsnd
trigger1 = var(22) = 1 && !animelemtime(6)
trigger2 = var(22) = 2 && !animelemtime(7)
trigger3 = var(22) = 3 && !animelemtime(9)
value = 5000, 1
volumescale = 100
channel = 0

[state 1600, Hit]
type = hitdef
trigger1 = movetype = A
trigger1 = p2stateno != [150, 155]
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = animelemtime(4) >= 0
attr = S, ST
damage = 0
guardflag = 
hitflag = M
priority = 1, miss
pausetime = 0, 0
hitsound = -1 + (0 * (var(3) := 800))
guardsound = -1 + (0 * (var(4) := -1))
sparkno = -1 + (0 * (var(5) := -1))
guard.sparkno = -1 + 0 * (var(6) := -1)
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
getpower = 0, 0
givepower = 0, 0
fall = 1
fall.recover = 1
fall.recovertime = 80
forcestand = 1
ID = 1600
nochainID = 450
p1stateno = cond(animelemtime(5) < 0, 1605, cond(animelemtime(6) < 0, 1606, 1607))
numhits = 0

[state 1600, Idle]
type = statetypeset
trigger1 = var(22) = 1 && animelemtime(5) >= 0
trigger2 = var(22) = 2 && animelemtime(6) >= 0
trigger3 = var(22) = 3 && animelemtime(8) >= 0
movetype = I
persistent = 0

[state 1600, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Retract A
;=========================================================================
[Statedef 1605]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1605, Change Animation]
type = changeanim
trigger1 = !time
value = 1605

[state 1605, End State]
type = changestate
trigger1 = !ailevel
trigger1 = !animelemtime(2)
trigger1 = command = "holdback"
trigger2 = ailevel
trigger2 = !animelemtime(2)
trigger2 = random < 750
value = 1610

[state 1605, Width]
type = width
trigger1 = !time
edge = 112, 0

[state 1605, Special Effect]
type = assertspecial
trigger1 = 1
flag = nowalk

[state 1605, Voice]
type = playsnd
trigger1 = !animelemtime(6)
value = 5000, 1
volumescale = 100
channel = 0

[state 1605, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = 1, 2
volumescale = 100
channel = 1

[state 1605, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = 200, 220
volumescale = 100
channel = 2

[state 1605, Shake]
type = envshake
trigger1 = !animelemtime(6)
time = 12
ampl = 6

[state 1605, Add Hit]
type = hitadd
trigger1 = !animelemtime(6)
value = 1

[state 1605, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 1605, Target State]
type = targetstate
trigger1 = !time
value = 1615

[state 1605, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 112, 0

[state 1605, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 80, 0

[state 1605, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(6) < 0
pos = 64,0

[state 1605, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(6)
value = ceil(cond(cond(var(22) = 1, 91, cond(var(22) = 2, 98, 105)) * fvar(0) < 7, -7, cond(var(22) = 1, -91, cond(var(22) = 2, -98, -105)) * fvar(0)))

[state 1605, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(6)
value = 48

[state 1605, Target State]
type = targetstate
trigger1 = !animelemtime(6)
value = 1625

[state 1605, Add Power]
type = poweradd
trigger1 = !animelemtime(6)
value = 72

[state 1605, Juggle - Hits / Juggle - Never / Dampener - Hits]
type = null
trigger1 = !animelemtime(6)
trigger1 = var(10) := var(10) + 1 || var(12) := var(12) + 1

[state 1605, Hit Spark]
type = helper
trigger1 = !animelemtime(6)
trigger1 = var(5) := 4
name = "Hit Spark"
ID = 6100
stateno = 6100
postype = p1
pos = 56, -64
ownpal = 1
keyctrl = 0
pausemovetime = 65536
supermovetime = 65536

[state 1605, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 1605, Control]
type = ctrlset
trigger1 = !animelemtime(8)
value = 1

[state 1605, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Retract B
;=========================================================================
[Statedef 1606]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1606, Change Animation]
type = changeanim
trigger1 = !time
value = 1606

[state 1606, End State]
type = changestate
trigger1 = !ailevel
trigger1 = !animelemtime(3)
trigger1 = command = "holdback"
trigger2 = ailevel
trigger2 = !animelemtime(3)
trigger2 = random < 750
value = 1610

[state 1606, Width]
type = width
trigger1 = !time
edge = 112, 0

[state 1606, Special Effect]
type = assertspecial
trigger1 = 1
flag = nowalk

[state 1606, Voice]
type = playsnd
trigger1 = !animelemtime(7)
value = 5000, 1
volumescale = 100
channel = 0

[state 1606, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 1, 2
volumescale = 100
channel = 1

[state 1606, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 200, 220
volumescale = 100
channel = 2

[state 1606, Shake]
type = envshake
trigger1 = !animelemtime(7)
time = 12
ampl = 6

[state 1606, Add Hit]
type = hitadd
trigger1 = !animelemtime(7)
value = 1

[state 1606, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 1606, Target State]
type = targetstate
trigger1 = !time
value = 1616

[state 1606, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 144, 0

[state 1606, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 112, 0

[state 1606, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 80, 0

[state 1606, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(7) < 0
pos = 64, 0

[state 1606, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(7)
value = ceil(cond(cond(var(22) = 1, 91, cond(var(22) = 2, 98, 105)) * fvar(0) < 7, -7, cond(var(22) = 1, -91, cond(var(22) = 2, -98, -105)) * fvar(0)))

[state 1606, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(7)
value = 48

[state 1606, Target State]
type = targetstate
trigger1 = !animelemtime(7)
value = 1625

[state 1606, Add Power]
type = poweradd
trigger1 = !animelemtime(7)
value = 72

[state 1606, Juggle - Hits / Juggle - Never / Dampener - Hits]
type = null
trigger1 = !animelemtime(7)
trigger1 = var(10) := var(10) + 1 || var(12) := var(12) + 1

[state 1606, Hit Spark]
type = helper
trigger1 = !animelemtime(7)
trigger1 = var(5) := 4
name = "Hit Spark"
ID = 6100
stateno = 6100
postype = p1
pos = 56, -64
ownpal = 1
keyctrl = 0
pausemovetime = 65536
supermovetime = 65536

[state 1606, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 1606, Control]
type = ctrlset
trigger1 = !animelemtime(9)
value = 1

[state 1606, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Retract C
;=========================================================================
[Statedef 1607]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1607, Change Animation]
type = changeanim
trigger1 = !time
value = 1607

[state 1607, End State]
type = changestate
trigger1 = !ailevel
trigger1 = !animelemtime(5)
trigger1 = command = "holdback"
trigger2 = ailevel
trigger2 = !animelemtime(5)
trigger2 = random < 750
value = 1610

[state 1607, Width]
type = width
trigger1 = !time
edge = 112, 0

[state 1607, Special Effect]
type = assertspecial
trigger1 = 1
flag = nowalk

[state 1607, Voice]
type = playsnd
trigger1 = !animelemtime(9)
value = 5000, 1
volumescale = 100
channel = 0

[state 1607, Sound]
type = playsnd
trigger1 = !animelemtime(9)
value = 1, 2
volumescale = 100
channel = 1

[state 1607, Sound]
type = playsnd
trigger1 = !animelemtime(9)
value = 200, 220
volumescale = 100
channel = 2

[state 1607, Shake]
type = envshake
trigger1 = !animelemtime(9)
time = 12
ampl = 6

[state 1607, Add Hit]
type = hitadd
trigger1 = !animelemtime(9)
value = 1

[state 1607, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 1607, Target State]
type = targetstate
trigger1 = !time
value = 1617

[state 1607, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 192, 0

[state 1607, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 176, 0

[state 1607, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 144, 0

[state 1607, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = 112, 0

[state 1607, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
pos = 80, 0

[state 1607, Target Bind]
type = targetbind
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(9) < 0
pos = 64, 0

[state 1607, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(9)
value = ceil(cond(cond(var(22) = 1, 91, cond(var(22) = 2, 98, 105)) * fvar(0) < 7, -7, cond(var(22) = 1, -91, cond(var(22) = 2, -98, -105)) * fvar(0)))

[state 1607, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(9)
value = 50

[state 1607, Target State]
type = targetstate
trigger1 = !animelemtime(9)
value = 1625

[state 1607, Add Power]
type = poweradd
trigger1 = !animelemtime(9)
value = 72

[state 1607, Juggle - Hits / Juggle - Never / Dampener - Hits]
type = null
trigger1 = !animelemtime(9)
trigger1 = var(10) := var(10) + 1 || var(12) := var(12) + 1

[state 1607, Hit Spark]
type = helper
trigger1 = !animelemtime(9)
trigger1 = var(5) := 4
name = "Hit Spark"
ID = 6100
stateno = 6100
postype = p1
pos = 56, -64
ownpal = 1
keyctrl = 0
pausemovetime = 65536
supermovetime = 65536

[state 1607, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[state 1607, Control]
type = ctrlset
trigger1 = !animelemtime(11)
value = 1

[state 1607, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Body Slam
;=========================================================================
[Statedef 1610]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1610, Change Animation]
type = changeanim
trigger1 = !time
value = 1610

[state 1610, Width]
type = width
trigger1 = !animelemtime(5)
edge = 0, 112

[state 1610, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 5000, 1
volumescale = 100
channel = 0

[state 1610, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 3
volumescale = 100
channel = 1

[state 1610, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 5100, 1
volumescale = 100

[state 1610, Shake]
type = envshake
trigger1 = !animelemtime(5)
time = 10
ampl = 10

[state 1610, Hit]
type = hitadd
trigger1 = !animelemtime(5)
value = 1

[state 1610, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 1610, Target State]
type = targetstate
trigger1 = !time
value = 1620

[state 1610, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 80, 0

[state 1610, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 64, -56

[state 1610, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = -24, -104

[state 1610, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = -40, -80

[state 1610, Target Bind]
type = targetbind
trigger1 = !animelemtime(5)
pos = -120, -24

[state 1610, Ground Hit Effect]
type = helper
trigger1 = !animelemtime(5)
name = "Ground Hit Effect"
ID = 6301
stateno = 6300
postype = p1
pos = -112, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.375
size.yscale = 0.375
pausemovetime = 65536
supermovetime = 65536

[state 1610, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(5)
value = ceil(cond(cond(var(22) = 1, 112, cond(var(22) = 2, 119, 126)) * fvar(0) < 7, -7, cond(var(22) = 1, -112, cond(var(22) = 2, -119, -126)) * fvar(0)))

[state 1610, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(5)
value = 48

[state 1610, Target State]
type = targetstate
trigger1 = !animelemtime(5)
value = 1630

[state 1610, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = 72

[state 1610, Juggle - Hits / Juggle - Never / Dampener - Hits]
type = null
trigger1 = !animelemtime(5)
trigger1 = var(10) := var(10) + 1 || var(12) := var(12) + 1

[state 1610, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 1610, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Target Grabbed A
;=========================================================================
[Statedef 1615]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 1615, Change Animation]
type = changeanim2
trigger1 = !time
value = 1615

[state 1615, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Grabbed B
;=========================================================================
[Statedef 1616]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 1616, Change Animation]
type = changeanim2
trigger1 = !time
value = 1616

[state 1616, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Grabbed C
;=========================================================================
[Statedef 1617]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 1617, Change Animation]
type = changeanim2
trigger1 = !time
value = 1617

[state 1617, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Grabbed
;=========================================================================
[Statedef 1620]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 1620, Change Animation]
type = changeanim2
trigger1 = !time
value = 1620

[state 1620, roop]
type = angledraw
trigger1 = 1
value = -45 * (animelemno(0) = 3) + -90 * (animelemno(0) = 4) + -180 * (animelemno(0) = 5)

[state 1620, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Hit
;=========================================================================
[Statedef 1625]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 1625, Change Animation]
type = changeanim2
trigger1 = !time
value = 1625

[state 1625, Change Animation]
type = changeanim2
trigger1 = time = 13
value = 1626

[state 1625, Set Hit Fall]
type = hitfallset
trigger1 = anim = 1626
value = 1

[state 1625, Set Velocity]
type = velset
trigger1 = time = 13
x = -2.75
y = -8.0

[state 1625, Increment Velocity]
type = veladd
trigger1 = time > 13
y = 0.5859375

[state 1625, Ground Recovery]
type = selfstate
trigger1 = alive
trigger1 = hitshakeover && vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
value = 5200

[state 1625, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10

[state 1625, Air Recovery]
type = selfstate
trigger1 = alive
trigger1 = hitshakeover
trigger1 = canrecover
trigger1 = command = "recovery"
value = 5210

[state 1625, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100
ctrl = 0

;=========================================================================
; Target Slammed
;=========================================================================
[Statedef 1630]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 1630, Change Animation]
type = changeanim2
trigger1 = time = 15
value = 1630

[state 1630, Angle]
type = angledraw
trigger1 = time < 15
value = -180

[state 1630, Set Hit Fall]
type = hitfallset
trigger1 = time = 15
value = 1

[state 1630, Set Velocity]
type = velset
trigger1 = time = 15
x = 3.0
y = -5.859375

[state 1630, Increment Velocity]
type = veladd
trigger1 = time > 15
y = 0.5859375

[state 1630, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 15
ampl = 5

[state 1630, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100
ctrl = 0

;=========================================================================
; Yoga Barrage
;=========================================================================
[Statedef 1700]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1700, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1700, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(41) := 0

[state 1700, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1700, Change Animation]
type = changeanim
trigger1 = !time
value = 1700 + var(22) - 1

[state 1700, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 1600, 0
volumescale = 100
channel = 0

[state 1700, End State]
type = changestate
trigger1 = !animtime
value = 1705
ctrl = 0

;=========================================================================
; Barrage
;=========================================================================
[Statedef 1705]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1705, Level]
type = null
trigger1 = !ailevel
trigger1 = command = "x" || command = "y" || command = "z"
trigger1 = var(22) := cond(command = "x", 1, cond(command = "y", 2, 3))
trigger2 = ailevel
trigger2 = !animtime
trigger2 = var(22) := cond(random < 500, 3, cond(random < 500, 2, 1))

[state 1705, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1705, Change Animation]
type = changeanim
trigger1 = !time
value = 1705 + var(22) - 1

[state 1705, Change Animation]
type = varset
trigger1 = ailevel
trigger1 = p2statetype != A
trigger1 = p2bodydist x = [0, 104]
var(42) = 26 * (var(22) = 1) + 18 * (var(22) = 2) + 10 * (var(22) = 3)

[state 1705, Change Animation]
type = changeanim
trigger1 = var(42)
trigger1 = !animtime
value = 1705 + var(22) - 1
elem = 2

[state 1705, Voice]
type = playsnd
trigger1 = !animelemtime(2)
trigger2 = !animelemtime(6)
value = 1600,1
volumescale = 100
channel = 0

[state 1705, Sound]
type = playsnd
trigger1 = !animelemtime(2)
trigger2 = !animelemtime(4)
trigger3 = !animelemtime(6)
value = 1, 0
volumescale = 100
channel = 1

[state 1705, Increment Position]
type = posadd
trigger1 = animelemno(0) % 2 = 0
trigger1 = !animelemtime(animelemno(0))
x = 1.0

[state 1705, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = 5.0 * (var(22) = 1) + 9.0 * (var(22) = 2) + 13.0 * (var(22) = 3)
persistent = 0

[state 1705, Effect]
type = makedust
trigger1 = animelemno(0) = 2
trigger2 = animelemno(0) = 4
trigger3 = animelemno(0) = 6
pos = 13, 0
pos2 = -27, 0
ignorehitpause = 1

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 10 || var(19)) && !var(11)
trigger1 = !animelemtime(2)
attr = S, SA
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0))), 7
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 112), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -4.0, -8.7890625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 16, 8
givepower = 8, 8
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 10 || var(19)) && !var(11)
trigger1 = !animelemtime(4)
attr = S, SA
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0))), 7
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -72)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -4.0, -8.7890625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 16, 8
givepower = 8, 8
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 10 || var(19)) && !var(11)
trigger1 = !animelemtime(6)
attr = S, SA
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0))), 7
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -32)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -4.0, -8.7890625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 16, 8
givepower = 8, 8
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1705, End State]
type = changeState
triggerall = time > 13
triggerall = !var(42) || ailevel && roundstate != 2
trigger1 = !animtime
trigger2 = !animelemtime(3)
trigger3 = !animelemtime(5)
trigger4 = !animelemtime(7)
value = 1710
ctrl = 0

;=========================================================================
; Cool Down
;=========================================================================
[Statedef 1710]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1710, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1710, Change Animation]
type = changeanim
trigger1 = !time
value = 1710 + var(22) - 1

[state 1710, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
;Yoga Levitation
;=========================================================================
[Statedef 1800]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1800, Level]
type = null
trigger1 = !time
trigger1 = var(22) := cond(statetype != A, 1, 2)

[state 1800, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1800, Change Animation]
type = changeanim
trigger1 = anim != 1801
trigger1 = !time
value = 1800

[state 1800,roop]
type = statetypeset
trigger1 = !time
statetype = A

[state 1800, Turn]
type = turn
triggerall = p2dist x < -const(size.air.back)
trigger1 = anim = 1800
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1801

[state 1800, Voice]
type = playsnd
trigger1 = anim = 1800
trigger1 = !animelemtime(1)
value = 180, 1
volumescale = 100
channel = 0

[state 1800, Increment Position]
type = posadd
trigger1 = var(22) = 1
trigger1 = anim = 1800
trigger1 = animelemtime(6) < 0
y = -2.5

[state 1800, Set Position]
type = posset
triggerall = pos y >= -16
trigger1 = anim = 1800
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1801
y = -16.0

[state 1800, Set Velocity]
type = velset
triggerall = !ailevel
triggerall = numhelper(4000)
triggerall = helper(4000),var(41)
trigger1 = anim = 1800
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1801
x = 4.0 * command = "holdfwd" - 4.0 * command = "holdback"
y = 4.0 * command = "holddown" - 4.0 * command = "holdup"

[state 1800, Set Velocity]
type = velset
triggerall = screenpos y <= gameheight * 0.5
trigger1 = anim = 1800
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1801
y = 4.0

[state 1800, End State]
type = changestate
trigger1 = !numhelper(4000)
trigger2 = time
trigger2 = numhelper(4000)
trigger2 = !helper(4000),var(41)
trigger3 = roundstate != 2 || win
value = 1805
ctrl = 0

;=========================================================================
; Fall
;=========================================================================
[Statedef 1805]
type = A
movetype = I
physics = N
ctrl = 1
velset = 0, 0
sprpriority = 1

[state 1805, Change Animation]
type = changeanim
trigger1 = !time
value = 41
elem = 12

[state 1805, Voice]
type = playsnd
trigger1 = !animelemtime(12)
value = 180, 1
volumescale = 100
channel = 0

[state 1805, Increment Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 1805, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52