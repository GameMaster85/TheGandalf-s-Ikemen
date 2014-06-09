; Aoko By RajaaBoy

;=========================================================================
; Wheel Kick
;=========================================================================
[Statedef 1000]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1000, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "a" || command = "NE_a", 1, cond(command = "b" || command = "NE_b", 2, 3))

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
value = 1000 + var(22) - 1

[state 1000, Set State Type]
type = statetypeset
trigger1 = !animelemtime(4)
statetype = A
physics = N

[state 1000, Voice]
type = playsnd
trigger1 = !animelemtime(8)
value = 805, 0
volumescale = 100
channel = 0

[state 1000, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 40, 0
volumescale = 100

[state 1000, Sound]
type = playsnd
trigger1 = !animelemtime(8)
value = 1, 2
volumescale = 100
channel = 1

[state 1000, Set Velocity]
type = velset
trigger1 = var(22) = 1
trigger1 = !animelemtime(1)
x = 1.171875

[state 1000, Set Velocity]
type = velset
trigger1 = !animelemtime(4)
x = 3.90625 * (var(22) = 1) + 5.46875 * (var(22) = 2) + 7.03125 * (var(22) = 3)
y = -8.203125 * (var(22) = 1) + -7.8125 * (var(22) = 2) + -7.421875 * (var(22) = 3)

[state 1000, Increment Velocity]
type = veladd
trigger1 = animelemtime(4) > 0
y = 0.5859375

[state 1000, Energy]
type = helper
trigger1 = !animelemtime(8)
helpertype = normal
name = "Energy"
ID = 1010
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1000, Jump Smoke]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
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

[state 1000, Hit]
type = varset
trigger1 = !time
var(0) = 0

[state 1000, Hit]
type = varset
trigger1 = movehit = 1
trigger1 = animelemtime(9) >= 0
var(0) = 1

[state 1000, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11) && var(22) != 3
trigger1 = !animelemtime(4)
attr = S, SA
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0))), 6
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.9765625, -8.59375
guard.velocity = -10.0
air.velocity = -0.9765625, -8.59375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1000, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11) && var(22) != 3
trigger1 = !animelemtime(9)
trigger1 = p2statetype != A
attr = S, SA
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 6
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -24)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.25
guard.velocity = -6.25
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
fall.xvelocity = -2.734375
fall.yvelocity = -10.9375
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall.envshake.time = 10
fall.envshake.ampl = 10
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1000, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11) && var(22) != 3
trigger1 = !animelemtime(9)
trigger1 = p2statetype = A
attr = S, SA
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 6
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -24)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375, 9.765625
guard.velocity = -10.9375
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
ID = 1000
nochainID = 450
p2facing = 1
p2stateno = 995

[state 1000, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11) && var(22) = 3
trigger1 = !animelemtime(9)
trigger1 = p2statetype != A
attr = S, SA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0))), 6
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -24)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.25
guard.velocity = -6.25
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
fall.xvelocity = -2.734375
fall.yvelocity = -10.9375
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall.envshake.time = 10
fall.envshake.ampl = 10
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1000, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11) && var(22) = 3
trigger1 = !animelemtime(9)
trigger1 = p2statetype = A
attr = S, SA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0))), 6
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -24)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375, 9.765625
guard.velocity = -10.9375
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
ID = 1000
nochainID = 450
p2facing = 1
p2stateno = 995

[state 1000, Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
persistent = 0

[state 1000, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 1005
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 1005]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1005, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1005, Change Animation]
type = changeanim
trigger1 = !time
value = cond(anim = 1002, 1007, 1005 + var(0))

[state 1005, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 1005, Land Smoke]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
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

[state 1005, Control]
type = ctrlset
triggerall = !ctrl
trigger1 = anim = 1005 && !animelemtime(4)
trigger2 = anim = 1006
trigger3 = anim = 1007 && !animelemtime(2)
value = 1

[state 1005, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Moonsault
;=========================================================================
[Statedef 1100]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1100, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "a" || command = "NE_a", 1, cond(command = "b" || command = "NE_b", 2, 3))

[state 1100, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1100, Change Animation]
type = changeanim
trigger1 = !time
value = 1100 + var(22) - 1

[state 1100, Set State Type]
type = statetypeset
trigger1 = !animelemtime(3)
statetype = A
physics = N

