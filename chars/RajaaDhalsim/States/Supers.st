; Dhalsim By RajaaBoy

;=========================================================================
; Yoga Stream
;=========================================================================
[StateDef 3000]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 3000, Level]
type = null
trigger1 = !time
; Button Level
trigger1 = var(22) := cond(ailevel, var(22), cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3)))
; Power Level, Super Cancel Level
trigger1 = var(22) := cond(power < 2000 && var(22) > 1 || var(18), 1, cond(power < 3000 && var(22) = 3, 2, var(22)))
; Juggle, Dampener
trigger1 = var(23) := cond(var(22) = 1, 3, cond(var(22) = 2, 4, 5))
; Cornerpush, Helper Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3000, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3000, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3000, Change Animation]
type = changeanim
trigger1 = !time
value = 3000

[state 3000, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3000, Super Effect]
type = helper
trigger1 = anim = 3000
trigger1 = !animelemtime(2)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3000, Super Pause]
type = superpause
trigger1 = anim = 3000
trigger1 = !animelemtime(2)
time = 48
movetime = 48
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3000, Vulnerability]
type = nothitby
trigger1 = anim = 3000
trigger1 = animelemtime(2) <= 48
value = SCA
time = 3 * var(22)

[state 3000, Frame Time]
type = null
trigger1 = !time
trigger1 = var(0) := 24 * (var(22) = 1) + 48 * (var(22) = 2) + 72 * (var(22) = 3) ; 25, 50, 75
trigger2 = animelemtime(5) > 0 && var(0)
trigger2 = var(0) := var(0) - 1

[state 3000, Change Animation]
type = changeanim
triggerall = animelemtime(5) > 0
trigger1 = anim = 3000 && var(0) <= 0
trigger2 = numhelper(var(46))
trigger2 = helper(var(46)),var(0) >= helper(var(46)),var(23)
trigger3 = !numhelper(var(46))
value = 3001
persistent = 0

[state 3000, Voice]
type = playsnd
trigger1 = anim = 3000
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = anim = 3000
trigger1 = !animelemtime(4)
value = 3000, 0
volumescale = 100
channel = 0

[state 3000, Sound]
type = playsnd
trigger1 = anim = 3000
trigger1 = !animelemtime(5)
value = 3, 4
volumescale = 100

[state 3000, Width]
type = helper
trigger1 = !animelemtime(4)
name = "Width"
ID = 9998
stateno = 9998
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.ground.front = 0
size.ground.back = 0

[state 3000, Yoga Stream]
type = helper
trigger1 = anim = 3000
trigger1 = !animelemtime(5)
name = "Yoga Stream"
ID = var(46) := cond((var(46) + 1 != [3005, 3099]), 3005, var(46) + 1)
stateno = 3005
postype = p1
pos = 64, -16
ownpal = 1
keyctrl = 0
size.xscale = 1.1
size.yscale = 0.55

[state 3000, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3000, Idle]
type = statetypeset
trigger1 = anim = 3001
movetype = I
persistent = 0

[state 3000, End State]
type = changestate
trigger1 = anim = 3001
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3005]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3005, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3006

[state 3005, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3005, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3005, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(root,var(12) <= var(23), 1.0, 0.65) + (0.10 * var(9))

[state 3005, Change Animation]
type = changeanim
trigger1 = !prevstateno
trigger1 = !time
value = 3005

[state 3005, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3000
trigger1 = parent,anim = 3000
pos = 64, -16

[state 3005, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3005, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3005, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3007
slot = 0
time = -1
forceair = 0

[state 3005, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3005, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3005, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, HP
damage = ceil(cond(cond(var(22) = 1, 53, cond(var(22) = 2, 62, 74)) * fvar(0) < 7, 7, cond(var(22) = 1, 53, cond(var(22) = 2, 62, 74)) * fvar(0))), 13
guardflag = L
hitflag = M
priority = 4, Hit
pausetime = 0, 10 - 2 * (var(0) >= var(23) - 1)
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 120), 0 * (var(8) := -8)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -5.0, -7.6171875 * (var(0) >= var(23) - 1)
guard.velocity = -6.0
air.velocity = -5.0, -7.6171875 * (var(0) >= var(23) - 1)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = var(0) >= var(23) - 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
; fall.animtype = back
forcestand = 1

[state 3005, Hit]
type = hitdef
trigger1 = var(19)
trigger1 = !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, HP
damage = ceil(cond(cond(var(22) = 1, 53, cond(var(22) = 2, 62, 74)) * fvar(0) < 7, 7, cond(var(22) = 1, 53, cond(var(22) = 2, 62, 74)) * fvar(0))), 13
guardflag = L
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 10 - 2 * (var(0) >= var(23) - 1)
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 120), 0 * (var(8) := -8)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -5.0, -7.6171875 * (var(0) >= var(23) - 1)
guard.velocity = -10.0
air.velocity = -5.0, -7.6171875 * (var(0) >= var(23) - 1)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = var(0) >= var(23) - 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
; fall.animtype = back
forcestand = 1

[state 3005, End State]
type = changestate
trigger1 = parent,stateno != 3000
trigger2 = parent,anim != 3000
trigger3 = parent,movetype = H
trigger4 = !ishelper(parent,var(46))
value = 3008

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3006]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3006, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3006, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3006, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3006, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3006, Custom Cancel]
type = parentvarset
trigger1 = var(22) = 2 && var(0) >= var(23)
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 2

[state 3006, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3006, Change Animation]
type = changeanim
trigger1 = !animelemtime(26)
value = anim
elem = 10

[state 3006, Change Animation]
type = changeanim
trigger1 = time && time % 2 = 0
value = anim
elem = animelemno(0) + 1

[state 3006, Prevent Parent Change Animation]
type = parentvaradd
trigger1 = parent,stateno = 3000
trigger1 = parent,anim = 3000
trigger1 = parent,animelemtime(5) > 0
var(0) = 1

[state 3006, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3000
trigger1 = parent,anim = 3000
pos = 64, -16

[state 3006, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3006, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3006, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3006, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3006, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3007
slot = 0
time = -1
forceair = 0

[state 3006, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3006, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 3006, Hit Spark]
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

[state 3006, Super Finish]
type = helper
triggerall = winko && var(38)
triggerall = playeridexist(var(38)) && !numhelper(6210)
trigger1 = playerid(var(38)),loseko
trigger1 = movehit = [1, 8]
name = "Super Finish"
ID = 6210
stateno = 6210
postype = left
pos = ceil(gamewidth * 0.5), -ceil(gameheight * 0.5)
ownpal = 1
keyctrl = 0
size.xscale = 0.8
size.yscale = 0.8
pausemovetime = 65536
supermovetime = 65536
persistent = 0

[state 3006, Fire]
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

[state 3006, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3006, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3006, End State]
type = changestate
trigger1 =  time > 8
value = 3005 + 3 * (var(0) >= var(23))

[state 3006, End State]
type = changestate
trigger1 = !ishelper(parent,var(46))
value = 3008

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 3007]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3007, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3007, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3000
trigger1 = parent,anim = 3000
pos = 64, -16

[state 3007, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3007, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3007, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3007, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3007, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3007
slot = 0
time = -1
forceair = 0

[state 3007, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3007, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 3007, Hit Spark]
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

[state 3007, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3007, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3007, End State]
type = changestate
trigger1 = !time
value = 3005 + 3 * (var(0) >= var(23))

[state 3007, End State]
type = changestate
trigger1 = !ishelper(parent,var(46))
value = 3008

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3008]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3008, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 3

[state 3008, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3008, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3008, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Volcano
;=========================================================================
[StateDef 3100]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 3100, Level]
type = null
trigger1 = !time
; Button Level
trigger1 = var(22) := cond(ailevel, var(22), cond(command = "a" || command = "NE_a", 1, cond(command = "b" || command = "NE_b", 2, 3)))
; Power Level, Super Cancel Level
trigger1 = var(22) := cond(power < 2000 && var(22) > 1 || var(18), 1, cond(power < 3000 && var(22) = 3, 2, var(22)))
; Juggle, Dampener
trigger1 = var(23) := cond(var(22) = 1, 3, cond(var(22) = 2, 4, 5))
; Cornerpush, Helper Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3100, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3100, Change Animation]
type = changeanim
trigger1 = !time
value = 3100

