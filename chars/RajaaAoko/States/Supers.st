; Aoko By RajaaBoy

;=========================================================================
; Starmine Fists
;=========================================================================
[StateDef 3000]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 3000, Level]
type = null
trigger1 = !time
; Button Level
trigger1 = var(22) := cond(ailevel, var(22), cond(command = "a" || command = "NE_a", 1, cond(command = "b" || command = "NE_b", 2, 3)))
; Power Level, Super Cancel Level
trigger1 = var(22) := cond(power < 2000 && var(22) > 1 || var(18), 1, cond(power < 3000 && var(22) = 3, 2, var(22)))
; Juggle, Dampener
trigger1 = var(23) := cond(var(22) = 1, 5, cond(var(22) = 2, 6, 9))
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
trigger1 = !animelemtime(2)
helpertype = normal
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
trigger1 = animelemtime(2) <= 48
value = SCA
time = 3 * var(22)

[state 3000, Set State Type]
type = statetypeset
trigger1 = !animelemtime(33)
statetype = A
physics = N

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 3100, 0
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 2, 4
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(11)
value = 2, 3
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(18)
value = 805, 0
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(26)
value = 1400, 0
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(33)
value = 1405, 0
volumescale = 100
channel = 0

[state 3000, Sound]
type = playsnd
trigger1 = !animelemtime(5) || !animelemtime(11)
trigger2 = !animelemtime(18) || !animelemtime(26)
trigger3 = !animelemtime(33)
value = 1, 2
volumescale = 100
channel = 1

[state 3000, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = 14.0625

[state 3000, Increment Position]
type = posadd
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(11) >= 0 && animelemtime(13) < 0
trigger3 = animelemtime(18) >= 0 && animelemtime(20) < 0
x = 16.40625

[state 3000, Increment Position]
type = posadd
trigger1 = animelemtime(25) >= 0 && animelemtime(30) < 0
x = 11.71875 - 0.84375 * animelemtime(25)

[state 3000, Increment Position]
type = posadd
trigger1 = animelemtime(31) >= 0 && animelemtime(33) < 0
x = 3.125

[state 3000, Set Velocity]
type = velset
trigger1 = !animelemtime(33)
x = 3.515625 * (var(22) = 1) + 2.734375 * (var(22) = 2) + 1.953125 * (var(22) = 3)
y = -8.59375 * (var(22) = 1) + -9.765625 * (var(22) = 2) + -6.25 * (var(22) = 3)

[state 3000, Set Velocity]
type = velset
trigger1 = !animelemtime(37)
x = 1.171875

[state 3000, Increment Velocity]
type = veladd
trigger1 = animelemtime(33) > 0
y = 0.5859375

[state 3000, Energy]
type = helper
trigger1 = !animelemtime(5)
helpertype = normal
name = "Energy"
ID = 3010
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3000, Energy]
type = helper
trigger1 = !animelemtime(11)
helpertype = normal
name = "Energy"
ID = 3015
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3000, Energy]
type = helper
trigger1 = !animelemtime(18)
helpertype = normal
name = "Energy"
ID = 3020
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3000, Energy]
type = helper
trigger1 = !animelemtime(26)
helpertype = normal
name = "Energy"
ID = 3025
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3000, Energy]
type = helper
trigger1 = !animelemtime(33)
helpertype = normal
name = "Energy"
ID = 1110
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3000, Jump Smoke]
type = helper
trigger1 = !animelemtime(33)
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

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(6)
attr = S, HA
damage = ceil(cond(37 * fvar(0) < 7, 7, 37 * fvar(0))), 2
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.03125
guard.velocity = -7.03125
air.velocity = -3.125, -3.515625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(13)
attr = S, HA
damage = ceil(cond(37 * fvar(0) < 7, 7, 37 * fvar(0))), 2
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -64)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.03125
guard.velocity = -7.03125
air.velocity = -3.125, -3.515625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(20)
attr = S, HA
damage = ceil(cond(37 * fvar(0) < 7, 7, 37 * fvar(0))), 2
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 230)
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
ground.velocity = -7.03125
guard.velocity = -7.03125
air.velocity = -3.125, -3.515625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11) && var(22) = [1, 2]
trigger1 = !animelemtime(28)
attr = S, HA
damage = ceil(cond(cond(var(11) = 1, 46, 64) * fvar(0) < 7, 7, cond(var(11) = 1, 46, 64) * fvar(0))), 2
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -8)
animtype = back
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.9765625, -5.859375
guard.velocity = -7.03125
air.velocity = -0.9765625, -5.859375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = back
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11) && var(22) = 3
trigger1 = !animelemtime(28)
attr = S, HA
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 2
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -8)
animtype = back
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.03125
guard.velocity = -7.03125
air.velocity = -3.125, -3.515625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = back
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11) && var(22) = [1, 2]
trigger1 = !animelemtime(33)
attr = A, HA
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0))), 2
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := -32)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -10.9375
guard.velocity = -7.03125
air.velocity = -3.125, -10.9375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = medium
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11) && var(22) = 2
trigger1 = !animelemtime(35)
attr = A, HA
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 2
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -10.9375
guard.velocity = -7.03125
air.velocity = -3.125, -10.9375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11) && var(22) = 3
trigger1 = !animelemtime(33)
attr = A, HA
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 2
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 15
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := -32)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125
guard.velocity = -7.03125
air.velocity = -3.125, -3.515625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = medium
forcestand = 1
nochainID = 450

[state 3000, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11) && var(22) = 3
trigger1 = !animelemtime(35)
attr = A, HA
damage = ceil(cond(46 * fvar(0) < 7, 7, 46 * fvar(0))), 2
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 15
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125
guard.velocity = -7.03125
air.velocity = -3.125, -3.515625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3000, Idle]
type = statetypeset
trigger1 = var(22) = [1, 2]
trigger1 = animelemtime(37) >= 0
movetype = I
persistent = 0

[state 3000, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = cond(var(22) = 3, 3001, 3005)
ctrl = 0

;=========================================================================
; Moonsault
;=========================================================================
[Statedef 3001]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 3001, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3001, Change Animation]
type = changeanim
trigger1 = !time
value = 3001

[state 3001, Set State Type]
type = statetypeset
trigger1 = !animelemtime(3)
statetype = A
physics = N

[state 3001, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 1405, 0
volumescale = 100
channel = 0

[state 3001, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 40, 0
volumescale = 100

[state 3001, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 3
volumescale = 100
channel = 1

[state 3001, Set Velocity]
type = velset
trigger1 = !animelemtime(1)
x = 3.125

[state 3001, Set Velocity]
type = velset
trigger1 = !animelemtime(3)
x = 1.953125
y = -11.71875

[state 3001, Increment Velocity]
type = veladd
trigger1 = animelemtime(3) > 0
y = 0.5859375

[state 3001, Energy]
type = helper
trigger1 = !animelemtime(3)
helpertype = normal
name = "Energy"
ID = 1110
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3001, Jump Smoke]
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

[state 3001, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(3)
attr = A, HA
damage = ceil(cond(37 * fvar(0) < 7, 7, 37 * fvar(0))), 6
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := -32)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -10.9375
guard.velocity = -7.03125
air.velocity = -3.125, -10.9375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = medium
forcestand = 1
nochainID = 450

[state 3001, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(5)
attr = A, HA
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0))), 6
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -10.9375
guard.velocity = -7.03125
air.velocity = -3.125, -10.9375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
nochainID = 450