[state 1100, Vulnerability]
type = nothitby
trigger1 = anim = 1102 && animelemtime(4) < 0
value = SCA
time = 1

[state 1100, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 1400, 0
volumescale = 100
channel = 0

[state 1100, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 40, 0
volumescale = 100

[state 1100, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 3
volumescale = 100
channel = 1

[state 1100, Set Velocity]
type = velset
trigger1 = var(22) = [1, 2]
trigger1 = !animelemtime(1)
x = 3.125 * (var(22) = 1) + 1.5625 * (var(22) = 2)

[state 1100, Set Velocity]
type = velset
trigger1 = !animelemtime(3)
x = 3.515625 * (var(22) = 1) + 2.734375 * (var(22) = 2) + 1.953125 * (var(22) = 3)
y = -8.59375 * (var(22) = 1) + -9.765625 * (var(22) = 2) + -10.9375 * (var(22) = 3)

[state 1100, Set Velocity]
type = velset
trigger1 = var(22) = [1, 2]
trigger1 = !animelemtime(7)
x = 1.171875 * (var(22) = 1) + 0.5859375 * (var(22) = 2)

[state 1100, Increment Velocity]
type = veladd
trigger1 = animelemtime(3) > 0
y = 0.5859375

[state 1100, Energy]
type = helper
trigger1 = (anim = [1100, 1101]) && !animelemtime(3)
trigger2 = anim = 1102 && !animelemtime(4)
helpertype = normal
name = "Energy"
ID = 1110
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1100, Jump Smoke]
type = helper
trigger1 = !animelemtime(3)
helpertype = normal
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

[state 1100, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11)
trigger1 = anim = 1100 && !animelemtime(5)
attr = A, SA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0))), 13
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -72)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 100
ground.velocity = -2.34375, -12.109375
guard.velocity = -10.0
air.velocity = -2.34375, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1100, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11)
trigger1 = anim = 1101 && !animelemtime(5)
attr = A, SA
damage = ceil(cond(100 * fvar(0) < 7, 7, 100 * fvar(0))), 13
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -72)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 100
ground.velocity = -2.34375, -12.109375
guard.velocity = -10.0
air.velocity = -2.34375, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1100, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11)
trigger1 = anim = 1102 && !animelemtime(3)
attr = A, SA
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 13
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -72)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 100
ground.velocity = -2.34375, -12.109375
guard.velocity = -10.0
air.velocity = -2.34375, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1100, Hit]
type = hitdef
trigger1 = (var(10) < 7 || var(19)) && !var(11)
trigger1 = anim = 1102 && !animelemtime(5)
attr = A, SA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0))), 13
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -72)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 100
ground.velocity = -2.34375, -12.109375
guard.velocity = -10.0
air.velocity = -2.34375, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 1100, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 1100, End State]
type = changestate
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
facep2 = 1
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
helpertype = normal
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
; Floating Starmine
;=========================================================================
[Statedef 1200]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
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

[state 1200, Animation Loop]
type = varset
trigger1 = !animelemtime(7)
var(0) = 3
persistent = 0