[state 3100, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3100, Super Effect]
type = helper
trigger1 = anim = 3100
trigger1 = !animelemtime(2)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3100, Super Pause]
type = superpause
trigger1 = anim = 3100
trigger1 = !animelemtime(2)
time = 48
movetime = 48
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3100, Vulnerability]
type = nothitby
trigger1 = anim = 3100
trigger1 = animelemtime(2) <= 48
value = SCA
time = 3 * var(22)

[state 3100, Frame Time]
type = null
trigger1 = !time
trigger1 = var(0) := 24 * (var(22) = 1) + 48 * (var(22) = 2) + 72 * (var(22) = 3) ; 25, 50, 75
trigger2 = animelemtime(5) > 0 && var(0)
trigger2 = var(0) := var(0) - 1

[state 3100, Change Animation]
type = changeanim
triggerall = animelemtime(5) > 0
trigger1 = anim = 3100 && var(0) <= 0
trigger2 = numhelper(var(47))
trigger2 = helper(var(47)),var(0) >= helper(var(47)),var(23)
trigger3 = !numhelper(var(47))
value = 3101
persistent = 0

[state 3100, Voice]
type = playsnd
trigger1 = anim = 3100
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 3100, Sound]
type = playsnd
trigger1 = anim = 3100
trigger1 = !animelemtime(4)
value = 3, 4
volumescale = 100

[state 3100, Yoga Stream]
type = helper
trigger1 = anim = 3100
trigger1 = !animelemtime(5)
name = "Yoga Stream"
ID = var(47) := cond((var(47) + 1 != [3105, 3199]), 3105, var(47) + 1)
stateno = 3105
postype = p1
pos = 40, -80
ownpal = 1
keyctrl = 0
size.xscale = 1.15
size.yscale = 0.85

[state 3100, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3100, Idle]
type = statetypeset
trigger1 = anim = 3101
movetype = I
persistent = 0

[state 3100, End State]
type = changestate
trigger1 = anim = 3101
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3105]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3105, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3106

[state 3105, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3105, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3105, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(root,var(12) <= var(23), 1.0, 0.65) + (0.10 * var(9))

[state 3105, Change Animation]
type = changeanim
trigger1 = !prevstateno
trigger1 = !time
value = 3105

[state 3105, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3100
trigger1 = parent,anim = 3100
pos = 40, -80

[state 3105, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3105, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3105, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3107
slot = 0
time = -1
forceair = 0

[state 3105, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3105, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3105, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
; trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, HP
damage = ceil(cond(cond(var(22) = 1, 58, cond(var(22) = 2, 66, 77)) * fvar(0) < 7, 7, cond(var(22) = 1, 58, cond(var(22) = 2, 66, 77)) * fvar(0))), 13
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10 - 2 * (var(0) >= var(23) - 1)
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104 
ground.velocity = -3.0, -8.7890625 * (var(0) >= var(23) - 1)
guard.velocity = -10.0
air.velocity = -3.0, -8.7890625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = (var(0) >= (var(23) - 1))
air.fall = 1
fall.recover = 0
fall.recovertime = 96
; fall.animtype = back
forcestand = 1

[state 3105, End State]
type = changestate
trigger1 = parent,stateno != 3100
trigger2 = parent,anim != 3100
trigger3 = parent,movetype = H
trigger4 = !ishelper(parent,var(47))
value = 3108

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3106]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3106, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3106, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3106, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3106, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3106, Custom Cancel]
type = parentvarset
trigger1 = var(22) = 2 && var(0) >= var(23)
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 2

[state 3106, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3106, Change Animation]
type = changeanim
trigger1 = !animelemtime(24)
value = anim
elem = 8

[state 3106, Change Animation]
type = changeanim
trigger1 = time && time % 2 = 0
value = anim
elem = animelemno(0) + 1

[state 3106, Prevent Parent Change Animation]
type = parentvaradd
trigger1 = parent,stateno = 3100
trigger1 = parent,anim = 3100
trigger1 = parent,animelemtime(5) > 0
var(0) = 1

[state 3106, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3100
trigger1 = parent,anim = 3100
pos = 40, -80

[state 3106, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3106, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3106, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3106, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3106, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3107
slot = 0
time = -1
forceair = 0

[state 3106, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3106, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 3106, Hit Spark]
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

[state 3106, Super Finish]
type = helper
triggerall = winko && var(38)
triggerall = playeridexist(var(38)) && !numhelper(6210)
trigger1 = playerid(var(38)),loseko
trigger1 = movehit = [1, 8]
name = "Super Finish"
ID = 6210
stateno = 6210
postype = left
pos = ceil(gamewidth * 0.5), -ceil(gameheight * 0.5)
ownpal = 1
keyctrl = 0
size.xscale = 0.8
size.yscale = 0.8
pausemovetime = 65536
supermovetime = 65536
persistent = 0

[state 3106, Fire]
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

[state 3106, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3106, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3106, End State]
type = changestate
trigger1 = time > 8
value = 3105 + 3 * (var(0) >= var(23))

[state 3106, End State]
type = changestate
trigger1 = !ishelper(parent,var(47))
value = 3108

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 3107]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3107, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3107, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3100
trigger1 = parent,anim = 3100
pos = 40, -80

[state 3107, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3107, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3107, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3107, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3107, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3107
slot = 0
time = -1
forceair = 0

[state 3107, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3107, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 3107, Hit Spark]
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

[state 3107, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3107, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3107, End State]
type = changestate
trigger1 = !time
value = 3105 + 3 * (var(0) >= var(23))

[state 3107, End State]
type = changestate
trigger1 = !ishelper(parent,var(47))
value = 3108

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3108]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3108, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 1

[state 3108, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3108, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3108, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Strike
;=========================================================================
[Statedef 3300]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 3300, Level]
type = null
trigger1 = !time
; Button Level
trigger1 = var(22) := cond(ailevel, var(22), cond(command = "a" || command = "NE_a", 1, cond(command = "b" || command = "NE_b", 2, 3)))
; Power Level, Super Cancel Level
trigger1 = var(22) := cond(power < 2000 && var(22) > 1 || var(18), 1, cond(power < 3000 && var(22) = 3, 2, var(22)))
; Juggle, Dampener
trigger1 = var(23) := cond(var(22) = 1, 1, cond(var(22) = 2, 2, 3))
; Cornerpush, Helper Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3300, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3300, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3300, Change Animation]
type = changeanim
trigger1 = !time
value = 3300

[state 3300, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3300, Super Effect]
type = helper
trigger1 = !animelemtime(4)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3300, Super Pause]
type = superpause
trigger1 = !animelemtime(4)
time = 48
movetime = 48
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3300, Vulnerability]
type = nothitby
trigger1 = animelemtime(5) <= 2
value = SCA
time = 3 * var(22)