[state 3001, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = !animelemtime(6)
attr = A, HA
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0))), 6
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 330)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -88)
animtype = up
ground.type = low
air.animtype = up
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -10.9375
guard.velocity = -7.03125
air.velocity = -3.125, -10.9375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = up
forcestand = 1
nochainID = 450

[state 3001, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 3001, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 3005
ctrl = 0

;=========================================================================
; Land
;=========================================================================
[Statedef 3005]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 3005, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3005, Change Animation]
type = changeanim
trigger1 = !time
value = 3005

[state 3005, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 3005, Land Smoke]
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

[state 3005, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Blowning Starbow Portal
;=========================================================================
[StateDef 3100]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

; Button Level
[state 3100, Level]
type = null
trigger1 = !time
; Button Level
trigger1 = var(22) := cond(ailevel, var(22), cond(command = "x" || command = "NE_x", 1, cond(command = "y" || command = "NE_y", 2, 3)))
; Power Level, Super Cancel Level
trigger1 = var(22) := cond(power < 2000 && var(22) > 1 || var(18), 1, cond(power < 3000 && var(22) = 3, 2, var(22)))
; Juggle, Dampener
trigger1 = var(23) := cond(var(22) = 1, 8, cond(var(22) = 2, 10, 16))
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
trigger1 = !animelemtime(2)
helpertype = normal
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
trigger1 = animelemtime(2) <= 48
value = SCA
time = 3 * var(22)

[state 3100, Animation Loop]
type = varset
trigger1 = !animelemtime(8)
var(0) = 10
persistent = 0

[state 3100, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(8)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 5

[state 3100, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 3100, 0
volumescale = 100
channel = 0

[state 3100, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 3000, random % 2
volumescale = 100
channel = 0

[state 3100, Width]
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

[state 3100, Portal]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Portal"
ID = 3105
stateno = 3105
postype = p1
pos = 7, -15
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3100, Laser]
type = helper
triggerall = numhelper(3105) && var(22) = 1
triggerall = helper(3105),animelemtime(13) >= 0
trigger1 = !helper(3105),animelemtime(13) || !helper(3105),animelemtime(21)
trigger2 = !helper(3105),animelemtime(29) || !helper(3105),animelemtime(37)
helpertype = normal
name = "Laser"
ID = 3110
stateno = 3110
postype = left
pos = ceil((helper(3105),screenpos x)) + (80 + cond(random < 500, random % 32, -random % 32)) * facing, ceil(p2dist y - (60 * p2statetype = S) - (30 * p2statetype = C) - (75 * p2statetype = A))
facing = helper(3105), facing
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3100, Laser]
type = helper
triggerall = numhelper(3105) && var(22) = 2
triggerall = helper(3105),animelemtime(13) >= 0
trigger1 = !helper(3105),animelemtime(13) || !helper(3105),animelemtime(17)
trigger2 = !helper(3105),animelemtime(21) || !helper(3105),animelemtime(25)
trigger3 = !helper(3105),animelemtime(29) || !helper(3105),animelemtime(33)
trigger4 = !helper(3105),animelemtime(37)
helpertype = normal
name = "Laser"
ID = 3110
stateno = 3110
postype = left
pos = ceil((helper(3105),screenpos x)) + (80 + cond(random < 500, random % 32, - random % 32)) * facing, ceil(helper(3105),pos y - 64) + (cond(random < 500, random % 32, -random % 32))
facing = helper(3105), facing
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3100, Laser]
type = helper
triggerall = numhelper(3105) && var(22) = 3
triggerall = helper(3105),animelemtime(13) >= 0
trigger1 = !helper(3105),animelemtime(13) || !helper(3105),animelemtime(15)
trigger2 = !helper(3105),animelemtime(17) || !helper(3105),animelemtime(19)
trigger3 = !helper(3105),animelemtime(21) || !helper(3105),animelemtime(23)
trigger4 = !helper(3105),animelemtime(25) || !helper(3105),animelemtime(27)
trigger5 = !helper(3105),animelemtime(29) || !helper(3105),animelemtime(31)
trigger6 = !helper(3105),animelemtime(33) || !helper(3105),animelemtime(35)
trigger7 = !helper(3105),animelemtime(37) || !helper(3105),animelemtime(39)
helpertype = normal
name = "Laser"
ID = 3110
stateno = 3110
postype = left
pos = ceil((helper(3105),screenpos x)) + (80 + cond(random < 500, random % 32, - random % 32)) * facing, ceil(helper(3105),pos y - 64) + (cond(random < 500, random % 64, -random % 64))
facing = helper(3105), facing
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3100, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[state 3100, End State]
type = changestate
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
trigger1 = fvar(0) := root,fvar(0)

[state 3105, Change Animation]
type = changeanim
trigger1 = !time
value = 3105

[state 3105, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 7, -17

[state 3105, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3105, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3105, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3120, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(8)
attr = S, HP
damage = ceil(cond(10 * fvar(0) < 7, 7, 10 * fvar(0))), 2
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 1
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -72)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -12.5
guard.velocity = -12.5
air.velocity = -0.9765625, -8.59375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
kill = 0

[state 3105, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3100 || root,anim != 3100
trigger3 = root,time <= 1

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3106]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

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
trigger1 = var(22) = 2
trigger1 = movecontact = 1
trigger1 = numtarget
var(20) = 2

[state 3106, Helper Cornerpush Target ID]
type = parentvarset
trigger1 = movecontact = 1
trigger1 = numtarget
var(37) = target,ID

[state 3106, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3106, Helper Cornerpush]
type = parentvarset
trigger1 = movecontact = 1
trigger1 = numtarget
fvar(2) = target,gethitvar(xvel) * 1.0

[state 3106, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = 3100 && parent,anim = 3100
pos = 7, -17

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
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3106, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 1

[state 3106, Hit Spark]
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
trigger1 = time
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

[state 3108, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 7, -17

[state 3108, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3108, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3108, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3100 || root,anim != 3100
trigger3 = root,time <= 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3110]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3110, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3111

[state 3110, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3110, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3110, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 3110, Change Animation]
type = changeanim
trigger1 = !time
value = 3110

[state 3110, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3110, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 3110, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 3, 6
volumescale = 255

[state 3110, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3110, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(5)
attr = S, HP
damage = ceil(cond((59 - (9 * var(22))) * fvar(0) < 7, 7, (59 - (9 * var(22))) * fvar(0))), 2 * (var(22) != 1)
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 8
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 1024), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.9765625, -8.59375
guard.velocity = -10.0
air.velocity = -0.9765625, -8.59375
airguard.velocity = -3.90625, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1

[state 3110, Hit]
type = hitdef
trigger1 = (var(10) < var(23) + 5 || var(19)) && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(5)
trigger1 = random < 500
attr = S, HP
damage = ceil(cond((59 - (9 * var(22))) * fvar(0) < 7, 7, (59 - (9 * var(22))) * fvar(0))), 2 * (var(22) != 1)
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 8
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 1024), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.9765625, -8.59375
guard.velocity = -10.0
air.velocity = -0.9765625, -8.59375
airguard.velocity = -3.90625, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1

[state 3110, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3111]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3111, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3111, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3111, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3111, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3111, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3111, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3111, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3111, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3111, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 1

[state 3111, Hit Spark]
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

[state 3111, Super Finish]
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

[state 3111, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3111, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3111, End State]
type = changestate
trigger1 = time
value = 3113

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3113]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3113, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3113, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3113, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Severe Break Slider
;=========================================================================
[StateDef 3200]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

; Level, Juggle, Cornerpush
[state 3200, Level]
type = null
trigger1 = !time
trigger1 = var(22) := 2 || var(23) := 26
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3200, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0

[state 3200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3200, Change Animation]
type = changeanim
trigger1 = !time
value = 3200

[state 3200, Add Power]
type = poweradd
trigger1 = !time
value = -1000 * var(22)

[state 3200, Super Effect]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
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

[state 3200, Super Pause]
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

[state 3200, Vulnerability]
type = nothitby
trigger1 = animelemtime(4) <= 48
value = SCA
time = 3 * var(22)

[state 3200, Animation Loop]
type = varset
trigger1 = !animelemtime(17)
var(0) = 5
persistent = 0

[state 3200, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(17)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 11

[state 3200, Animation Loop]
type = varset
trigger1 = !animelemtime(26)
var(0) = 3
persistent = 0

[state 3200, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(26)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 20

[state 3200, Animation Loop]
type = varset
trigger1 = !animelemtime(42)
var(0) = 3
persistent = 0

[state 3200, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(42)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 36

[state 3200, End State]
type = changestate
trigger1 = !animelemtime(26) && numhelper(3225)
trigger1 = helper(3225),moveguarded || !helper(3225), numtarget
value = 3201
ctrl = 0

[state 3200, Set State Type]
type = statetypeset
trigger1 = !animelemtime(29)
statetype = A
physics = N

[state 3200, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 3100, 0
volumescale = 100
channel = 0

[state 3200, Voice]
type = playsnd
trigger1 = !animelemtime(10)
trigger2 = !animelemtime(19)
trigger3 = !animelemtime(35)
value = 3102, (animelemtime(19) >= 0) + (animelemtime(35) >= 0)
volumescale = 100
channel = 0

[state 3200, Sound]
type = playsnd
trigger1 = !animelemtime(10)
trigger2 = !animelemtime(19)
trigger3 = !animelemtime(35)
value = 3, 7
volumescale = 100

[state 3200, Sound]
type = playsnd
trigger1 = !animelemtime(19)
value = 3, 14
volumescale = 100

[state 3200, Shake]
type = envshake
trigger1 = !animelemtime(10)
trigger2 = !animelemtime(19)
trigger3 = !animelemtime(35)
time = 15
ampl = 6

[state 3200, Set Velocity]
type = velset
trigger1 = !animelemtime(29)
x = 1.5625
y = -12.5

[state 3200, Increment Velocity]
type = veladd
trigger1 = animelemtime(29) > 0
trigger1 = animelemtime(34) < 0
y = 0.5859375

[state 3200, Set Velocity]
type = velset
trigger1 = !animelemtime(35)
x = -0.390625
y = -0.1953125

[state 3200, Set Velocity]
type = velset
trigger1 = !animelemtime(42)
x = -0.390625
y = 0.0

[state 3200, Increment Velocity]
type = veladd
trigger1 = animelemtime(42) > 0
y = 0.5859375

[state 3200, Width]
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

[state 3200, Portal]
type = helper
trigger1 = !animelemtime(10)
helpertype = normal
name = "Portal"
ID = 3210
stateno = 3210
postype = p1
pos = 120, -56
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3200, Explosion]
type = helper
trigger1 = !animelemtime(10)
helpertype = normal
name = "Explosion"
ID = 3215
stateno = 3215
postype = p1
pos = 112, -56
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3200, Air Pressure]
type = helper
trigger1 = !animelemtime(10)
trigger2 = !animelemtime(19)
trigger3 = !animelemtime(35)
helpertype = normal
name = "Air Pressure"
ID = 3220
stateno = 3220
postype = p1
pos = 112 * !animelemtime(10) + 136 * !animelemtime(19) + 80 * !animelemtime(35), -56  + 32 * !animelemtime(35)
ownpal = 1
keyctrl = 0
size.xscale = 0.75
size.yscale = 0.75

[state 3200, Arm Laser]
type = helper
trigger1 = !animelemtime(10)
trigger2 = !animelemtime(19)
helpertype = normal
name = "Arm Laser"
ID = 3225
stateno = 3225
postype = p1
pos = cond(numhelper(3215), abs((ceil((helper(3215),pos x - pos x) * facing)) - 5), 112) * !animelemtime(10) + cond(numhelper(3215), abs((ceil((helper(3215),pos x - pos x) * facing)) + 10), 128) * !animelemtime(19), -56
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 3200, Leg Laser]
type = helper
trigger1 = !animelemtime(35)
helpertype = normal
name = "Leg Laser"
ID = 3230
stateno = 3230
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 3200, After Effect]
type = varset
trigger1 = !animelemtime(42)
var(0) = 1

[state 3200, After Effect]
type = helper
trigger1 = !animelemtime(42)
helpertype = normal
name = "After Effect"
ID = 3235
stateno = 3235
postype = front
pos = 0, 25
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3200, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3200, Idle]
type = statetypeset
trigger1 = animelemtime(42) >= 0
movetype = I
persistent = 0

[state 3200, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 3205
ctrl = 0

;=========================================================================
; Fail
;=========================================================================
[StateDef 3201]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3201, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3201, Change Animation]
type = changeanim
trigger1 = !time
value = 3201

[state 3201, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Land
;=========================================================================
[Statedef 3205]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 3205, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3205, Change Animation]
type = changeanim
trigger1 = !time
value = 3005

[state 3205, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 3205, Land Smoke]
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

[state 3205, Control]
type = ctrlset
trigger1 = !time
value = 1

[state 3205, End State]
type = changeState
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Portal
;=========================================================================
[Statedef 3210]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3210, Change Animation]
type = changeanim
trigger1 = !time
value = 3210

[state 3210, Root Bind]
type = bindtoroot
trigger1 = root,var(39)
trigger1 = root,stateno = 3200 && root,anim = 3200
trigger1 = !root,vel x && !root,vel y
pos = 120, -56

[state 3210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3210, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3200 || root,anim != 3200

;=========================================================================
; Explosion
;=========================================================================
[Statedef 3215]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3215, Change Animation]
type = changeanim
trigger1 = !time
value = 3215

[state 3215, Root Bind]
type = bindtoroot
trigger1 = root,var(39)
trigger1 = root,stateno = 3200 && root,anim = 3200
trigger1 = !root,vel x && !root,vel y
pos = 112, -56

[state 3215, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3215, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3215, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3200 || root,anim != 3200

;=========================================================================
; Air Pressure
;=========================================================================
[Statedef 3220]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3220, Change Animation]
type = changeanim
trigger1 = !time
value = 3220

[state 3220, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3220, Angle, Transparency]
type = varset
trigger1 = root,stateno = 3200
trigger1 = !root,animelemtime(35)
var(0) = 1

[state 3220, Angle]
type = angledraw
trigger1 = var(0)
value = -30

[state 3220, Transparency]
type = trans
trigger1 = var(0)
trans = add

[state 3220, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3220, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3225]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3225, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3226

[state 3225, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3225, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3225, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 3225, Change Animation]
type = changeanim
trigger1 = !time * !prevstateno
value = 3225

[state 3225, Root Bind]
type = bindtoroot
trigger1 = root,var(39)
trigger1 = root,stateno = 3200 && root,anim = 3200
trigger1 = !root,vel x && !root,vel y
pos = cond(numhelper(3215) && root,animelemtime(19) < 0, abs(ceil((helper(3215),pos x - root,pos x) * facing) - 5), cond(numhelper(3215) && root,animelemtime(19) >= 0, abs(ceil((helper(3215),pos x - root,pos x) * facing) + 10), 128)), -56

[state 3225, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3225, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3225, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3225, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 3225, Hit]
type = hitdef
triggerall = var(10) < var(23) + 5 && !var(11)
triggerall = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(3) || !animelemtime(6)
trigger2 = !animelemtime(9) || !animelemtime(12)
trigger3 = !animelemtime(15) || animelemtime(15) = 1
attr = S, HP
damage = ceil(cond(14 * fvar(0) < 7, 7, 14 * fvar(0))), 6
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 15
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 1000), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375
guard.velocity = -10.9375
air.velocity = -10.9375, 0.0
airguard.velocity = -3.90625, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3225
p2facing = 1
p2stateno = 990