[state 1200, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(7)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 4

[state 1200, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 1200, random % 3
volumescale = 100
channel = 0
persistent = 0

[state 1200, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 3, 1
volumescale = 100
persistent = 0

[state 1200, Starmine]
type = helper
trigger1 = !animelemtime(3)
trigger1 = var(41) := var(41) + 1 ; Starmine ID
helpertype = normal
name = "Starmine"
ID = 1205
stateno = 1205
postype = p1
pos = 33, -75
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[state 1200, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1200, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 1500, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Idle
;=========================================================================
[Statedef 1205]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1205, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1205, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1205, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)
[state 1205, Starmine ID]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(41) := root,var(41)

[state 1205, Change Animation]
type = changeanim
trigger1 = !time
value = 1205

[state 1205, Animation Loop]
type = varset
trigger1 = !animelemtime(12)
var(0) = 4
persistent = 0

[state 1205, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(22)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 12

[state 1205, Animation Loop]
type = changeanim
trigger1 = root,command != "hold_x" && root,command != "hold_y" && root,command != "hold_z"
trigger1 = animelemtime(12) >= 0 && animelemtime(22) < 0
value = anim
elem = 22

[state 1205, Animation Loop]
type = varset
trigger1 = !animelemtime(22)
var(0) = 16
persistent = 0

[state 1205, Animation Loop]
type = changeanim
trigger1 = var(0) && !animtime
trigger1 = var(0) := var(0) - 1
value = anim
elem = 23

[state 1205, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1205, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NA,SA,HA, NP,SP,HP
time = -1

[state 1205, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, NP,SP,HP
slot = 0
stateno = 1206
time = -1
forceair = 0

[state 1205, Vulnerability]
type = hitoverride
trigger1 = 1
attr = SCA, NA,SA,HA
slot = 1
stateno = 1210
time = -1
forceair = 0

[state 1205, Set Velocity]
type = velset
trigger1 = !animelemtime(1)
x = 0.06640625

[state 1205, Increment Velocity]
type = veladd
trigger1 = animelemtime(22) < 0
x = 0.05859375

[state 1205, Increment Velocity]
type = veladd
trigger1 = vel x > 0
trigger1 = animelemtime(22) >= 0
x = -0.078125

[state 1205, Set Velocity]
type = velset
trigger1 = vel x < 0
x = 0.0

[state 1205, Set Velocity]
type = velset
trigger1 = !animelemtime(12) || !animelemtime(23)
y = -0.1953125

[state 1205, Set Velocity]
type = velset
trigger1 = !animelemtime(16) || !animelemtime(27)
y = 0.1953125

[state 1205, Increment Velocity]
type = veladd
trigger1 = animelemtime(12) > 0 && animelemtime(16) < 0
trigger2 = animelemtime(23) > 0 && animelemtime(27) < 0
y = 0.01171875

[state 1205, Increment Velocity]
type = veladd
trigger1 = animelemtime(16) > 0 && animelemtime(23) < 0
trigger2 = animelemtime(27) > 0
y = -0.01171875

[state 1205, End State]
type = changestate
trigger1 = var(41) != root,var(41)
value = 1206

[state 1205, End State]
type = changestate
triggerall = animelemtime(12) >= 0
trigger1 = !var(0)
trigger2 = numenemy && p2statetype != L && p2dist x = [-24, 24]
trigger2 = (enemynear,pos y + enemynear,const(size.mid.pos.y)) - pos y = [-48, 48] ; p2dist y = [ -25, 25]
value = 1210
ctrl = 0

;=========================================================================
; Proj Expire
;=========================================================================
[Statedef 1206]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1206, Change Animation]
type = changeanim
trigger1 = !time
value = 1206

[state 1206, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1206, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1210]
type = U
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1210, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1211

[state 1210, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1210, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 1210, Change Animation]
type = changeanim
trigger1 = !time
value = 1210

[state 1210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1210, Sound]
type = playsnd
trigger1 = !time
value = 3, 2
volumescale = 100

[state 1210, Attack Distance]
type = attackdist
trigger1 = !time
value = 24

[state 1210, Miss]
type = hitdef
trigger1 = ishelper(1205)
attr = S, SP
hitflag = 

[state 1210, Miss]
type = hitdef
trigger1 = ishelper(1310)
attr = A, SP
hitflag = 

[state 1210, Hit]
type = hitdef
trigger1 = (var(10) < 10 || var(19)) ; && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = ishelper(1205)
trigger1 = anim = 1210
attr = S, SP
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0))), 10
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125
guard.velocity = -10.0
air.velocity = 0.0, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1210, Hit]
type = hitdef
trigger1 = (var(10) < 10 || var(19)) ; && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = ishelper(1310)
trigger1 = anim = 1210
attr = A, SP
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0))), 10
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125
guard.velocity = -10.0
air.velocity = 0.0, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1210, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1211]
type = U
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1211, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 1211, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1211, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1211, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1211, Custom Cancel]
type = parentvarset
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 1

[state 1211, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1211, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1211, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1211, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1211, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1211, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1211, Hit Spark]
type = helper
trigger1 = !time
helpertype = normal
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

[state 1211, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1211, Miss]
type = hitdef
trigger1 = ishelper(1205)
attr = S, SP
hitflag = 

[state 1211, Miss]
type = hitdef
trigger1 = ishelper(1310)
attr = A, SP
hitflag = 

[state 1211, End State]
type = changestate
trigger1 = !time
value = 1213

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1213]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1213, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1213, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1213, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Floating Starmine
;=========================================================================
[Statedef 1300]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 0
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