[state 3300, Set State Type]
type = statetypeset
trigger1 = !animelemtime(6)
statetype = A
physics = N

[state 3300, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 3300, Voice]
type = playsnd
trigger1 = !animelemtime(6)
value = 2, 2
volumescale = 100
channel = 0

[state 3300, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = 40, 0
volumescale = 100

[state 3300, Set Velocity]
type = velset
trigger1 = !animelemtime(6)
x = 2.75
y = -9.0

[state 3300, Multiply Velocity]
type = velmul
trigger1 = animelemtime(6) > 0
x = 0.99

[state 3300, Increment Velocity]
type = veladd
trigger1 = animelemtime(6) > 0
y = const(movement.yaccel)

[state 3300, Jump Smoke]
type = helper
trigger1 = !animelemtime(6)
name = "Jump Smoke"
ID = 6000
stateno = 6000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 3300, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = animelemtime(10) >= 0
trigger1 = animelemtime(11) < 0
attr = A, HT
damage = 0
guardflag = 
hitflag = MAF
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
fall.recover = 0
forcestand = 1
ID = 3300
nochainID = 450
p1stateno = 3310
numhits=0

[state 3300, Idle]
type = statetypeset
trigger1 = !animelemtime(11)
movetype = I

[state 3300, End State]
type = changestate
trigger1 = animelemtime(6) >= 0
trigger1 = pos y + vel y > 0
value = 3305
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 3305]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3305, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3305, Change Animation]
type = changeanim
trigger1 = !time
value = 3305

[state 3305, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 3305, Land Smoke]
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

[state 3305, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Capture
;=========================================================================
[Statedef 3310]
type = A
movetype = A
physics = N
ctrl = 0
velset = vel x, vel y
sprpriority = 1

[state 3310, Change Animation]
type = changeanim
trigger1 = !time
value = 3310

[state 3310, Multiply Velocity]
type = velmul
trigger1 = 1
x = 0.92

[state 3310, Increment Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)


[state 3310, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 3310, Target State]
type = targetstate
trigger1 = numtarget(3300)
trigger1 = target(3300),stateno != 3320
value = 3320
ID = 3300

[state 3305, Target Bind]
type = targetbind
trigger1 = 1
pos = 24, -80
ID = 3300

[state 3305,sira]
type = changestate
trigger1 = pos y + vel y > 0
value = 3311
ctrl = 0

;=========================================================================
; Initial Slam
;=========================================================================
[Statedef 3311]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 3311, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3311, Change Animation]
type = changeanim
trigger1 = !time
value = 3311

[state 3311, Width]
type = width
trigger1 = !animelemtime(7)
edge = 32, 152