[state 3225, Hit]
type = hitdef
triggerall = var(10) < var(23) + 5 && !var(11)
triggerall = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
triggerall = random < 500
trigger1 = !animelemtime(3) || !animelemtime(6)
trigger2 = !animelemtime(9) || !animelemtime(12)
trigger3 = !animelemtime(15) || animelemtime(15) = 1
attr = S, HP
damage = ceil(cond(14 * fvar(0) < 7, 7, 14 * fvar(0))), 6
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 15
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 1000), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.937
guard.velocity = -10.937
air.velocity = -10.9375, 0.0
airguard.velocity = -3.90625, -3.125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3225
p2facing = 1
p2stateno = 990

[state 3225, Idle]
type = statetypeset
trigger1 = animelemtime(16) >= 0
movetype = I
persistent = 0

[state 3225, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3200 || root,anim != 3200

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3226]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3226, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3226, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3226, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3226, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3226, Root Bind]
type = bindtoroot
trigger1 = root,var(39)
trigger1 = root,stateno = 3200 && root,anim = 3200
trigger1 = !root,vel x && !root,vel y
pos = cond(numhelper(3215) && root,animelemtime(19) < 0, abs(ceil((helper(3215),pos x - root,pos x) * facing) - 5), cond(numhelper(3215) && root,animelemtime(19) >= 0, abs(ceil((helper(3215),pos x - root,pos x) * facing) + 10), 128)), -56