[state 1300,Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 1200, random % 3
volumescale = 100
channel = 0

[state 1300, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 3, 1
volumescale = 100

[state 1300, Freeze Position]
type = posfreeze
trigger1 = animelemtime(8) < 0
value = 1

[state 1300, Increment Velocity]
type = veladd
trigger1 = animelemtime(8) > 0
y = 0.5859375

[state 1300, Starmine]
type = helper
trigger1 = !animelemtime(5)
trigger1 = var(42) := var(42) + 1 ; Starmine ID
helpertype = normal
name = "Starmine"
ID = 1310
stateno = 1310
postype = p1
pos = 49, -32
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1300, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1300, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 1300, End State]
type = changestate
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
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 1305, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1305, Change Animation]
type = changeanim
trigger1 = !time
value = 1305

[state 1305, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 1305, Land Smoke]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
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

[state 1305, Control]
type = ctrlset
trigger1 = !time
value = 1

[state 1305, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Idle
;=========================================================================
[Statedef 1310]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1205, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1205, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1205, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)
[state 1205, Starmine ID]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(42) := root,var(42)

[state 1310, Change Animation]
type = changeanim
trigger1 = !time
value = 1310

[state 1205, Animation Loop]
type = varset
trigger1 = !animelemtime(12)
var(0) = 16
persistent = 0

[state 1205, Animation Loop]
type = changeanim
trigger1 = var(0) && !animtime
trigger1 = var(0) := var(0) - 1
value = anim
elem = 12

[state 1310, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1310, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NA,SA,HA, NP,SP,HP
time = -1

[state 1310, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, NP,SP,HP
slot = 0
stateno = 1206
time = -1
forceair = 0

[state 1310, Vulnerability]
type = hitoverride
trigger1 = 1
attr = SCA, NA,SA,HA
slot = 1
stateno = 1210
time = -1
forceair = 0

[state 1310, Velocity]
type = velset
trigger1 = !animelemtime(12)
y = -0.1953125

[state 1310, Velocity]
type = velset
trigger1 = !animelemtime(16)
y = 0.1953125

[state 1310, Velocity]
type = veladd
trigger1 = animelemtime(12) > 0 && animelemtime(16) < 0
y = 0.01171875

[state 1310, Velocity]
type = veladd
trigger1 = animelemtime(16) > 0
y = -0.01171875

[state 1310, End State]
type = changestate
trigger1 = var(42) != root,var(42)
value = 1206

[state 1310, End State]
type = changestate
triggerall = animelemtime(12) >= 0
trigger1 = !var(0)
trigger2 = numenemy && p2statetype != L && p2dist x = [-24, 24]
trigger2 = (enemynear,pos y + enemynear,const(size.mid.pos.y)) - pos y = [-48, 48] ; p2dist y = [ -25, 25]
value = 1210
ctrl = 0

;=========================================================================
; Magic Draw Arrow
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
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1400, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1400, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1400, Change Animation]
type = changeanim
trigger1 = !time
value = 1400 + var(22) - 1

[state 1400, Animation Loop]
type = varset
trigger1 = !animelemtime(11)
var(0) = 3
persistent = 0

[state 1400, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(11)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 9

[state 1400, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 1400, 0
volumescale = 100
channel = 0

[state 1400, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 3, 3
volumescale = 100

[state 1400, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 1400, Width]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
name = "Width"
ID = 9998
stateno = 9998
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.ground.front = 0
size.ground.back = 0

[state 1400, Energy]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Energy"
ID = 1405
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1400, Arrow]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Arrow"
ID = 1410
stateno = 1410
postype = p1
pos = 60, -80
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1400, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1400, Idle]
type = statetypeset
trigger1 = animelemtime(12) >= 0
movetype = I
persistent = 0

[state 1400, End State]
type = changestate
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
trigger1 = fvar(0) := root,fvar(0)

[state 1410, Change Animation]
type = changeanim
trigger1 = !time
value = 1410

[state 1410, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1410, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NP,SP,HP
time = -1

[state 1410, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, NP,SP,HP
slot = 0
stateno = 1412
time = -1
forceair = 0

[state 1410, Set Velocity]
type = velset
trigger1 = !time
x = 15.625 * (var(22) = 1) + 12.6953125 * (var(22) = 2) + 9.765625 * (var(22) = 3) 

[state 1410, Set Velocity]
type = velset
trigger1 = !time && ishelper(1710)
x = 9.765625

[state 1410, Attack Distance]
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
trigger1 = (var(10) < 5 || var(19)) && !var(11) && var(22) = 1
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, SP
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 4
; damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0))), 6
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.25
guard.velocity = -6.25
air.velocity = -0.9765625, -8.59375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1410, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11) && var(22) = 2
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, SP
damage = ceil(cond(55 * fvar(0) < 7, 7, 55 * fvar(0))), 5
; damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0))), 10
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.25
guard.velocity = -6.25
air.velocity = -0.9765625, -8.59375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1410, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11) && var(22) = 3
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
attr = S, SP
damage = ceil(cond(64 * fvar(0) < 7, 7, 64 * fvar(0))), 6
; damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0))), 12
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.25
guard.velocity = -6.25
air.velocity = -0.9765625, -8.59375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1410, Destroy]
type = destroyself
trigger1 = frontedgedist <= -96

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
value = SCA, NP,SP,HP
time = -1