[state 3311, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 52, 0
volumescale = 100

[state 3311, Voice]
type = playsnd
trigger1 = !animelemtime(7)
value = 1500, 0
volumescale = 100
channel = 0

[state 3311, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 5100, 1
volumescale = 100

[state 3311, Shake]
type = envshake
trigger1 = !animelemtime(7)
time = 10
ampl = 10

[state 3311, Add Hit]
type = hitadd
trigger1 = !animelemtime(7)
value = 1

[state 3311, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 3311, Slam Counter]
type = varadd
trigger1 = !animelemtime(7)
var(0) = 1

[state 3311, Target State]
type = targetstate
trigger1 = !time
value = 3321
ID = 3300

[state 3311, Target Facing]
type = targetfacing
trigger1 = !animelemtime(4)
value = -1
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 24, -80
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 28, -80
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 28, -80
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = 28, -80
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
pos = 24, -80
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0
pos = 16, -84
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(8) < 0
pos = -104, 0
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = var(0) < var(22)
trigger1 = animelemtime(8) >= 0
trigger1 = animelemtime(9) < 0
pos = -96, 0
ID = 3300

[state 3311, Target Bind]
type = targetbind
trigger1 = var(0) < var(22)
trigger1 = animelemtime(9) >= 0
pos = -76, 0
ID = 3300

[state 3311, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(7)
value = ceil(cond(200 * fvar(0) < 7, -7, -200 * fvar(0)))
kill = var(0) = var(22)
ID = 3300

[state 3311, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(7)
value = 48
ID = 3300

[state 3311, Target State]
type = targetstate
trigger1 = var(0) < var(22)
trigger1 = !animelemtime(7)
value = 3322
ID = 3300

[state 3311, Target State]
type = targetstate
trigger1 = var(0) = var(22)
trigger1 = !animelemtime(7)
value = 3325
ID = 3300

[state 3311, Add Power]
type = poweradd
trigger1 = !animelemtime(7)
value = 0

[state 3311, Juggle - Hits / Juggle - Never / Dampener - Hits]
type = null
trigger1 = !animelemtime(7)
trigger1 = var(10) := var(10) + 1 || var(12) := var(12) + 1

[state 3311, Effect]
type = explod
trigger1 = !animelemtime(7)
anim = f62
postype = p1
pos = -104, 0
bindtime = 1
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 3311, End State]
type = changestate
trigger1 = !animtime
value = 3312 + 3 * (var(0) = var(22))
ctrl = 0

;=========================================================================
; Slam Loop
;=========================================================================
[Statedef 3312]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 3312, Change Animation]
type = changeanim
trigger1 = !time
value = 3312

[state 3312, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = -1.171875
y = -5.46875

[state 3312, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0
y = 0.5859375

[state 3312, Jump Smoke]
type = helper
trigger1 = !animelemtime(2)
name = "Jump Smoke"
ID = 6000
stateno = 6000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 3312, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 3312, Target State]
type = targetstate
trigger1 = !time
value = 3323
ID = 3300

[state 3312, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = -76, 0

[state 3312, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 8, -16

[state 3312, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
pos = 56, -40

[state 3312, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 3313
ctrl = 0

;=========================================================================
; Slam Loop
;=========================================================================
[Statedef 3313]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 3313, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3313, Change Animation]
type = changeanim
trigger1 = !time
value = 3313

[state 3313, Width]
type = width
trigger1 = !animelemtime(6)
edge = 0, 152

[state 3313, Sound]
type = playsnd
trigger1 = !time
value = 52, 0
volumescale = 100

[state 3313, Voice]
type = playsnd
trigger1 = !animelemtime(6)
value = 1500, 0
volumescale = 100
channel = 0

[state 3313, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = 5100, 1
volumescale = 100

[state 3313, Shake]
type = envshake
trigger1 = !animelemtime(6)
time = 10
ampl = 10

[state 3313, Add Hit]
type = hitadd
trigger1 = !animelemtime(6)
value = 1

[state 3313, Attak Distance]
type = attackdist
trigger1 = !time
value = 0

[state 3313, Slam Counter]
type = varadd
trigger1 = !animelemtime(6)
var(0) = 1

[state 3313, Target State]
type = targetstate
trigger1 = !time
value = 3324
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 28, -80
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 28, -80
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 28, -80
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = 24, -80
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
pos = 16, -84
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0
pos = -104, 0
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = var(0) < var(22)
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(8) < 0
pos = -96, 0
ID = 3300

[state 3313, Target Bind]
type = targetbind
trigger1 = var(0) < var(22)
trigger1 = animelemtime(8) >= 0
pos = -76, 0
ID = 3300

[state 3313, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(6)
value = ceil(cond(100 * fvar(0) < 7, -7, -100 * fvar(0)))
kill = var(0) = var(22)
ID = 3300

[state 3313, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(6)
value = 48
ID = 3300

[state 3313, Target State]
type = targetstate
trigger1 = var(0) < var(22)
trigger1 = !animelemtime(6)
value = 3322
ID = 3300

[state 3313, Target State]
type = targetstate
trigger1 = var(0) = var(22)
trigger1 = !animelemtime(6)
value = 3325
ID = 3300

[state 3313, Add Power]
type = poweradd
trigger1 = !animelemtime(6)
value = 0

[state 3313, Juggle - Hits / Juggle - Never / Dampener - Hits]
type = null
trigger1 = !animelemtime(6)
trigger1 = var(10) := var(10) + 1 || var(12) := var(12) + 1

[state 3313, Effect]
type = explod
trigger1 = !animelemtime(6)
anim = f62
postype = p1
pos = -104, 0
bindtime = 1
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 3313, End State]
type = changestate
trigger1 = !animtime
value = 3312 + 3 * (var(0) = var(22))
ctrl = 0

;=========================================================================
; Release Target
;=========================================================================
[Statedef 3315]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1

[state 3315, Change Animation]
type = changeanim
trigger1 = !time
value = 3315

[state 3315, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = -1.5
y = -7.0

[state 3315, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0
y = const(movement.yaccel)

[state 3315, Jump Smoke]
type = helper
trigger1 = !animelemtime(2)
name = "Jump Smoke"
ID = 6000
stateno = 6000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 3315, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 3305
ctrl = 0

;=========================================================================
; Target Captured
;=========================================================================
[Statedef 3320]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 3320, Change Animation]
type = changeanim2
trigger1 = !time
value = 3320

[state 3320, After Image]
type = afterimage
trigger1 = numenemy
trigger1 = enemynear,name = "RajaaDhalsim"
trigger1 = enemynear,var(22) = [1, 3]
trigger1 = !time
time = 999
length = 15
palbright = 0,0,0
palcontrast = 144 - (96 * (enemynear,var(22) = 2)), 144 - (96 * (enemynear,var(22) = 3)), 144 - (96 * (enemynear,var(22) = [2, 3]))
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.5, 0.5, 0.5
timegap = 2
framegap = 5
trans = add1

[state 3320, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0

[state 3320, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Captured
;=========================================================================
[Statedef 3321]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 3321, Change Animation]
type = changeanim2
trigger1 = !time
value = 3321

[state 3321,bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[state 3321, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Slammed
;=========================================================================
[Statedef 3322]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 3322, Change Animation]
type = changeanim2
trigger1 = !time
value = 3322

[state 3322,roop]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0

[state 3322, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Captured
;=========================================================================
[Statedef 3323]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 3323, Change Animation]
type = changeanim2
trigger1 = !time
value = 3323

[state 3323,roop]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[state 3323, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Captured
;=========================================================================
[Statedef 3324]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 3324, Change Animation]
type = changeanim2
trigger1 = !time
value = 3324

[state 3324,roop]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[state 3324, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Slammed
;=========================================================================
[Statedef 3325]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = -1

[state 3325, Change Animation]
type = changeanim2
trigger1 = !time
value = 3325

[state 3325, Change Animation]
type = changeanim2
trigger1 = time = 14
value = 3326

[state 3325, After Image]
type = afterimagetime
trigger1 = !time

[state 3325, Increment Position]
type = posadd
trigger1 = time = 14
x = 48

[state 3325, Set Velocity]
type = velset
trigger1 = time = 14
x = 3.0
y = -9.0

[state 3325, Increment Velocity]
type = veladd
trigger1 = time > 14
y = 0.5859375

[state 3325, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10

[state 3325, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100
ctrl = 0

;=========================================================================
; Yoga Drill
;=========================================================================
[Statedef 3400]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = 0, 0
sprpriority = 1

[state 3400, Level]
type = null
; Level, Juggle
trigger1 = !time
trigger1 = var(22) := 2 || var(23) := 31
; Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3400, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3400, Change Animation]
type = changeanim
trigger1 = !time
value = 3400

[state 3400, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3000, Super Effect]
type = helper
trigger1 = anim = 3400
trigger1 = !animelemtime(1)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3400, Super Pause]
type = superpause
trigger1 = anim = 3400
trigger1 = !animelemtime(1)
time = 48
movetime = 48
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3400, Vulnerability]
type = nothitby
trigger1 = anim = 3400
value = SCA
time = 3 * var(22)

[state 3400, Change Animation]
type = varset
trigger1 = !ailevel
trigger1 = !time
var(0) = cond(command = "a" || command = "NE_a", 1, cond(command = "b" || command = "NE_b", 2, 3))

[state 3400, Change Animation]
type = varset
trigger1 = ailevel
trigger1 = !time
var(0) = cond(random < 500, 1, cond(random < 500, 2, 3))

[state 3400, Change Animation]
type = changeanim
trigger1 = anim = 3400
trigger1 = !animtime
value = 3405 + var(0) - 1

[state 3400, Voice]
type = playsnd
trigger1 = anim = 3400
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 3400, Sound]
type = playsnd
trigger1 = anim != 3400
trigger1 = time % 5 = 0
value = 1, 3
volumescale = 100
channel = 1

[state 3400, Set Velocity]
type = velset
trigger1 = anim = [3405, 3407]
trigger1 = !animelemtime(1)
x = 3.5 * (var(0) = 1) + 2.5 * (var(0) = 2) + 1.5 * (var(0) = 3)
y = 1.5 * (var(0) = 1) + 2.5 * (var(0) = 2) + 3.5 * (var(0) = 3)
persistent = 0

[state 3400, Set Velocity]
type = velset
trigger1 = anim != 3400
x = 3.5 * (anim = 3405 || anim = 3410) + 2.5 * (anim = 3406 || anim = 3411) + 1.5 * (anim = 3407 || anim = 3412)

[state 3400, Increment Velocity]
type = veladd
trigger1 = !ailevel
trigger1 = anim != 3400
trigger1 = command = "holdup"
trigger1 = vel y >= -5.0
y = -0.15

[state 3400, Increment Velocity]
type = veladd
trigger1 = !ailevel
trigger1 = anim != 3400
trigger1 = command = "holddown"
trigger1 = vel y <= 5.0
y = 0.15

[state 3400, Increment Velocity]
type = veladd
trigger1 = ailevel
trigger1 = anim != 3400
trigger1 = pos y + const(size.mid.pos.y) > enemynear,pos y + enemynear,const(size.head.pos.y)
trigger1 = vel y >= -5.0
y = cond(pos y > -16, -0.15, -0.5)

[state 3400, Increment Velocity]
type = veladd
trigger1 = ailevel
trigger1 = anim != 3400
trigger1 = pos y + const(size.mid.pos.y) < enemynear,pos y + enemynear,const(size.head.pos.y)
trigger1 = vel y <= 5.0
y = cond(p2dist y - 56 > 15, 0.15, 0.5)

[state 3400, Set Velocity]
type = velset
trigger1 = anim != 3400
trigger1 = screenpos y < gameheight * 0.5
y = 2.0

[state 3400, Change Animation]
type = changeanim
trigger1 = anim != 3400 && anim != 3405
trigger1 = vel y = [0.1, 2.0]
value = 3405

[state 3400, Change Animation]
type = changeanim
trigger1 = anim != 3400 && anim != 3406
trigger1 = vel y = [2.1, 3.0]
value = 3406

[state 3400, Change Animation]
type = changeanim
trigger1 = anim != 3400 && anim != 3407
trigger1 = vel y >= 3.1
value = 3407

[state 3400, Change Animation]
type = changeanim
trigger1 = anim != 3400 && anim != 3410
trigger1 = vel y = [-2.0, -0.1]
value = 3410

[state 3400, Change Animation]
type = changeanim
trigger1 = anim != 3400 && anim != 3411
trigger1 = vel y = [-3.0, -2.1]
value = 3411

[state 3400, Change Animation]
type = changeanim
trigger1 = anim != 3400 && anim != 3412
trigger1 = vel y <= -3.1
value = 3412

[state 3400, Turn]
type = turn
trigger1 = !ailevel
trigger1 = anim != 3400
trigger1 = command = "holdback"
ignorehitpause = 1

[state 3400, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = anim = [3405, 3407]
trigger1 = animelemno(0) = [1, 4]
trigger1 = !animelemtime(animelemno(0))
attr = A, HA
damage = ceil(cond(7 * fvar(0) < 7, 7, 7 * fvar(0))), 2
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 5, 7
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -32)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.0, -5.859375
guard.velocity = -7.0
air.velocity = -3.5, -5.859375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3400, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = anim = [3410, 3412]
trigger1 = animelemno(0) = [1, 4]
trigger1 = !animelemtime(animelemno(0))
attr = A, HA
damage = ceil(cond(7 * fvar(0) < 7, 7, 7 * fvar(0))), 2
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 5, 7
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -72)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.0, -5.859375
guard.velocity = -7.0
air.velocity = -3.5, -5.859375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3400, End State]
type = changestate
triggerall = !ailevel
triggerall = anim != 3400 && time > 98
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
trigger3 = time > 248
value = 3415
ctrl = 0

[state 3400, End State]
type = changestate
triggerall = ailevel
triggerall = anim != 3400 && time > 198
trigger1 = !numtarget
trigger2 = time > 248
value = 3415
ctrl = 0

[state 3400, End State]
type = changestate
trigger1 = anim != 3400
trigger1 = animelemtime(2) > 0
trigger1 = pos y - 20 + vel y > 0
value = 3420
ctrl = 0

;=========================================================================
; Fall
;=========================================================================
[Statedef 3415]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1

[state 3415, Change Animation]
type = changeanim
trigger1 = !time
value = 3415

[state 3415, Set Velocity]
type = velmul
trigger1 = 1
x = 0.9

[state 3415, Increment Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 3415, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 3420
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 3420]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3420, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3420, Change Animation]
type = changeanim
trigger1 = !time
value = 3420

[state 3420, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 3420, Land Smoke]
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

[state 3420, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Yoga Legend
;=========================================================================
[Statedef 3500]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 3500, Level]
type = null
trigger1 = !time
; Button Level
trigger1 = var(22) := cond(ailevel, var(22), cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3)))
; Power Level, Super Cancel Level
trigger1 = var(22) := cond(power < 2000 && var(22) > 1 || var(18), 1, cond(power < 3000 && var(22) = 3, 2, var(22)))
; Juggle, Dampener
trigger1 = var(23) := cond(var(22) = 1, 4, cond(var(22) = 2, 7, 10))
; Cornerpush, Helper Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3500, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3500, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3500, Change Animation]
type = changeanim
trigger1 = !time
value = 3500

[state 3500, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3500, Super Effect]
type = helper
trigger1 = !animelemtime(2)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3500, Super Pause]
type = superpause
trigger1 = !animelemtime(2)
time = 48
movetime = 48
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3500, Vulnerability]
type = nothitby
trigger1 = animelemtime(2) <= 48
value = SCA
time = 3 * var(22)

[state 3500, Loop]
type = varset
trigger1 = !time
var(0) = cond(var(22) = 1, 0, cond(var(22) = 2, 1, 2))

[state 3500, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 1600, 0
volumescale = 100
channel = 0

[state 3500, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 5000, 1
volumescale = 100
channel = 0

[state 3500, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 3500, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(3)
attr = S, HA
damage = ceil(cond(100 * fvar(0) < 7, 7, 100 * fvar(0))), 12
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -88)
animtype = up
ground.type = low
air.animtype = up
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.5859375, -12.5
guard.velocity = -15.0
air.velocity = -0.5859375, -12.5
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = up
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3500, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(4)
trigger1 = !movecontact && !movereversed
attr = S, HA
damage = ceil(cond(83 * fvar(0) < 7, 7, 83 * fvar(0))), 8
guardflag = M
hitflag = AF 
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -88)
animtype = up
ground.type = low
air.animtype = up
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.5859375, -12.5
guard.velocity = -15.0
air.velocity = -0.5859375, -12.5
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = up
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3500, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 3500, End State]
type = changestate
trigger1 = movehit && numtarget(3500)
trigger1 = animelemtime(5) >= 4
value = 3505

[state 3500, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Teleport Loop
;=========================================================================
[Statedef 3505]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1
hitcountpersist = 1

[state 3505, State Loop]
type = varset
trigger1 = prevstateno = 3500
trigger1 = !time
var(0) = var(22) - 1

[state 3505, Change Animation]
type = changeanim
trigger1 = !time
value = 3505

[state 3505, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3505, Vulnerability]
type = nothitby
trigger1 = animelemtime(9) < 0
value = SCA
time = 1

[state 3505, Solidity]
type = playerpush
trigger1 = animelemtime(8) < 0
value = 0

[state 3505, Turn]
type = turn
trigger1 = animelemtime(8) >= 0
trigger1 = animelemtime(9) < 0
trigger1 = p2dist x < 0

[state 3505, Transparency]
type = trans
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(8) < 0
trans = addalpha
alpha = 256 - 32 * animelemtime(7), 32 * animelemtime(7)

[state 3505, Transparency]
type = trans
trigger1 = animelemtime(9) >= 0
trigger1 = animelemtime(11) < 0
trans = addalpha
alpha = 32 * animelemtime(9), 256 - 32 * animelemtime(9)

[state 3505, Voice]
type = playsnd
trigger1 = !animelemtime(7)
value = 1500, 0
channel = 0

[state 3505, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 3, 2
volumescale = 100

[state 3505, Sound]
type = playsnd
trigger1 = !animelemtime(9)
value = 3, 3
volumescale = 100

[state 3505, Increment Position]
type = posadd
trigger1 = numtarget(3500)
trigger1 = !animelemtime(8)
x = (target(3500),pos x * facing - pos x * facing) + (56 - 112 * (target(3500),backedgedist <= 0))

[state 3505, Increment Position]
type = posadd
trigger1 = !numtarget(3500) && numenemy
trigger1 = !animelemtime(8)
x = p2dist x + (56 - 112 * (target(3500),backedgedist <= 0))

[state 3505, Increment Position]
type = posadd
trigger1 = numtarget(3500)
trigger1 = animelemtime(8) >= 0
trigger1 = animelemtime(9) < 0
y = target(3500),pos y - pos y - cond(target(3500),vel y > 0, -56, 8)

[state 3505, Increment Position]
type = posadd
trigger1 = !numtarget(3500) && numenemy
trigger1 = animelemtime(8) >= 0
trigger1 = animelemtime(9) < 0
y = enemynear,pos y - pos y - cond(enemynear,vel y > 0, -56, 8)

[state 3505, Increment Velocity]
type = veladd
trigger1 = animelemtime(14) > 0
y = 0.5859375

[state 3505, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 3505, End State]
type = changestate
trigger1 = numtarget(3500)
trigger1 = target(3500),statetype = A
trigger1 = animelemtime(9) >= 0
value = 3510 + !var(0)
ctrl = 0

[state 3505, End State]
type = changestate
trigger1 = animelemtime(14) > 0
trigger1 = pos y + vel y > 0
value = 3515
ctrl = 0

;=========================================================================
; Combo Loop
;=========================================================================
[Statedef 3510]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1
hitcountpersist = 1

[state 3510, State Loop]
type = varadd
trigger1 = !time
trigger1 = var(0)
var(0) = -1

[state 3510, Set Position]
type = posset
trigger1 = !time
trigger1 = pos y >= -8
y = -8

[state 3510, Change Animation]
type = changeanim
trigger1 = !time
value = 3510

[state 3510, Transparency]
type = trans
trigger1 = animelemtime(5) < 0
trans = addalpha
alpha = 32 * time, 256 - 32 * time

[state 3510, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger2 = !animelemtime(8)
trigger3 = !animelemtime(15)
value = 1500, 0
volumescale = 100
channel = 0

[state 3510, Increment Velocity]
type = veladd
trigger1 = animelemtime(19) > 0
y = 0.5859375

[state 3510, Hit]
type = hitdef
trigger1 = !animelemtime(3)
attr = A, HA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0))), 12
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.5859375, -3.125
guard.velocity = -8.0
air.velocity = -0.5859375, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3510, Hit]
type = hitdef
trigger1 = !animelemtime(8)
attr = A, HA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0))), 12
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.5859375, -3.125
guard.velocity = -8.0
air.velocity = -0.5859375, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3510, Hit]
type = hitdef
trigger1 = !animelemtime(15)
attr = A, HA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0))), 12
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -4.6875, -11.71875
guard.velocity = -8.0
air.velocity = -4.6875, -11.71875
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3510, Idle]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I
persistent = 0