[state 3226, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3226, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3226, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3226, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3226, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 1

[state 3226, Hit Spark]
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

[state 3226, Super Finish]
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

[state 3226, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3226, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3226, End State]
type = changestate
trigger1 = time
value = 3225 + 3 * (animelemtime(15) > 1)

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3228]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3228, Special Effect]
type = bindtoroot
trigger1 = root,var(39)
trigger1 = root,stateno = 3200 && root,anim = 3200
trigger1 = !root,vel x && !root,vel y
pos = cond(numhelper(3215) && root,animelemtime(19) < 0, abs(ceil((helper(3215),pos x - root,pos x) * facing) - 5), cond(numhelper(3215) && root,animelemtime(19) >= 0, abs(ceil((helper(3215),pos x - root,pos x) * facing) + 10), 128)), -56

[state 3228, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3228, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3228, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3200 || root,anim != 3200

;=========================================================================
; Proj Start 2
;=========================================================================
[Statedef 3230]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3230, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3231

[state 3230, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3230, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3230, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 3230, Change Animation]
type = changeanim
trigger1 = !time * !prevstateno
value = 3230

[state 3230, Root Bind]
type = null
trigger1 = root,animelemno(0) = [35, 41]
trigger1 = var(40) := 52 || var(41) := -36
trigger2 = root,animelemno(0) = 42
trigger2 = var(40) := 49 || var(41) := -31
trigger3 = root,animelemno(0) = 43
trigger3 = var(40) := 34 || var(41) := -15
trigger4 = root,animelemno(0) = 44
trigger4 = var(40) := 18 || var(41) := -6
trigger5 = root,animelemno(0) = 45
trigger5 = var(40) := 12 || var(41) := -3
trigger6 = root,animelemno(0) = 46
trigger6 = var(40) := 9 || var(41) := 0

[state 3230, Root Bind]
type = bindtoroot
trigger1 = root,stateno = 3200
pos = var(40), var(41)

[state 3230, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3230, Angle]
type = null
trigger1 = animelemno(0) = [1, 16]
trigger1 = var(42) := -30
trigger2 = animelemno(0) = 17
trigger2 = var(42) := -35
trigger3 = animelemno(0) = 18
trigger3 = var(42) := -45
trigger4 = animelemno(0) = 19
trigger4 = var(42) := -50
trigger5 = animelemno(0) = 20
trigger5 = var(42) := -55
trigger6 = animelemno(0) = 21
trigger6 = var(42) := -60
trigger7 = animelemno(0) = 22
trigger7 = var(42) := -65
trigger8 = animelemno(0) = 23
trigger8 = var(42) := -70
trigger9 = animelemno(0) = 24
trigger9 = var(42) := -75
trigger10 = animelemno(0) = 25
trigger10 = var(42) := -80
trigger11 = animelemno(0) = 26
trigger11 = var(42) := -85
trigger12 = animelemno(0) = 27
trigger12 = var(42) := -90

[state 3230, Angle]
type = angledraw
trigger1 = 1
value = var(42)

[state 3230, Transparency]
type = trans
trigger1 = 1
trans = add

[state 3230, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3230, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3230, Hit]
type = hitdef
triggerall = var(10) < var(23) + 5 && !var(11)
triggerall = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(4) || !animelemtime(7)
trigger2 = !animelemtime(10) || !animelemtime(13)
trigger3 = !animelemtime(16) || !animelemtime(17)
trigger4 = !animelemtime(18) || !animelemtime(20)
attr = A, HP
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0))), 8
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 15
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 440), 0 * (var(8) := 104)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375, 9.765625
guard.velocity = -10.9375
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
down.velocity = -10.9375, -9.765625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
p2facing = 1

[state 3230, Hit]
type = hitdef
triggerall = var(10) < var(23) + 5 && !var(11)
triggerall = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
triggerall = random < 500
trigger1 = !animelemtime(4) || !animelemtime(7)
trigger2 = !animelemtime(10) || !animelemtime(13)
trigger3 = !animelemtime(16) || !animelemtime(17)
trigger4 = !animelemtime(18) || !animelemtime(20)
attr = A, HP
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0))), 8
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 15
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 440), 0 * (var(8) := 104)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 24 + 4 * var(9)
guard.hittime = 24 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375, 9.765625
guard.velocity = -10.9375
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
down.velocity = -10.9375, -9.765625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
p2facing = 1

[state 3230, Idle]
type = statetypeset
trigger1 = animelemtime(21) >= 0
movetype = I
persistent = 0