[state 1411, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, NP,SP,HP
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
helpertype = normal
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

[state 1412, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1412, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1412, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1412, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NP,SP,HP
time = -1

[state 1412, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, NP,SP,HP
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
helpertype = normal
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
value = 1413

[state 1413, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1413, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1413, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Blazing Starmine
;=========================================================================
[Statedef 1500]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 64
sprpriority = 1

[state 1500, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

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
value = 1500 + var(22) - 1

[state 1500, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 1500, Voice]
type = playsnd
trigger1 = random < 500
trigger1 = !animelemtime(5)
value = 1405, 0
volumescale = 100
channel = 0

[state 1500, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 1500, Increment Position]
type = posadd
trigger1 = animelemtime(4) >= 0 && animelemtime(8) < 0
x = 5.859375 - 0.5859375 * animelemtime(4)

[state 1500, Increment Position]
type = posadd
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
x = 0.078125

[state 1500, Width]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
name = "Width"
ID = 9998
stateno = 9998
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.ground.front = 0
size.ground.back = 0

[state 1500, Energy]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Energy"
ID = 1505
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1500, Starmine]
type = helper
trigger1 = !animelemtime(6)
helpertype = normal
name = "Starmine"
ID = 1510
stateno = 1510
postype = p1
pos = 42 * (var(22) = 1) + 63 * (var(22) = 2) + 84 * (var(22) = 3), 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1500, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1500, Idle]
type = statetypeset
trigger1 = animelemtime(12) >= 0
movetype = I
persistent = 0

[state 1500, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1510]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1510, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1511

[state 1510, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1510, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1510, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 1510, Change Animation]
type = changeanim
trigger1 = !time * !prevstateno
value = 1510

[state 1510, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1510, Angle]
type = angledraw
trigger1 = 1
value = 65

[state 1510, Transparency]
type = trans
trigger1 = 1
trans = add

[state 1510, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1850, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 3, 4
volumescale = 100

[state 1510, Attack Distance]
type = attackdist
trigger1 = 1
value = const(size.proj.attack.dist)

[state 1510, Miss]
type = null ; hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1510, Hit]
type = hitdef
trigger1 = (var(10) < 8 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(animelemno(0)) && animelemno(0) = [5, 7]
attr = S, SP
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 10
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 6
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -72)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -1.5625, -12.109375
guard.velocity = -10
air.velocity = -1.5625, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1510, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 1510, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1511]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1511, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 1511, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1511, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1511, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1511, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1511, Change Animation]
type = changeanim
trigger1 = 1
value = anim
elem = cond(!time && animelemtime(animelemno(0) + 1) < 0, animelemno(0) + 1, animelemno(0))

[state 1511, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1511, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1511, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1511, Angle]
type = angledraw
trigger1 = 1
value = 65

[state 1511, Transparency]
type = trans
trigger1 = 1
trans = add

[state 1511, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1511, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1511, Hit Spark]
type = helper
trigger1 = !time
helpertype = normal
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

[state 1511, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1511, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1511, End State]
type = changestate
trigger1 = time > 6
value = 1510 + 3 * (var(0) >= 3)

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1513]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1513, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1513, Angle]
type = angledraw
trigger1 = 1
value = 65