[state 3510, End State]
type = changestate
trigger1 = movehit && numtarget(3500)
trigger1 = !animelemtime(19)
value = 3505

[state 3510, End State]
type = changestate
trigger1 = animelemtime(19) > 0
trigger1 = pos y + vel y > 0
value = 3515
ctrl = 0

;=========================================================================
; Combo Finish
;=========================================================================
[Statedef 3511]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1
hitcountpersist = 1

[state 3511, Set Position]
type = posset
trigger1 = !time
trigger1 = pos y >= -8
y = -8

[state 3511, Change Animation]
type = changeanim
trigger1 = !time
value = 3511

[state 3511, Transparency]
type = trans
trigger1 = animelemtime(5) < 0
trans = addalpha
alpha = 32 * time, 256 - 32 * time

[state 3511, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger2 = !animelemtime(8)
trigger3 = !animelemtime(13)
value = 1500, 0
volumescale = 100
channel = 0

[state 3511, Increment Velocity]
type = veladd
trigger1 = animelemtime(17) > 0
y = 0.5859375

[state 3511, Hit]
type = hitdef
trigger1 = !animelemtime(3)
attr = A, HA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0))), 12
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.5859375, -3.125
guard.velocity = -8.0
air.velocity = -0.5859375, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3511, Hit]
type = hitdef
trigger1 = !animelemtime(8)
attr = A, HA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0))), 12
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.5859375, -3.125
guard.velocity = -8.0
air.velocity = -0.5859375, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3511, Hit]
type = hitdef
trigger1 = !animelemtime(13)
attr = A, HA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0))), 12
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.03125, 12.5
guard.velocity = -8.0
air.velocity = -7.03125, 12.5
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 16, 16
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3500
nochainID = 450
p2facing = 1