[state 3230, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3200 || root,anim != 3200

;=========================================================================
; Proj Contact 2
;=========================================================================
[Statedef 3231]
type = A
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3231, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3231, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3231, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3231, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3231, Root Bind]
type = null
trigger1 = root,animelemno(0) = [35, 41]
trigger1 = var(40) := 52 || var(41) := -36
trigger2 = root,animelemno(0) = 42
trigger2 = var(40) := 49 || var(41) := -31
trigger3 = root,animelemno(0) = 43
trigger3 = var(40) := 34 || var(41) := -15
trigger4 = root,animelemno(0) = 44
trigger4 = var(40) := 18 || var(41) := -6
trigger5 = root,animelemno(0) = 45
trigger5 = var(40) := 12 || var(41) := -3
trigger6 = root,animelemno(0) = 46
trigger6 = var(40) := 9 || var(41) := 0

[state 3231, Root Bind]
type = bindtoparent
trigger1 = root,stateno = 3200
pos = var(40), var(41)

[state 3231, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3231, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3231, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3231, Angle]
type = null
trigger1 = animelemno(0) = [1, 16]
trigger1 = var(42) := -30
trigger2 = animelemno(0) = 17
trigger2 = var(42) := -35
trigger3 = animelemno(0) = 18
trigger3 = var(42) := -45
trigger4 = animelemno(0) = 19
trigger4 = var(42) := -50
trigger5 = animelemno(0) = 20
trigger5 = var(42) := -55
trigger6 = animelemno(0) = 21
trigger6 = var(42) := -60
trigger7 = animelemno(0) = 22
trigger7 = var(42) := -65
trigger8 = animelemno(0) = 23
trigger8 = var(42) := -70
trigger9 = animelemno(0) = 24
trigger9 = var(42) := -75
trigger10 = animelemno(0) = 25
trigger10 = var(42) := -80
trigger11 = animelemno(0) = 26
trigger11 = var(42) := -85
trigger12 = animelemno(0) = 27
trigger12 = var(42) := -90

[state 3231, Angle]
type = angledraw
trigger1 = 1
value = var(42)

[state 3231, Transparency]
type = trans
trigger1 = 1
trans = add

[state 3231, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3231, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 1

[state 3231, Hit Spark]
type = helper
trigger1 = !time
helpertype = normal
name = "Hit Spark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = cond(p2dist x < var(7), ceil(p2dist x), var(7)), cond(numtarget, ceil(target,pos y - pos y) + target,const(size.mid.pos.y), var(8))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 3231, Super Finish]
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

[state 3231, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3231, Miss]
type = hitdef
trigger1 = 1
attr = A, HP
hitflag = 

[state 3231, End State]
type = changestate
trigger1 = time
value = 3230 + 3 * (animelemtime(20) > 0)

;=========================================================================
; Proj End 2
;=========================================================================
[Statedef 3233]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3233, Root Bind]
type = null
trigger1 = root,animelemno(0) = [35, 41]
trigger1 = var(40) := 52 || var(41) := -36
trigger2 = root,animelemno(0) = 42
trigger2 = var(40) := 49 || var(41) := -31
trigger3 = root,animelemno(0) = 43
trigger3 = var(40) := 34 || var(41) := -15
trigger4 = root,animelemno(0) = 44
trigger4 = var(40) := 18 || var(41) := -6
trigger5 = root,animelemno(0) = 45
trigger5 = var(40) := 12 || var(41) := -3
trigger6 = root,animelemno(0) = 46
trigger6 = var(40) := 9 || var(41) := 0

[state 3233, Root Bind]
type = bindtoroot
trigger1 = root,stateno = 3200
pos = var(40), var(41)

[state 3233, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3233, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3233, Angle]
type = null
trigger1 = animelemno(0) = [1, 16]
trigger1 = var(42) := -30
trigger2 = animelemno(0) = 17
trigger2 = var(42) := -35
trigger3 = animelemno(0) = 18
trigger3 = var(42) := -45
trigger4 = animelemno(0) = 19
trigger4 = var(42) := -50
trigger5 = animelemno(0) = 20
trigger5 = var(42) := -55
trigger6 = animelemno(0) = 21
trigger6 = var(42) := -60
trigger7 = animelemno(0) = 22
trigger7 = var(42) := -65
trigger8 = animelemno(0) = 23
trigger8 = var(42) := -70
trigger9 = animelemno(0) = 24
trigger9 = var(42) := -75
trigger10 = animelemno(0) = 25
trigger10 = var(42) := -80
trigger11 = animelemno(0) = 26
trigger11 = var(42) := -85
trigger12 = animelemno(0) = 27
trigger12 = var(42) := -90

[state 3280, Angle]
type = angledraw
trigger1 = 1
value = var(42)

[state 3280, Transparency]
type = trans
trigger1 = 1
trans = add

[state 3233, Destroy]
type = destroyself
trigger1 = !animtime || root,movetype = H || !root,var(39)
trigger2 = root,stateno != 3200 || root,anim != 3200

;=========================================================================
; After Effect
;=========================================================================
[Statedef 3235]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 10

[state 3235, Change Animation]
type = changeanim
trigger1 = !time
value = 3235

[state 3235, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3235, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 3235, Sound]
type = playsnd
trigger1 = !time
trigger1 = var(0) < 8
value = 3, 8
volumescale = 100

[state 3235, After_Effect]
type = varset
trigger1 = !time
var(0) = parent,var(0)

[state 3235, After Effect]
type = helper
trigger1 = screenpos x = [ -5, gamewidth + 5]
trigger1 = !animelemtime(4)
trigger1 = var(0) < 12
trigger1 = var(0) := var(0) + 1
helpertype = normal
name = "After Effect"
ID = 3235
stateno = 3235
postype = p1
pos = ceil(-160 * const(size.xscale)), 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3235, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Reverse Canal Creation
;=========================================================================
[StateDef 3300]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

; Level, Juggle, Cornerpush
[state 3300, Level]
type = null
trigger1 = !time
trigger1 = var(22) := 3 || var(23) := 999
trigger2 = time = 5
trigger2 = fvar(1) := 0.0 || fvar(2) := 0.0

[state 3300, Reset Variables]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(44) := 0 || var(45) := 0

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
helpertype = normal
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

[state 3300, Super Portrait]
type = null ; helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Super Portrait"
ID = 6205
stateno = 6205
postype = left
facing = facing
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 3300, Super Pause]
type = superpause
trigger1 = !animelemtime(4)
time = 64
movetime = 64
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3300, Vulnerability]
type = nothitby
trigger1 = animelemtime(4) <= 64
value = SCA
time = 3 * var(22)

[state 3300, Animation Loop]
type = varset
trigger1 = !animelemtime(8)
var(0) = 10
persistent = 0

[state 3300, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(8)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 5

[state 3300, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 3100, 0
volumescale = 100
channel = 0

[state 3300, Creator]
type = helper
trigger1 = !numhelper(3310)
helpertype = normal
name = "Creator"
ID = 3310
stateno = 3310
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 3300, Ball]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Ball"
ID = 3400
stateno = 3400
postype = p1
pos = 25, -77
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[state 3300, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 3300, Idle]
type = statetypeset
trigger1 = !numhelper(3400)
trigger2 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 3300, End State]
type = changestate
trigger1 = numhelper(3400)
trigger1 = helper(3400), stateno = 3405
value = 3305
ctrl = 0