[state 1513, Transparency]
type = trans
trigger1 = 1
trans = add

[state 1513, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1513, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Raining Starmine
;=========================================================================
[Statedef 1600]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 64
sprpriority = 1

[state 1600, Level]
type = null
trigger1 = !time && !ailevel
trigger1 = var(22) := cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3))

[state 1600, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 1600, Change Animation]
type = changeanim
trigger1 = !time
value = 1600 + var(22) - 1

[state 1600, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 1600, Voice]
type = playsnd
trigger1 = random < 500
trigger1 = !animelemtime(3)
value = 1405, 0
volumescale = 100
channel = 0

[state 1600, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 1600, Set Velocity]
type = velset
trigger1 = anim = 1601 || anim = 1602
trigger1 = !animelemtime(1)
x = 0.0
y = 0.0

[state 1600, Set Velocity]
type = velset
trigger1 = anim = 1601 || anim = 1602
trigger1 = !animelemtime(3)
x = -1.171875
y = -5.46875

[state 1900, Increment Velocity]
type = veladd
trigger1 = anim = 1600
y = 0.5859375

[state 1600, Increment Velocity]
type = veladd
trigger1 = anim = 1601 || anim = 1602
trigger1 = animelemtime(3) > 0
y = 0.5078125

[state 1600, Energy]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
name = "Energy"
ID = 1610
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1600, Starmine]
type = helper
trigger1 = anim = 1600 && !animelemtime(3)
trigger2 = (anim = 1601 || anim = 1602) && !animelemtime(4)
helpertype = normal
name = "Starmine"
ID = 1615
stateno = 1615
postype = p1
pos = 50, -50
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1600, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1600, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 1600, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 1605
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 1605]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1605, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1605, Change Animation]
type = changeanim
trigger1 = !time
value = 1605 + (anim = 1602)

[state 1605, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 1605, Land Smoke]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
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

[state 1605, Control]
type = ctrlset
triggerall = !ctrl
trigger1 = anim = 1605 && !animelemtime(5)
trigger2 = anim = 1606 && !animelemtime(6)
value = 1

[state 1605, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1615]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 1615, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1616

[state 1615, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1615, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1615, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 1615, Change Animation]
type = changeanim
trigger1 = !time * !prevstateno
value = 1615

[state 1615, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1615, Angle]
type = angledraw
trigger1 = 1
value = -75

[state 1615, Transparency]
type = trans
trigger1 = 1
trans = add

[state 1615, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1615, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 3, 4
volumescale = 100

[state 1615, Attack Distance]
type = attackdist
trigger1 = 1
value = const(size.proj.attack.dist)

[state 1615, Miss]
type = null ; hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1615, Hit]
type = hitdef
triggerall = (var(10) < 8 || var(19)) && !var(11)
triggerall = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(7)
trigger2 = !animelemtime(9) && var(22) = [2, 3]
trigger3 = !animelemtime(10) && var(22) = 3
attr = A, SP
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 14
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 6
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 64), 72 * (var(8) := 72)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.0
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1615, Idle]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I
persistent = 0

[state 1615, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1616]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1616, Hit Counter]
type = varadd
trigger1 = !time
var(0) = 1

[state 1616, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1616, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1616, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3106, Custom Cancel]
type = parentvarset
trigger1 = var(22) = 2
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 1

[state 1616, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1616, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1616, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1616, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1616, Angle]
type = angledraw
trigger1 = 1
value = -75

[state 1616, Transparency]
type = trans
trigger1 = 1
trans = add

[state 1616, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1616, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1616, Hit Spark]
type = helper
trigger1 = !time
helpertype = normal
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

[state 1616, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1616, Miss]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = 

[state 1616, End State]
type = changestate
trigger1 = !time
value = 1615 + 3 * (var(0) >= var(22))

;=========================================================================
; Proj End
;=========================================================================
[Statedef 1618]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1618, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1618, Angle]
type = angledraw
trigger1 = 1
value = -75

[state 1618, Transparency]
type = trans
trigger1 = 1
trans = add