[state 3511, Idle]
type = statetypeset
trigger1 = animelemtime(17) >= 0
movetype = I
persistent = 0

[state 3511, Control]
type = ctrlset
trigger1 = !animelemtime(17)
value = 1

[state 3511, End State]
type = changestate
trigger1 = animelemtime(17) > 0
trigger1 = pos y + vel y > 0
value = 3515
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 3515]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3515, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3515, Change Animation]
type = changeanim
trigger1 = !time
value = 3515

[state 3515, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 3515, Land Smoke]
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

[state 3515, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Yoga Tempest
;=========================================================================
[StateDef 3600]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 3600, Level]
type = null
; Level, Juggle
trigger1 = !time
trigger1 = var(22) := 2 || var(23) := 5
; Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3600, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3600, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3600, Change Animation]
type = changeanim
trigger1 = !time
value = 3600

[state 3600, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3600, Super Effect]
type = helper
trigger1 = anim = 3600
trigger1 = !animelemtime(2)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3600, Super Pause]
type = superpause
trigger1 = anim = 3600
trigger1 = !animelemtime(2)
time = 48
movetime = 48
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3600, Vulnerability]
type = nothitby
trigger1 = anim = 3600
trigger1 = animelemtime(2) <= 48
value = SCA
time = 3 * var(22)

[state 3600, Frame Time]
type = null
trigger1 = !time
trigger1 = var(0) := 80
trigger2 = animelemtime(5) > 0 && var(0)
trigger2 = var(0) := var(0) - 1

[state 3600, Change Animation]
type = changeanim
triggerall = animelemtime(5) > 0
trigger1 = anim = 3600 && var(0) <= 0
trigger2 = numhelper(var(48))
trigger2 = helper(var(48)),var(0) >= helper(var(48)),var(23)
trigger3 = !numhelper(var(48))
value = 3601
persistent = 0

[state 3600, Voice]
type = playsnd
trigger1 = anim = 3600
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 3600, Sound]
type = playsnd
trigger1 = anim = 3600
trigger1 = !animelemtime(4)
value = 3, 5
volumescale = 100

[state 3600, Width]
type = helper
trigger1 = !animelemtime(5)
name = "Width"
ID = 9998
stateno = 9998
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.ground.front = 0
size.ground.back = 0

[state 3600, Yoga Tempest]
type = helper
trigger1 = anim = 3600
trigger1 = !animelemtime(5)
name = "Yoga Tempest"
ID = var(48) := cond((var(48) + 1 != [3605, 3699]), 3605, var(48) + 1)
stateno = 3605
postype = p1
pos = 56, -48
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 0.6

[state 3600, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3600, Idle]
type = statetypeset
trigger1 = anim = 3601
movetype = I
persistent = 0

[state 3600, End State]
type = changestate
trigger1 = anim = 3601
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3605]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3605, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3606