[state 3300, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Entrap
;=========================================================================
[StateDef 3305]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 3305, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3305, Change Animation]
type = changeanim
trigger1 = !time
value = 3305

[state 3305, Animation Loop]
type = varset
trigger1 = !animelemtime(8)
var(0) = 8
persistent = 0

[state 3305, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(8)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 5

[state 3305, Animation Loop]
type = varset
trigger1 = !animelemtime(17)
var(0) = 8
persistent = 0

[state 3305, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(17)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 14

[state 3305, Animation Loop]
type = varset
trigger1 = !animelemtime(26)
var(0) = 2
persistent = 0

[state 3305, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(26)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 23

[state 3305, Animation Loop]
type = varset
trigger1 = !animelemtime(32)
var(0) = 3
persistent = 0

[state 3305, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(32)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 29

[state 3305, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 3200, 0
volumescale = 100
channel = 0
persistent = 0

[state 3305, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 3, 9
volumescale = 100
persistent = 0

[state 3305, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 3, 11
volumescale = 100
persistent = 0

[state 3305, Hit Sound]
type = playsnd
trigger1 = var(44)
value = 200, 530
channel = 1

[state 3305, Hit Sound]
type = varset
trigger1 = var(44)
var(44) = 0

[state 3305, Arm Portal]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Arm Portal"
ID = 3315
stateno = 3315
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.3
size.yscale = 0.3

[state 3305, Bullet]
type = helper
trigger1 = !animelemtime(14)
trigger2 = !animelemtime(15)
trigger3 = !animelemtime(16)
helpertype = normal
name = "Bullet"
ID = 3320
stateno = 3320
postype = p1
pos = -100 + random % 91, -10 + -random % 91
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.3
size.yscale = 0.3

[state 3305, Implosion]
type = helper
trigger1 = numhelper(3400)
trigger1 = !animelemtime(21)
helpertype = normal
name = "Implosion"
ID = 3325
stateno = 3325
postype = p1
pos = ceil((helper(3400),pos x - pos x) * facing), ceil(helper(3400),pos y)
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.275
size.yscale = 1.275

[state 3305, Sunset]
type = helper
trigger1 = numhelper(3325)
trigger1 = !helper(3325), animelemtime(7)
helpertype = normal
name = "Sunset"
ID = 3330
stateno = 3330
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 3305, Forest]
type = helper
trigger1 = numhelper(3325)
trigger1 = !helper(3325), animelemtime(7)
helpertype = normal
name = "Forest"
ID = 3335
stateno = 3335
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 3305, Space]
type = helper
trigger1 = numhelper(3325)
trigger1 = !helper(3325), animelemtime(7)
helpertype = normal
name = "Space"
ID = 3340
stateno = 3340
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 3305, Implosion]
type = helper
trigger1 = numhelper(3325)
trigger1 = numhelper(3400)
trigger1 = helper(3325),anim = 3325
trigger1 = !helper(3325),animelemtime(18)
trigger1 = var(45) := 1
helpertype = normal
name = "Implosion"
ID = 3345
stateno = 3345
postype = p1
pos = ceil((helper(3400),pos x - pos x) * facing), ceil(helper(3400),pos y)
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 3305, End State]
type = changestate
trigger1 = !animtime
trigger2 = !numhelper(3400)
value = 0
ctrl = 1

;=========================================================================
; Creator
;=========================================================================
[Statedef 3310]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3310, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 3310, Background Effect]
type = bgpalfx
trigger1 = root,stateno = 3305
trigger1 = var(0) < 16
trigger1 = var(0) := var(0) + 1
trigger2 = var(0) = 16
time = 1
mul = 256 - (16 * var(0)), 256 - (16 * var(0)), 256 - (16 * var(0))
add = 0, 0, 0
color = 256 - (16 * var(0))
invertall = 0

[state 3310, Background Effect]
type = bgpalfx
trigger1 = root,numhelper(3345)
trigger1 = var(1) < 16
trigger1 = var(1) := var(1) + 1
trigger2 = var(1) = 16
time = 1
mul = (16 * var(1)), (16 * var(1)), (16 * var(1))
add = 0, 0, 0
color = (16 * var(1))
invertall = 0

[state 3310, Background Effect]
type = bgpalfx
trigger1 = root,winko
time = 1
mul = 256, 256,256
add = 0, 0, 0
color = 256
invertall = 0

[state 3310, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0

[state 3310, Special Effect]
type = assertspecial
trigger1 = root,stateno = 3305
flag = nofg
flag2 = nobardisplay
flag3 = nomusic

[state 3310, Effect]
type = explod
trigger1 = root,stateno = 3305
trigger1 = root,time = 1
ID = 1
anim = 7190
postype = left
pos = 0, ceil((1.33 * gameheight / gamewidth) * 0)
facing = 1
removetime = 16
bindtime = -1
ontop = 1
under = 0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5

[state 3310, Modify Effect]
type = modifyexplod
trigger1 = numexplod(1)
trans = addalpha
alpha = 256 - (16 * root,time -1), (16 * root,time -1)
ID = 1

[state 3310, Destroy]
type = removeexplod
trigger1 = root,movetype = H || !root,var(39) || var(1) = 16
trigger2 = (root,stateno != [3300, 3305]) || (root,anim != [3300, 3305])

[state 3310, Destroy]
type = destroyself
trigger1 = root,movetype = H || !root,var(39) || var(1) = 16
trigger2 = (root,stateno != [3300, 3305]) || (root,anim != [3300, 3305])

;=========================================================================
; Arm Portal
;=========================================================================
[Statedef 3315]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3315, Change Animation]
type = changeanim
trigger1 = !time
value = 3315

[state 3315, Animation Loop]
type = varset
trigger1 = !animelemtime(19)
var(0) = 4
persistent = 0

[state 3315, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(19)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 4

[state 3315, Root Bind]
type = bindtoroot
trigger1 = 1
pos = -3, -35

[state 3315, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3315, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3315, Destroy]
type = destroyself
trigger1 = !animtime
trigger2 = root,stateno != 3305 || root,anim != 3305

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3320]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0

[state 3320, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3321

[state 3320, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3320, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3320, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)
[state 3320, Priority, Target ID]
type = null
trigger1 = !time
trigger1 = var(0) := -99 + random % 199 || var(38) := root,var(38)

[state 3320, Change Animation]
type = changeanim
trigger1 = !time
value = 3400

[state 3320, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3320, Priority]
type = sprpriority
trigger1 = !time
value = var(0)

[state 3320, Angle]
type = angledraw
trigger1 = 1
scale = const(size.xscale) + (1.0 * cos(time * pi / 16.0)), const(size.yscale) + (1.0 * cos(time * pi / 16.0))

[state 3320, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[state 3320, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3320, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 3, 6
volumescale = 100

[state 3320, Velocity]
type = velset
trigger1 = !time
x = cond(random < 500, -random % 5, random % 5)
y = cond(random < 500, -random % 5, random % 5)

[state 3320, Calculate Velocity]
type = null
trigger1 = playeridexist(var(38))
trigger1 = fvar(12) := (playerid(var(38)), pos x - pos x) * facing || fvar(13) := (playerid(var(38)), pos y - pos y)
trigger1 = fvar(14) := exp(0.5 * ln((fvar(12) * fvar(12)) + (fvar(13) * fvar(13))))
trigger1 = fvar(15) := (fvar(12) / fvar(14)) * 0.5 || fvar(16) := (fvar(13) / fvar(14)) * 0.5

[state 3320, Turn]
type = turn
trigger1 = playeridexist(var(38))
trigger1 = (playerid(var(38)), pos x - pos x) * facing < 0

[state 3320, Increment Velocity]
type = veladd
trigger1 = time > 5
trigger1 = playeridexist(var(38))
x = fvar(15)
y = fvar(16)

[state 3320, Set Velocity]
type = velset
trigger1 = time > 5
x = cond(vel x > 5.0, 5.0, cond(vel x < -5.0, -5.0, vel x))
y = cond(vel y > 5.0, 5.0, cond(vel y < -5.0, -5.0, vel y))

[state 3320, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3320, Hit]
type = hitdef
trigger1 = 1
attr = S, HP
damage = ceil(cond(10 * fvar(0) < 7, 7, 10 * fvar(0))), 2
guardflag = 
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 3
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 0), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -6.640625
guard.velocity = -3.125
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
; numhits = 0
kill = 0

[state 3320, Destroy]
type = destroyself
trigger1 = time > 300

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3321]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3321, Reprisal]
type = parentvarset
trigger1 = movehit = 1 && var(9) = 1
trigger1 = numtarget
var(9) = 2

[state 3321, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3321, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3321, Hit Sound]
type = parentvarset
trigger1 = !time
var(44) = 1

[state 3321, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3321, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3321, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3321, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3321, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3321, Hit Sound]
type = null ; playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 1

[state 3321, Hit Spark]
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

[state 3321, Super Finish]
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

[state 3321, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3321, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3321, End State]
type = changestate
trigger1 = time
value = 3323

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3323]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3323, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 3323, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3323, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3323, Destroy]
type = destroyself
trigger1 = time > 16