[state 1618, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1618, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Blowning Starbow Mirror
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
trigger1 = var(0) := 0

[state 1700, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1700, Change Animation]
type = changeanim
trigger1 = !time
value = 1700 + var(22) - 1

[state 1700, Animation Loop]
type = varset
trigger1 = anim != 1700 && !animelemtime(11) ; accurate is only 1702
var(0) = 3
persistent = 0

[state 1700, Animation Loop]
type = changeanim
trigger1 = var(0) && anim != 1700 && !animelemtime(11) ; accurate is only 1702
trigger1 = var(0) := var(0) - 1
value = anim
elem = 8

[state 1700, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 1700, 0
volumescale = 100
channel = 0

[state 1700, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 3, 5
volumescale = 100

[state 1700, Width]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
name = "Width"
ID = 9998
stateno = 9998
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.ground.front = 0
size.ground.back = 0

[state 1700, Mirror Attack]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Mirror Attack"
ID = 1705
stateno = 1705
postype = p1
pos = 20, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1700, Mirror Override]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Mirror Override"
ID = 1710
stateno = 1710
postype = p1
pos = 20, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1700, Mirror Reverse]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Mirror Reverse"
ID = 1715
stateno = 1715
postype = p1
pos = 20, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 1700, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1700, Idle]
type = statetypeset
trigger1 = anim = 1700 && animelemtime(13) >= 0
trigger2 = anim > 1700 && animelemtime(16) >= 0
movetype = I
persistent = 0

[state 1700, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 1705]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4
hitcountpersist = 1

[state 1705, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 1706

[state 1705, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1705, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1705, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 1705, Change Animation]
type = changeanim
trigger1 = !time * !prevstateno
value = 1705 + var(22) - 1

[state 1705, Root Bind]
type = bindtoroot
trigger1 = animelemtime(10) < 0
pos = 20, 0

[state 1705, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1705, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1705, Atack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1705, Miss]
type = hitdef
triggerall = animelemno(0) % 2 = 0 
triggerall = !animelemtime(animelemno(0))
trigger1 = anim = 1705 && animelemno(0) = [11, 16]
trigger2 = anim = 1706 && animelemno(0) = [11, 20]
trigger3 = anim = 1707 && animelemno(0) = [11, 26]
attr = S, SP
hitflag = 

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !hitcount && anim = 1705
trigger1 = animelemno(0) % 2 = 1 && animelemno(0) = [11, 16]
trigger1 = !animelemtime(animelemno(0))
attr = S, SP
damage = ceil(cond(10 * fvar(0) < 7, 7, 10 * fvar(0))), 2
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 3
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -56)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.0
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 13 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = anim = 1706
trigger1 = animelemno(0) % 2 = 1 && animelemno(0) = [11, 20]
trigger1 = !animelemtime(animelemno(0))
attr = S, SP
damage = ceil(cond(12 * fvar(0) < 7, 7, 12 * fvar(0))), 2
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 3
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -56)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = 10.0
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 13 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = anim = 1706
trigger1 = !animelemtime(13) || !animelemtime(17)
attr = S, SP
damage = ceil(cond(12 * fvar(0) < 7, 7, 12 * fvar(0))), 2
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 3
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.0
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 13 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = anim = 1707
trigger1 = animelemno(0) % 2 = 1 && animelemno(0) = [11, 26]
trigger1 = !animelemtime(animelemno(0))
attr = S, SP
damage = ceil(cond(14 * fvar(0) < 7, 7, 14 * fvar(0))), 2
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 3
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -56)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = 10.0
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1705, Hit]
type = hitdef
trigger1 = (var(10) < 13 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = anim = 1707
trigger1 = !animelemtime(13) || !animelemtime(17) || !animelemtime(21) || !animelemtime(25)
attr = S, SP
damage = ceil(cond(14 * fvar(0) < 7, 7, 14 * fvar(0))), 2
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 3
hitsound = -1 + 0 * (var(3) := 510)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.0
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(96 * (0.5 ** var(10)) < 32, 32, 96 * (0.5 ** var(10))), 96))
fall.animtype = hard
forcestand = 1

[state 1705, Idle]
type = statetypeset
trigger1 = animelemtime(16 + 5 * (var(22) - 1)) >= 0
movetype = I
persistent = 0

[state 1705, Destroy]
type = destroyself
trigger1 = !animtime || !root,var(39)
trigger2 = root,movetype = H && animelemtime(10) < 0

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 1706]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1
hitcountpersist = 1