[state 3605, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3605, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3605, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(root,var(12) <= var(23), 1.0, 0.65) + (0.10 * var(9))

[state 3605, Change Animation]
type = changeanim
trigger1 = !prevstateno
trigger1 = !time
value = 3605

[state 3605, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3600
trigger1 = parent,anim = 3600
pos = 56, -48

[state 3605, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3605, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3605, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3607
slot = 0
time = -1
forceair = 0

[state 3605, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3605, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3605, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, HP 
damage = ceil(cond(56 * fvar(0) < 7, 7, 56 * fvar(0))), 13
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 8
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 128), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.5 * (var(0) >= var(23) - 1), -7.5 * (var(0) >= var(23) - 1)
guard.velocity = -9.0
air.velocity = -3.5 * (var(0) >= var(23) - 1), -7.5 * (var(0) >= var(23) - 1)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = var(0) >= var(23) - 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = back
forcestand = 1

[state 3605, End State]
type = changestate
trigger1 = parent,stateno != 3600
trigger2 = parent,anim != 3600
trigger3 = parent,movetype = H
value = 3608

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3606]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3606, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3606, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3606, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3606, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3606, Custom Cancel]
type = parentvarset
trigger1 = var(22) = 2 && var(0) >= var(23)
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 2

[state 3606, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3606, Change Animation]
type = changeanim
trigger1 = !animelemtime(33)
value = anim
elem = 9

[state 3606, Change Animation]
type = changeanim
trigger1 = time && time % 2 = 0
value = anim
elem = animelemno(0) + 1

[state 3606, Prevent Parent Change Animation]
type = parentvaradd
trigger1 = parent,stateno = 3600
trigger1 = parent,anim = 3600
trigger1 = parent,animelemtime(5) > 0
var(0) = 1

[state 3606, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3600
trigger1 = parent,anim = 3600
pos = 56, -48

[state 3606, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3606, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3606, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3606, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3606, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3607
slot = 0
time = -1
forceair = 0

[state 3606, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3606, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 3606, Hit Spark]
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

[state 3606, Super Finish]
type = helper
triggerall = winko && var(38)
triggerall = playeridexist(var(38)) && !numhelper(6210)
trigger1 = playerid(var(38)),loseko
trigger1 = movehit = [1, 8]
name = "Super Finish"
ID = 6210
stateno = 6210
postype = left
pos = ceil(gamewidth * 0.5), -ceil(gameheight * 0.5)
ownpal = 1
keyctrl = 0
size.xscale = 0.8
size.yscale = 0.8
pausemovetime = 65536
supermovetime = 65536
persistent = 0

[state 3606, Fire]
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

[state 3606, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3606, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3606, End State]
type = changestate
trigger1 = time > 8
value = 3605 + 3 * (var(0) >= var(23))

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 3607]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3607, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3607, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3600
trigger1 = parent,anim = 3600
pos = 56, -48

[state 3607, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3607, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3607, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3607, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3607, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3607
slot = 0
time = -1
forceair = 0

[state 3607, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3607, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 3607, Hit Spark]
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

[state 3607, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3607, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3607, End State]
type = changestate
trigger1 = !time
value = 3605 + 3 * (var(0) >= var(23))

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3608]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3608, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 3

[state 3608, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3608, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3608, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Yoga Tempest - Airborne
;=========================================================================
[StateDef 3700]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = 0, 0
sprpriority = 1

[state 3700, Level]
type = null
; Level, Juggle
trigger1 = !time
trigger1 = var(22) := 2 || var(23) := 5
; Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3700, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3700, Change Animation]
type = changeanim
trigger1 = !time
value = 3700

[state 3700, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3700, Super Effect]
type = helper
trigger1 = anim = 3700
trigger1 = !animelemtime(2)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3700, Super Pause]
type = superpause
trigger1 = anim = 3700
trigger1 = !animelemtime(2)
time = 48
movetime = 48
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3700, Vulnerability]
type = nothitby
trigger1 = anim = 3700
trigger1 = animelemtime(2) <= 48
value = SCA
time = 3 * var(22)

[state 3700, Frame Time]
type = null
trigger1 = !time
trigger1 = var(0) := 80
trigger2 = animelemtime(5) > 0 && var(0)
trigger2 = var(0) := var(0) - 1

[state 3700, Change Animation]
type = changeanim
triggerall = animelemtime(5) > 0
trigger1 = anim = 3700 && var(0) <= 0
trigger2 = numhelper(var(49))
trigger2 = helper(var(49)),var(0) >= helper(var(49)),var(23)
trigger3 = !numhelper(var(49))
value = 3701
persistent = 0

[state 3700, Voice]
type = playsnd
trigger1 = anim = 3700
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 3700, Sound]
type = playsnd
trigger1 = anim = 3700
trigger1 = !animelemtime(4)
value = 3, 5
volumescale = 100

[state 3700, Set Position]
type = posset
trigger1 = pos y > 16
y = 16

[state 3700, Multiply Velocity]
type = velmul
trigger1 = anim = 3700
trigger2 = anim = 3701
trigger2 = animelemtime(2) < 0
x = 0.91
y = 0.91

[state 3700, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = anim = 3701
trigger1 = animelemtime(2) >= 0
x = 0.9
y = 0.9

[state 3700, Increment Velocity]
type = veladd
trigger1 = numhelper(4000)
trigger1 = !helper(4000),var(41)
trigger1 = anim = 3701
trigger1 = animelemtime(2) >= 0
y = const(movement.yaccel)

[state 3700, Yoga Tempest]
type = helper
trigger1 = anim = 3700
trigger1 = !animelemtime(5)
name = "Yoga Tempest"
ID = var(49) := cond((var(49) + 1 != [3710, 3799]), 3710, var(49) + 1)
stateno = 3710
postype = p1
pos = 48, -60
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 0.6

[state 3700, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3700, Idle]
type = statetypeset
trigger1 = anim = 3701
movetype = I
persistent = 0

[state 3700, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = anim = 3701
trigger1 = !animelemtime(3)
value = 1800
anim = 1801

[state 3700, End State]
type = changestate
trigger1 = anim = 3701
trigger1 = animelemtime(2) >= 0
trigger1 = pos y + vel y > 0
value = 3705
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 3705]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3705, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3705, Change Animation]
type = changeanim
trigger1 = !time
value = 1105

[state 3705, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 3705, Land Smoke]
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

[state 3705, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3710]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3710, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3711