;=========================================================================
; Implosion
;=========================================================================
[Statedef 3325]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3325, Change Animation]
type = changeanim
trigger1 = !time
value = 3325

[state 3325, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3325, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3325, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Sunset
;=========================================================================
[Statedef 3330]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 10

[state 3330, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 3330, Sunset]
type = explod
trigger1 = !time
ID = 1
anim = 7180
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
facing = 1
removetime = -2
bindtime = -1
ontop = 0
under = 0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 10

[state 3330, Modify Orange]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = time < 10
trans = addalpha
alpha = (26 * time), 256 - (26 * time)
ID = 1

[state 3330, Modify Orange]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = time >= 10
postype = left
pos = 160 + ceil(8.0 * (time - 10)), ceil((1.33 * gameheight / gamewidth) * 120) - ceil(8.0 * (time - 10))
trans = addalpha
alpha = 256 - (16 * (time - 10)), (16 * (time - 10))
scale = 1.0 + (0.1 * (time - 10)), 1.0 + (0.1 * (time - 10))
ID = 1

[state 3330, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; Forest
;=========================================================================
[Statedef 3335]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 9

[state 3335, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 3335, Forest]
type = explod
trigger1 = !time
ID = 1
anim = 7181
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
facing = 1
removetime = -2
bindtime = -1
ontop = 0
under = 0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 9

[state 3335, Modify Forest]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = time < 10
trans = addalpha
alpha = (26 * time), 256 - (26 * time)
ID = 1

[state 3335, Modify Forest]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = time >= 19
postype = left
pos = 160 - ceil(8.0 * (time - 19)), ceil((1.33 * gameheight / gamewidth) * 120) + ceil(8.0 * (time - 19))
trans = addalpha
alpha = 256 - (16 * (time - 19)), (16 * (time - 19))
scale = 1.0 + (0.1 * (time - 19)), 1.0 + (0.1 * (time - 19))
ID = 1

[state 3335, Destroy]
type = removeexplod
trigger1 = numhelper(6210)

[state 3335, Destroy]
type = destroyself
trigger1 = !numexplod || numhelper(6210)

;=========================================================================
; Space
;=========================================================================
[Statedef 3340]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 8

[state 3340, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 3340, Space]
type = explod
trigger1 = !time
ID = 1
anim = 7182
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
facing = 1
removetime = -2
bindtime = -1
ontop = 0
under = 0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 8

[state 3340, Modify Space]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = time < 10
trans = addalpha
alpha = (26 * time), 256 - (26 * time)
ID = 1

[state 3340, Modify Space]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = time >= 27
postype = left
pos = 160 + ceil(8.0 * (time - 27)), ceil((1.33 * gameheight / gamewidth) * 120) + ceil(4.0 * (time - 27))
trans = addalpha
alpha = 256 - (16 * (time - 27)), (16 * (time - 27))
scale = 1.0 + (0.1 * (time - 27)), 1.0 + (0.1 * (time - 27))
ID = 1

[state 3340, Destroy]
type = removeexplod
trigger1 = numhelper(6210)

[state 3340, Destroy]
type = destroyself
trigger1 = !numexplod || numhelper(6210)

;=========================================================================
; Symbol
;=========================================================================
[Statedef 3345]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3345, Change Animation]
type = changeanim
trigger1 = !time
value = 7185

[state 3345, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3345, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 3345, Sound]
type = playsnd
trigger1 = !time
value = 3, 10
volumescale = 100

[state 3345, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 3400]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 3400, Proj Contact]
type = changestate
trigger1 = movecontact || movereversed
value = 3401

[state 3400, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3400, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3400, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 3400, Change Animation]
type = changeanim
trigger1 = !time
value = 3400

[state 3400, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3400, Increment Velocity]
type = veladd
trigger1 = 1
x = 0.25

[state 3400, Increment Velocity]
type = veladd
triggerall = !root,ailevel && root,anim = 3300
triggerall = root,animelemtime(5) >= 0 && root,animelemtime(8) < 0
trigger1 = root,command = "holdfwd" || root,command = "holdback"
x = 0.1 * root,command = "holdfwd" - 0.3 * root,command = "holdback"

[state 3400, Increment Velocity]
type = veladd
triggerall = !root,ailevel && root,anim = 3300
triggerall = root,animelemtime(5) >= 0 && root,animelemtime(8) < 0
trigger1 = root,command = "holdup" || root,command = "holddown"
y = 0.1 * root,command = "holddown" - 0.1 * root,command = "holdup"

[state 3400, Increment Velocity]
type = veladd
triggerall = root,ailevel && numenemy && root,anim = 3300
triggerall = root,animelemtime(5) >= 0 && root,animelemtime(8) < 0
trigger1 = 1
x = 0.1 * (enemynear,vel y = 0.0 || p2dist x > 160 || p2movetype = H) - 0.3 * ((enemynear,vel y != 0.0 || p2movetype != H) && p2dist x <= 160 && random < 333)

[state 3400, Increment Velocity]
type = veladd
triggerall = root,ailevel && root,anim = 3300
triggerall = root,animelemtime(5) >= 0 && root,animelemtime(8) < 0
trigger1 = p2dist y - 55 != [-50, 50]
y = 0.1 * ((p2dist y - 55) > 0) - 0.1 * ((p2dist y - 55) < 0)