[state 1706, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 1706, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 1706, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 1706, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 1706, Change Animation]
type = changeanim
trigger1 = 1
value = anim
elem = cond(!time && animelemtime(animelemno(0) + 1) < 0, animelemno(0) + 1, animelemno(0))

[state 1706, Root Bind]
type = bindtoroot
trigger1 = animelemtime(10) < 0
pos = 20, 0

[state 1706, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1706, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1706, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1706, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NP,SP,HP
time = -1

[state 1706, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, NP,SP,HP
stateno = 1711
slot = 0
time = -1
forceair = 0

[state 1706, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1706, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2

[state 1706, Hit Spark]
type = helper
trigger1 = !time
helpertype = normal
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

[state 1706, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1706, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1706, End State]
type = changestate
trigger1 = time > 3
value = 1705

;=========================================================================
; Override Start
;=========================================================================
[Statedef 1710]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5
movehitpersist = 1
hitcountpersist = 1

[state 1710, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1710, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1710, Damage Dampener]
type = null
trigger1 = fvar(0) := cond(var(19), 0.5, root,fvar(0))

[state 1710, Change Animation]
type = changeanim
trigger1 = numhelper(1705)
trigger1 = animelemtime(animelemno(0) + 1) < 0
value = helper(1705),anim
elem = helper(1705),animelemno(0)

[state 1710, Root Bind]
type = bindtoroot
trigger1 = animelemtime(10) < 0
pos = 20, 0

[state 1710, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[state 1710, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1

[state 1710, Vulnerability]
type = hitoverride
trigger1 = 1
attr = SCA, NP, SP, HP
slot = 0
stateno = 1711
time = -1
forceair = 0

[state 1710, Destroy]
type = destroyself
trigger1 = !animtime || !root,var(39) || !numhelper(1705)
trigger2 = root,movetype = H && animelemtime(10) < 0

;=========================================================================
; Override Overriden
;=========================================================================
[Statedef 1711]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 1711, Reflect Detect]
type = parentvarset
trigger1 = !time
var(43) = 1

[state 1711, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[state 1711, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NP,SP,HP
time = -1

[state 1711, Vulnerability]
type = hitoverride
trigger1 = 1
attr = SCA, NP,SP,HP
slot = 0
stateno = 1711
time = -1
forceair = 0

[state 1711, End State]
type = changestate
trigger1 = !time
value = 1710

[state 1711, Destroy]
type = destroyself
trigger1 = !animtime || !root,var(39) || !numhelper(1705)
trigger2 = root,movetype = H && animelemtime(10) < 0

;=========================================================================
; Reversal Start
;=========================================================================
[Statedef 1715]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5
movehitpersist = 1
hitcountpersist = 1

[state 1715, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 1715, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 1715, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 1715, Change Animation]
type = changeanim
trigger1 = numhelper(1705)
trigger1 = animelemtime(animelemno(0) + 1) < 0
value = helper(1705),anim
elem = helper(1705),animelemno(0)

[state 1715, Root Bind]
type = bindtoroot
trigger1 = animelemtime(10) < 0
pos = 20, 0

[state 1715, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[state 1715, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 1715, Reversal]
type = reversaldef
trigger1 = 1
reversal.attr = SCA, NP,SP,HP
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
p1stateno = 1716
p2stateno = 1717
numhits = 0

[state 1715, Destroy]
type = destroyself
trigger1 = !animtime || !root,var(39) || !numhelper(1705)
trigger2 = root,movetype = H && animelemtime(10) < 0

;=========================================================================
; Reversal Reflected
;=========================================================================
[Statedef 1716]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 1716, Reflect Detect]
type = parentvarset
trigger1 = !time
var(43) = 1

[state 1716, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[state 1716, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1716, End State]
type = changestate
trigger1 = !time
value = 1715

[state 1716, Destroy]
type = destroyself
trigger1 = !animtime || !root,var(39) || !numhelper(1705)
trigger2 = root,movetype = H && animelemtime(10) < 0

;=========================================================================
; Reversal Reversed
;=========================================================================
[Statedef 1717]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
hitdefpersist = 1

[state 1717, Own State]
type = selfstate
trigger1 = !ishelper
value = 5000
ignorehitpause = 1

[state 1717, Destroy]
type = removeexplod
trigger1 = numexplod
ignorehitpause = 1

[state 1717, Destroy]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1