[state 3710, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3710, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3710, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(root,var(12) <= var(23), 1.0, 0.65) + (0.10 * var(9))

[state 3710, Change Animation]
type = changeanim
trigger1 = !prevstateno
trigger1 = !time
value = 3605

[state 3710, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3700
trigger1 = parent,anim = 3700
pos = 48, -60

[state 3710, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3710, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3710, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3712
slot = 0
time = -1
forceair = 0

[state 3710, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3710, Miss]
type = hitdef
trigger1 = 1
attr = A, HP
hitflag = 

[state 3605, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = A, HP 
damage = ceil(cond(56 * fvar(0) < 7, 7, 56 * fvar(0))), 13
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 8
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 128), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.5 * (var(0) >= var(23) - 1), -7.5 * (var(0) >= var(23) - 1)
guard.velocity = -9.0
air.velocity = -3.5 * (var(0) >= var(23) - 1), -7.5 * (var(0) >= var(23) - 1)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = var(0) >= var(23) - 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = back
forcestand = 1

[state 3710, End State]
type = changestate
trigger1 = parent,stateno != 3700
trigger2 = parent,anim != 3700
trigger3 = parent,movetype = H
value = 3713

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3711]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3711, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3711, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3711, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3711, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3711, Custom Cancel]
type = parentvarset
trigger1 = var(22) = 2 && var(0) >= var(23)
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 2

[state 3711, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3711, Change Animation]
type = changeanim
trigger1 = !animelemtime(33)
value = anim
elem = 9

[state 3711, Change Animation]
type = changeanim
trigger1 = time && time % 2 = 0
value = anim
elem = animelemno(0) + 1

[state 3711, Prevent Parent Change Animation]
type = parentvaradd
trigger1 = parent,stateno = 3600
trigger1 = parent,anim = 3600
trigger1 = parent,animelemtime(5) > 0
var(0) = 1

[state 3711, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3700
trigger1 = parent,anim = 3700
pos = 48, -60

[state 3711, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3711, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3711, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3711, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3711, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3712
slot = 0
time = -1
forceair = 0

[state 3711, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3711, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 3711, Hit Spark]
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

[state 3711, Super Finish]
type = helper
triggerall = winko && var(38)
triggerall = playeridexist(var(38)) && !numhelper(6210)
trigger1 = playerid(var(38)),loseko
trigger1 = movehit = [1, 8]
name = "Super Finish"
ID = 6210
stateno = 6210
postype = left
pos = ceil(gamewidth * 0.5), -ceil(gameheight * 0.5)
ownpal = 1
keyctrl = 0
size.xscale = 0.8
size.yscale = 0.8
pausemovetime = 65536
supermovetime = 65536
persistent = 0

[state 3711, Fire]
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

[state 3711, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3711, Miss]
type = hitdef
trigger1 = 1
attr = A, HP
hitflag = 

[state 3711, End State]
type = changestate
trigger1 = time > 8
value = 3710 + 3 * (var(0) >= var(23))

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 3712]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3712, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3712, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3700
trigger1 = parent,anim = 3700
pos = 48, -60

[state 3712, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3712, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3712, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3712, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3712, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3712
slot = 0
time = -1
forceair = 0

[state 3712, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3712, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 3712, Hit Spark]
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

[state 3712, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3712, Miss]
type = hitdef
trigger1 = 1
attr = A, HP
hitflag = 

[state 3712, End State]
type = changestate
trigger1 = !time
value = 3710 + 3 * (var(0) >= var(23))

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3713]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3713, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 3

[state 3713, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3713, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3713, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
;Yoga Catastrophe
;=========================================================================
[StateDef 3800]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 3800, Level]
type = null
; Level, Juggle
trigger1 = !time
trigger1 = var(22) := 3 || var(23) := 5
; Cornerpush
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3800, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3800, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3800, Change Animation]
type = changeanim
trigger1 = !time
value = 3800

[state 3800, kam_karna]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3000, Super Effect]
type = helper
trigger1 = !animelemtime(2)
name = "Super Effect"
ID = 6200
stateno = 6200
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 65536
pausemovetime = 65536

[state 3800, Super_Portrait]
type = null ; helper
trigger1 = !animelemtime(2)
name = "Super Portrait"
ID = 6215
stateno = 6215
postype = left
facing = facing
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 3800, Super Pause]
type = superpause
trigger1 = !animelemtime(2)
time = 64
movetime = 64
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3800, Vulnerability]
type = nothitby
trigger1 = animelemtime(2) <= 64
value = SCA
time = 3 * var(22)

[state 3800, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 3800, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 3800, 0
volumescale = 100
channel = 0

[state 3800, Width]
type = helper
trigger1 = !animelemtime(4)
name = "Width"
ID = 9998
stateno = 9998
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.ground.front = 0
size.ground.back = 0

[state 3800, Yoga Catastrophe]
type = helper
trigger1 = !animelemtime(4)
name = "Yoga Catastrophe"
ID = 3805
stateno = 3805
postype = p1
pos = 120, -64
ownpal = 1
keyctrl = 0
size.xscale = 0.75
size.yscale = 0.75

[state 3800, Attak Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3800, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 3800, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3805]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = 4

[state 3805, End State]
type = changestate
trigger1 = movecontact || movereversed
value = 3806

[state 3805, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3805, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3805, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(root,var(12) <= var(23), 1.0, 0.65) + (0.10 * var(9))

[state 3805, Change Animation]
type = changeanim
trigger1 = !prevstateno
trigger1 = !time
value = 3805

[state 3805, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3805, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3710, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3807
slot = 0
time = -1
forceair = 0

[state 3805, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3805, Sound]
type = playsnd
trigger1 = time % 16 = 0
value = 3, 4
volumescale = 100

[state 3805, Set Velocity]
type = velset
trigger1 = !animelemtime(12)
x = 1.5

[state 3805, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3805, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, HP 
damage = ceil(cond(90 * fvar(0) < 7, 7, 90 * fvar(0))), 12
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 9
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -4.5 * (var(0) >= var(23) - 1), -9.0 * (var(0) >= var(23) - 1)
guard.velocity = -9.0
air.velocity = -4.5 * (var(0) >= var(23) - 1), -9.0 * (var(0) >= var(23) - 1)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
palfx.color = 256
palfx.mul = 64, 64, 64
palfx.add = 0, 0, 0
palfx.sinadd = 64, 64, 64, 4
palfx.time = 64
fall = var(0) >= var(23) - 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = back
forcestand = 1

[state 3805, End State]
type = changestate
trigger1 = frontedgedist <= -120
value = 3808

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3806]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3806, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3806, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3806, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3806, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3806, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3806, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3806, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3806, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3806, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3806, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3807
slot = 0
time = -1
forceair = 0

[state 3806, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3806, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 3806, Hit Spark]
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

[state 3806, Super Finish]
type = helper
triggerall = winko && var(38)
triggerall = playeridexist(var(38)) && !numhelper(6210)
trigger1 = playerid(var(38)),loseko
trigger1 = movehit = 1
name = "Super Finish"
ID = 6210
stateno = 6210
postype = left
pos = ceil(gamewidth * 0.5), -ceil(gameheight * 0.5)
ownpal = 1
keyctrl = 0
size.xscale = 0.8
size.yscale = 0.8
pausemovetime = 65536
supermovetime = 65536
persistent = 0

[state 3806, Fire]
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

[state 3806, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3806, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3806, End State]
type = changestate
trigger1 = time > 7
value = 3805 + 3 * (var(0) >= var(23))

;=========================================================================
; Proj Canceled
;=========================================================================
[Statedef 3807]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3807, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3807, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3807, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3807, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3807, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[state 3807, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3807
slot = 0
time = -1
forceair = 0

[state 3807, Vulnerability]
type = nothitby
trigger1 = var(0) >= var(23)
value = SCA
time = -1

[state 3807, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 3807, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 0
channel = 2

[state 3807, Hit Spark]
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

[state 3807, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3807, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3807, End State]
type = changestate
trigger1 = !time
value = 3805 + 3 * (var(0) >= var(23))

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3808]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3808, Change Animation]
type = changeanim
trigger1 = !time
value = anim + 3

[state 3808, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3808, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3808, Destroy Helper]
type = destroyself
trigger1 = !animtime