[state 3400, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3400, Hit]
type = hitdef
trigger1 = var(0) < 3 && !var(1)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = time && numenemy
trigger1 = enemynear,pos y + enemynear,const(size.mid.pos.y) <= pos y
attr = S, HP
damage = ceil(cond(10 * fvar(0) < 7, 7, 10 * fvar(0))), 6
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 3
guard.pausetime = 0, 29
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := 0)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -6.640625
guard.velocity = -3.125
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3400
p2facing = 1
kill = 0

[state 3400, Hit]
type = hitdef
trigger1 = var(0) < 3 && !var(1)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = time && numenemy
trigger1 = enemynear,pos y + enemynear,const(size.mid.pos.y) > pos y
attr = S, HP
damage = ceil(cond(10 * fvar(0) < 7, 7, 10 * fvar(0))), 6
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 3
guard.pausetime = 0, 29
hitsound = -1 + 0 * (var(3) := 530)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 5)
guard.sparkno = -1 + 0 * (var(6) := 5)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 24 + 4 * var(9)
ground.hittime = 24 + 4 * var(9)
guard.slidetime = 12 + 4 * var(9)
guard.hittime = 12 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -6.640625
guard.velocity = -3.125
air.velocity = -3.125, -6.640625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = hard
forcestand = 1
ID = 3400
p2facing = 1
kill = 0

[state 3400, Destroy]
type = destroyself
trigger1 = frontedgedist <= -96

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 3401]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3401, Reprisal]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(9) = 1
var(9) = 2

[state 3401, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 3401, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 3401, Target ID]
type = parentvarset
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID

[state 3401, Hit Sound]
type = playsnd
trigger1 = !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 1

[state 3401, Hit Spark]
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
persistent = 0

[state 3401, Super Finish]
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

[state 3401, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3401, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3401, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3401, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3401, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3401, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3401, End State]
type = changestate
trigger1 = time > 3 && movehit && numtarget(3400)
trigger1 = !target(3400), ishelper
trigger1 = root,stateno = 3300 && root,animelemno(0) = [5, 7]
value = 3405

[state 3401, End State]
type = changestate
trigger1 = time > 3
value = 3403

;=========================================================================
; Proj End
;=========================================================================
[Statedef 3403]
type = S
movetype = I
physics = N
ctrl = 0
movehitpersist = 1

[state 3403, End State]
type = changestate
trigger1 = movehit && numtarget(3400)
trigger1 = !target(3400), ishelper
trigger1 = root,stateno = 3300 && root,animelemno(0) = [5, 7]
value = 3405

[state 3403, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3403, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3403, Increment Velocity]
type = veladd
trigger1 = 1
x = 0.25

[state 3403, Destroy]
type = destroyself
trigger1 = frontedgedist <= -96
trigger2 = time > 360

;=========================================================================
; Ball -  Entrap
;=========================================================================
[Statedef 3405]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 3405, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3405, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3405, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 3405, Change Animation]
type = changeanim
trigger1 = !time
value = 3405

[state 3405, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3405, Set Velocity]
type = velset
trigger1 = root,anim = 3305
trigger1 = !root,animelemtime(14)
x = (root,pos x - pos x + 100 * facing) * facing / 96.0
y = (ceil((1.33 * gameheight / gamewidth) * (gameheight * 0.33333333333333333333333333333333)) - screenpos y) / 96.0
persistent = 0

[state 3405, Velocity]
type = velset
trigger1 = root,anim = 3305
trigger1 = !root,animelemtime(17)
x = 0.0
y = 0.0

[state 3405, Target State]
type = targetstate
trigger1 = !time
value = 3490

[state 3405, Target State]
type = targetstate
trigger1 = numtarget
trigger1 = target, stateno != [3490, 3491]
value = 3491

[state 3405, Bind to Target]
type = bindtotarget
trigger1 = !time
trigger1 = numtarget(3400)
pos = 0, target(3400),const(size.mid.pos.y), foot

[state 3405, Target Bind]
type = targetbind
trigger1 = 1
pos = 0, 0

[state 3405, End State]
type = changestate
trigger1 = root,var(45) || !numtarget
trigger2 = (root,stateno != [3300, 3305]) || (root,anim != [3300, 3305])
value = 3410

[state 3405, Destroy]
type = destroyself
trigger1 = root,var(45) || !numtarget
trigger2 = (root,stateno != [3300, 3305]) || (root,anim != [3300, 3305])

;=========================================================================
; Ball -  Release
;=========================================================================
[Statedef 3410]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 3410, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 3410, Super Cancel Juggle, Attack Level, and Super Dampener]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22) || var(23) := root,var(23)
[state 3410, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0)

[state 3410, Change Animation]
type = changeanim
trigger1 = !time
value = 9999

[state 3410, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3410, naash]
type = playsnd
trigger1 = !time
value = 200, 530
volumescale = 100
channel = 1

[state 3410, naash]
type = envshake
trigger1 = !time
time = 12
ampl = 6

[state 3410, naash]
type = hitadd
trigger1 = !time
value = 1

[state 3410, Hit Spark]
type = helper
trigger1 = !time
helpertype = normal
name = "Hit Spark"
ID = 6100
stateno = 6100
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 65536
supermovetime = 65536

[state 3401, Super Finish]
type = helper
trigger1 = winko && var(38)
trigger1 = playeridexist(var(38)) && !numhelper(6210)
trigger1 = playerid(var(38)),loseko
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
ignorehitpause = 1
persistent = 0

[state 3410, Target Damage]
type = targetlifeadd
trigger1 = !time
value = ceil(cond(238 * fvar(0) < 7, 7, -238 * fvar(0)))

[state 3410, Target Power]
type = targetpoweradd
trigger1 = !time
value = 100

[state 3410, Target State]
type = targetstate
trigger1 = !time
value = 3493

[state 3410, Destroy]
type = destroyself
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target,statetype != A 

;=========================================================================
; Target Caged
;=========================================================================
[Statedef 3490]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3490, Destroy]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3490, Change Animation]
type = changeanim2
trigger1 = !time
value = 3490

[state 3490, Special Effect]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0

[state 3490, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, AP
time = 1
ignorehitpause = 1

[state 3490, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 500
value = 5050

;=========================================================================
; Target Caged
;=========================================================================
[Statedef 3491]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3491, Destroy]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3491, Change Animation]
type = changeanim2
trigger1 = !time
value = 3491 + (random % 2)

[state 3491, Special Effect]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0

[state 3491, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, AP
time = 1
ignorehitpause = 1

[state 3491, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 500
value = 5050

;=========================================================================
; Target Released
;=========================================================================
[Statedef 3493]
type = A
movetype = H
physics = N
sprpriority = -1

[state 3493, Change Animation]
type = changeanim2
trigger1 = !time
value = 3491

[state 3493, Change Animation]
type = changeanim2
trigger1 = time = 8
value = 3493

[state 3493, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 3493, Offset]
type = offset
trigger1 = anim = 3491
x = cond(time % 2 = 0, -2, 2)
y = cond(time % 3 = 0, -2, 2)

[state 3493, Increment Position]
type = posadd
trigger1 = time = 8
y = -const(size.mid.pos.y)

[state 3493, Set Velocity]
type = velset
trigger1 = time = 8
x = -3.125
y = -10.171875

[state 3493, Increment Velocity]
type = veladd
trigger1 = time > 8
y = 0.5859375

[state 3493, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10

[State 3493, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5110

[state 3493, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 500
value = 5050