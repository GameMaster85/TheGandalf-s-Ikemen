; Aoko By RajaaBoy

;=========================================================================
; SWP
;=========================================================================
[Statedef 200]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 200, Change Animation]
type = changeanim
trigger1 = !time
value = 200

[state 200, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, random % 3
volumescale = 100
channel = 0

[state 200, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 200, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = S, NA
damage = ceil(cond(32 * fvar(0) < 7, 7, 32 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -48)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -4.6875
air.velocity = -3.90625, -7.8125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 32, 8
givepower = 8, 8
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(24 * (0.5 ** var(10)) < 16, 16, 24 * (0.5 ** var(10))), 24))
fall.animtype = light
nochainID = 450

[state 200, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 200, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SMP
;=========================================================================
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 210, Set Position]
type = posset
trigger1 = !time
y = 0

[state 210, Change Animation]
type = changeanim
trigger1 = !time
value = 210

[state 210, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 3 + random % 3
volumescale = 100
channel = 0

[state 210, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 210, Increment Position]
type = posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
x = 9.765625

[state 210, Increment Position]
type = posadd
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
x = 3.90625

[state 210, Increment Position]
type = posadd
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
x = 1.953125

[state 210, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(5)
attr = S, NA
damage = ceil(cond(64 * fvar(0) < 7, 7, 64 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -48)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -6.1875
guard.velocity = -6.1875
air.velocity = -4.8828125, -6.8359375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 56, 32
givepower = 32, 32
envshake.time = 8
envshake.ampl = 4
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(48 * (0.5 ** var(10)) < 24, 24, 48 * (0.5 ** var(10))), 48))
fall.animtype = medium
nochainID = 450

[state 210, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 210, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SSP -  Edge
;=========================================================================
[Statedef 220]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 220, Set Position]
type = posset
trigger1 = !time
y = 0

[state 220, Change Animation]
type = changeanim
trigger1 = !time
value = 221

[state 220, Edge: Change Animation]
type = changeanim
triggerall = !ailevel && anim = 221
triggerall = animelemtime(2) >= 0 && animelemtime(4) < 0
trigger1 = command != "hold_z"
value = 220
elem = animelemno(0)

[state 220, Edge: Change Animation]
type = changeanim
triggerall = ailevel && anim = 221
triggerall = animelemtime(2) >= 0 && animelemtime(4) < 0
trigger1 = numtarget
trigger2 = p2bodydist x < 96 && p2movetype = A
trigger3 = random < 48
value = 220
elem = animelemno(0)

[state 220, Edge: Palette Effect]
type = palfx
trigger1 = anim = 221
trigger1 = animelemtime(2) >= 5 && animelemtime(4) < 0
time = 2
add = ceil(64 + cos(time * pi / 4.0) * 64), 0, 0

[state 220, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 220, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 220, Edge: Offset]
type = offset
trigger1 = anim = 221
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
x = 1.0 * cos(time * pi / 1.5)
y = 1.0 * cos(time * pi / 1.5)

[state 220, Increment Position]
type = posadd
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
trigger1 = (3.90625 - 0.390625 * animelemtime(2)) > 0
x = 3.90625 - 0.390625 * animelemtime(2)

[state 220, Increment Position]
type = posadd
trigger1 = anim = 221
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = (7.8125 - 0.390625 * animelemtime(4)) > 0
x = 7.8125 - 0.390625 * animelemtime(4)

[state 220, Width]
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

[state 220, Edge Effect]
type = helper
trigger1 = anim = 221 && !animelemtime(6)
helpertype = normal
name = "Edge Effect"
ID = 6035
stateno = 6035
postype = p1
pos = 44, -114
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 220, Edge: Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 220, Edge: Attack Distance]
type = attackdist
trigger1 = anim = 220
trigger2 = anim = 221 && !animelemtime(4)
value = const(size.attack.dist)
persistent = 0

[state 220, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 220 && !animelemtime(6)
attr = S, NA
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -88)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.6875
guard.velocity = -7.6875
air.velocity = -5.859375, -5.859375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 220, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 221 && !animelemtime(6)
attr = S, NA
damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0)))
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -88)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = 0.0, -12.109375
guard.velocity = -7.6875
air.velocity = -0.9765625, -8.5937
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 220, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 220, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SWK
;=========================================================================
[Statedef 230]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 230, Set Position]
type = posset
trigger1 = !time
y = 0

[state 230, Change Animation]
type = changeanim
trigger1 = !time
value = 230

[state 230, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, random % 3
volumescale = 100
channel = 0

[state 230, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 230, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = S, NA
damage = ceil(cond(32 * fvar(0) < 7, 7, 32 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -16)
hitsound = S300, 0
guardsound = s120, 0
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -4.6875
air.velocity = -3.90625, -7.8125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 32, 8
givepower = 8, 8
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(24 * (0.5 ** var(10)) < 16, 16, 24 * (0.5 ** var(10))), 24))
fall.animtype = light
nochainID = 450

[state 230, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 230, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SMK
;=========================================================================
[Statedef 240]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 240, Set Position]
type = posset
trigger1 = !time
y = 0

[state 240, Change Animation]
type = changeanim
trigger1 = !time
value = 240

[state 240, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 3 + random % 3
volumescale = 100
channel = 0

[state 240, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 240, Increment Position]
type = posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
x = 9.765625

[state 240, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(4)
attr = S, NA
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -56)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -6.1875
guard.velocity = -6.1875
air.velocity = -4.8828125, -6.8359375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 56, 32
givepower = 32, 32
envshake.time = 8
envshake.ampl = 4
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(48 * (0.5 ** var(10)) < 24, 24, 48 * (0.5 ** var(10))), 48))
fall.animtype = medium
nochainID = 450

[state 240, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 240, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SSK -  Edge
;=========================================================================
[Statedef 250]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 250, Set Position]
type = posset
trigger1 = !time
y = 0

[state 250, Change Animation]
type = changeanim
trigger1 = !time
value = 251

[state 250, Edge: Change Animation]
type = changeanim
triggerall = !ailevel && anim = 251
triggerall = animelemtime(2) >= 0 && animelemtime(4) < 0
trigger1 = command != "hold_c"
value = 250
elem = animelemno(0)

[state 250, Edge: Change Animation]
type = changeanim
triggerall = ailevel && anim = 251
triggerall = animelemtime(2) >= 0 && animelemtime(4) < 0
trigger1 = numtarget
trigger2 = p2bodydist x < 96 && p2movetype = A
trigger3 = random < 48
value = 250
elem = animelemno(0)

[state 220, Edge: Palette Effect]
type = palfx
trigger1 = anim = 251
trigger1 = animelemtime(2) >= 5 && animelemtime(4) < 0
time = 2
add = ceil(64 + cos(time * pi / 4.0) * 64), 0, 0

[state 250, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 250, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 220, Edge: Offset]
type = offset
trigger1 = anim = 251
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
x = 1.0 * cos(time * pi / 1.5)
y = 1.0 * cos(time * pi / 1.5)

[state 220, Edge Effect]
type = helper
trigger1 = anim = 251 && !animelemtime(6)
helpertype = normal
name = "Edge Effect"
ID = 6035
stateno = 6035
postype = p1
pos = 74, -78
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 250, Laser]
type = helper
trigger1 = anim = 251 && !animelemtime(7)
helpertype = normal
name = "Laser"
ID = 255
stateno = 255
postype = p1
pos = 70, -75
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 220, Edge: Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 220, Edge: Attack Distance]
type = attackdist
trigger1 = anim = 250
trigger2 = anim = 251 && !animelemtime(4)
value = const(size.attack.dist)
persistent = 0

[state 250, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 250 && !animelemtime(6)
attr = S, NA
damage = ceil(cond(78 * fvar(0) < 7, 7, 78 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -7.6875
guard.velocity = -7.6875
air.velocity = -5.859375, -5.859375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 250, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 251 && !animelemtime(7)
attr = S, NA
damage = ceil(cond(78 * fvar(0) < 7, 7, 78 * fvar(0)))
; damage = ceil(cond(110 * fvar(0) < 7, 7, 110 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(16)
ground.hittime = 18 + 4 * var(16)
guard.slidetime = 18 + 4 * var(16)
guard.hittime = 18 + 4 * var(16)
air.hittime = 100
ground.velocity = 0.0, -12.109375
guard.velocity = -7.6875
air.velocity = 0.0, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 80, 40
givepower = 40, 40
envshake.time = 10
envshake.ampl = 5
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 250, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 250, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Proj Start
;=========================================================================
[Statedef 255]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 255, Reprisal and Juggling]
type = null
trigger1 = var(9) := root,var(9) || var(10) := root,var(10) || var(11) := root,var(11)
[state 255, Super Cancel Juggle and Attack Level]
type = null
trigger1 = !prevstateno && !time
trigger1 = var(19) := root,var(19) || var(22) := root,var(22)
[state 255, Damage Dampener]
type = null
trigger1 = fvar(0) := root,fvar(0) ; cond(var(19), 0.5, root,fvar(0))

[state 255, Change Animation]
type = changeanim
trigger1 = !time * !prevstateno
value = 255

[state 255, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 255, Angle]
type = angledraw
trigger1 = 1
value = 45

[state 255, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[state 255, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 255, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = 3, 4
volumescale = 100

[state 255, Attack Distance]
type = attackdist
trigger1 = !time * !prevstateno
value = const(size.proj.attack.dist)

[state 255, Miss]
type = hitdef
trigger1 = 1
attr = S, NP
hitflag = 

[state 255, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = cond(root,numenemy > 1, root,numtarget(450) < 2, root,numtarget(450) < 1)
trigger1 = !animelemtime(animelemno(0)) && animelemno(0) = [4, 6]
attr = S, NP
damage = ceil(cond(10 * fvar(0) < 7, 7, 10 * fvar(0))), 1
; damage = ceil(cond(32 * fvar(0) < 7, 7, 32 * fvar(0))), 6
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1, 6
hitsound = -1 + 0 * (var(3) := 500)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = 0.0, -12.109375
guard.velocity = -11.0
air.velocity = 0.0, -12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 32, 8
givepower = 8, 8
envshake.time = 10
envshake.ampl = 5
fall = 1
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(100 * (0.5 ** var(10)) < 30, 30, 100 * (0.5 ** var(10))), 100))
fall.animtype = hard
forcestand = 1

[state 255, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 255, End State]
type = changestate
trigger1 = movecontact || movereversed
value = 256
ignorehitpause = 1

[state 255, Destroy]
type = destroyself
trigger1 = !animtime || !root,var(39)
trigger2 = root,movetype = H || root,stateno != 250

;=========================================================================
; Proj Contact
;=========================================================================
[Statedef 256]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 256, Reprisal]
type = parentvarset
trigger1 = hitpausetime
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(9) = 1
var(9) = 2
ignorehitpause = 1
persistent = 0

[state 256, Juggle]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(10) = 1

[state 256, Dampener]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
var(12) = 1

[state 256, Target ID]
type = parentvarset
trigger1 = hitpausetime
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = var(38) := target,ID
var(38) = target,ID
ignorehitpause = 1
persistent = 0

[state 256, Hit Sound]
type = playsnd
trigger1 = hitpausetime
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4))
channel = 2
ignorehitpause = 1
persistent = 0

[state 256, Hit Spark]
type = helper
trigger1 = hitpausetime
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
ignorehitpause = 1
persistent = 0

[state 256, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 256, Priority]
type = sprpriority
trigger1 = 1
value = 5
ignorehitpause = 1

[state 256, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1
ignorehitpause = 1

[state 256, Angle]
type = angledraw
trigger1 = 1
value = 45
ignorehitpause = 1

[state 256, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[state 256, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 256, Attack Distance]
type = attackdist
trigger1 = hitpausetime
value = const(size.proj.attack.dist)
ignorehitpause = 1
persistent = 0

[state 256, Miss]
type = hitdef
trigger1 = 1
attr = S, NP
hitflag = 
ignorehitpause = 1

[state 256, End State]
type = changestate
trigger1 = !hitpausetime
value = 255 + 3 * (animelemtime(6) > 0)
ignorehitpause = 1

;=========================================================================
; Proj End
;=========================================================================
[Statedef 258]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 258, Change Animation]
type = null ; changeanim
trigger1 = !time
value = 258

[state 258, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 258, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 258, Angle]
type = angledraw
trigger1 = 1
value = 45

[state 258, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[state 258, Destroy]
type = destroyself
trigger1 = !animtime || !root,var(39)
trigger2 = root,movetype = H || root,stateno != 250

;=========================================================================
; CWP
;=========================================================================
[Statedef 400]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 400, Set Position]
type = posset
trigger1 = !time
y = 0

[state 400, Change Animation]
type = changeanim
trigger1 = !time
value = 400

[state 400, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, random % 3
volumescale = 100
channel = 0

[state 400, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 400, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = C, NA
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -40)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -3.90625
guard.velocity = -3.90625
air.velocity = -3.90625, -7.8125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 32, 8
givepower = 8, 8
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(24 * (0.5 ** var(10)) < 16, 16, 24 * (0.5 ** var(10))), 24))
fall.animtype = light
nochainID = 450

[state 400, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 400, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CMP
;=========================================================================
[Statedef 410]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 410, Set Position]
type = posset
trigger1 = !time
y = 0

[state 410, Change Animation]
type = changeanim
trigger1 = !time
value = 410

[state 410, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 3 + random % 3
volumescale = 100
channel = 0

[state 410, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 410, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = C, NA
damage = ceil(cond(55 * fvar(0) < 7, 7, 55 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -40)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -5.40625
guard.velocity = -5.40625
air.velocity = -4.8828125, -6.8359375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 56, 32
givepower = 32, 32
envshake.time = 8
envshake.ampl = 4
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(48 * (0.5 ** var(10)) < 24, 24, 48 * (0.5 ** var(10))), 48))
fall.animtype = medium
nochainID = 450

[state 410, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 410, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CSP
;=========================================================================
[Statedef 420]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 420, Set Position]
type = posset
trigger1 = !time
y = 0

[state 420, Change Animation]
type = changeanim
trigger1 = !time
value = 420

[state 420, Voice]
type = playsnd
trigger1 = !animelemtime(2)
trigger1 = random < 1000
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 420, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 2
volumescale = 100
channel = 1

[state 420, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = C, NA
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -40)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.90625
guard.velocity = -6.90625
air.velocity = -5.859375, -5.859375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 420, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 420, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CWK
;=========================================================================
[Statedef 430]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 430, Set Position]
type = posset
trigger1 = !time
y = 0

[state 430, Change Animation]
type = changeanim
trigger1 = !time
value = 430

[state 430, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, random % 3
volumescale = 100
channel = 0

[state 430, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 430, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = C, NA
damage = ceil(cond(21 * fvar(0) < 7, 7, 21 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -8)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -3.90625
guard.velocity = -3.90625
air.velocity = -3.90625, -7.8125
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 32, 8
givepower = 8, 8
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(24 * (0.5 ** var(10)) < 16, 16, 24 * (0.5 ** var(10))), 24))
fall.animtype = light
nochainID = 450

[state 430, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 430, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CMK
;=========================================================================
[Statedef 440]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 440, Set Position]
type = posset
trigger1 = !time
y = 0

[state 440, Change Animation]
type = changeanim
trigger1 = !time
value = 440

[state 440, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 800
value = 2, 3 + random % 3
volumescale = 100
channel = 0

[state 440, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 1
volumescale = 100
channel = 1

[state 440, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(4)
attr = C, NA
damage = ceil(cond(55 * fvar(0) < 7, 7, 55 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -8)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -5.40625
guard.velocity = -5.40625
air.velocity = -4.8828125, -6.8359375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 56, 32
givepower = 32, 32
envshake.time = 8
envshake.ampl = 4
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(48 * (0.5 ** var(10)) < 24, 24, 48 * (0.5 ** var(10))), 48))
fall.animtype = medium
nochainID = 450

[state 440, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 440, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CSK
;=========================================================================
[Statedef 450]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 450, Set Position]
type = posset
trigger1 = !time
y = 0

[state 450, Change Animation]
type = changeanim
trigger1 = !time
value = 450

[state 450, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 450, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 450, Increment Position]
type = posadd
trigger1 = animelemtime(4) >=0 && animelemtime(7) < 0
x = 7.8125 - 0.5078125 * animelemtime(4)

[state 450, Hit]
type = hitdef
trigger1 = var(10) < 1 && !var(11)
trigger1 = !animelemtime(5)
attr = C, NA
damage = ceil(cond(73 * fvar(0) < 7, 7, 73 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -32)
animtype = hard
ground.type = trip
air.animtype = hard
air.type = trip
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -1.0, -9.375
guard.velocity = -6.90625
air.velocity = -1.0, -9.375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
forcestand = 1
ID = 450
nochainID = 450

[state 450, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 450, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; AWP
;=========================================================================
[Statedef 600]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 0
sprpriority = 1

[state 600, Change Animation]
type = changeanim
trigger1 = !time
value = 600

[state 600, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, random % 3
volumescale = 100
channel = 0

[state 600, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 600, Increment Velocity]
type = veladd
trigger1 = 1
y = 0.5859375

[state 600, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(23 * fvar(0) < 7, 7, 23 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -56)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -4.6875
air.velocity = cond(var(25), -0.78125, -4.296875), cond(var(25), -7.03125, -6.640625)
airguard.velocity = -3.90625, -3.125 
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 32, 8
givepower = 8, 8
fall = 0
air.fall = var(9) || var(25)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(24 * (0.5 ** var(10)) < 16, 16, 24 * (0.5 ** var(10))), 24))
fall.animtype = light
nochainID = 450

[state 600, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 600, Control]
type = ctrlset
trigger1 = time > 32
value = 1

[state 600, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; AMP
;=========================================================================
[Statedef 610]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 16
sprpriority = 1

[state 610, Change Animation]
type = changeanim
trigger1 = !time
value = 610

[state 610, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 3 + random % 3
volumescale = 100
channel = 0

[state 610, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 610, Increment Velocity]
type = veladd
trigger1 = 1
y = 0.5859375

[state 610, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(55 * fvar(0) < 7, 7, 55 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -48)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -6.1875
air.velocity = cond(var(25), -0.78125, -4.296875), cond(var(25), -7.03125, -6.640625)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 56, 32
givepower = 32, 32
envshake.time = 8
envshake.ampl = 4
fall = 0
air.fall = var(9) || var(25)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(48 * (0.5 ** var(10)) < 24, 24, 48 * (0.5 ** var(10))), 48))
fall.animtype = medium
nochainID = 450

[state 610, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 610, Control]
type = ctrlset
trigger1 = time > 48
value = 1

[state 610, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; ASP
;=========================================================================
[Statedef 620]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 620, Change Animation]
type = changeanim
trigger1 = !time
value = 620

[state 620, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 620, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 620, Increment Velocity]
type = veladd
trigger1 = 1
y = 0.5859375

[state 620, Energy]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Energy"
ID = 621
stateno = 7000
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 620, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(5)
attr = A, NA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -16)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -7.6875
air.velocity = cond(var(25), -0.78125, -4.296875), cond(var(25), -7.03125, -6.640625)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = var(9) || var(25)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 620, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 620, Control]
type = ctrlset
trigger1 = time > 64
value = 1

[state 620, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; AWK
;=========================================================================
[Statedef 630]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 0
sprpriority = 1

[state 630, Change Animation]
type = changeanim
trigger1 = !time
value = 630

[state 630, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, random % 3
volumescale = 100
channel = 0

[state 630, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 630, Increment Velocity]
type = veladd
trigger1 = 1
y = 0.5859375

[state 630, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = animelemtime(4) = -1
attr = A, NA
damage = ceil(cond(28 * fvar(0) < 7, 7, 28 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -88)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -4.6875
air.velocity = cond(var(25), -0.78125, -4.296875), cond(var(25), -7.03125, -6.640625)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 32, 8
givepower = 8, 8
fall = 0
air.fall = var(9) || var(25)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(24 * (0.5 ** var(10)) < 16, 16, 24 * (0.5 ** var(10))), 24))
fall.animtype = light
nochainID = 450

[state 630, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 630, Control]
type = ctrlset
trigger1 = time > 32
value = 1

[state 630, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; AMK
;=========================================================================
[Statedef 640]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 16
sprpriority = 1

[state 640, Change Animation]
type = changeanim
trigger1 = !time
value = 640

[state 640, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 3 + random % 3
volumescale = 100
channel = 0

[state 640, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 640, Increment Velocity]
type = veladd
trigger1 = 1
y = 0.5859375

[state 640, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(64 * fvar(0) < 7, 7, 64 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -56)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -6.1875
air.velocity = cond(var(25), -0.78125, -4.296875), cond(var(25), -7.03125, -6.640625)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 56, 32
givepower = 32, 32
envshake.time = 8
envshake.ampl = 4
fall = 0
air.fall = var(9) || var(25)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(48 * (0.5 ** var(10)) < 24, 24, 48 * (0.5 ** var(10))), 48))
fall.animtype = medium
nochainID = 450

[state 640, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 640, Control]
type = ctrlset
trigger1 = time >= 45
value = 1

[state 640, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; ASK -  Edge
;=========================================================================
[Statedef 650]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 650, Change Animation]
type = changeanim
trigger1 = !time
value = 651

[state 650, Edge: Change Animation]
type = changeanim
triggerall = !ailevel && anim = 651
triggerall = animelemtime(2) >= 0 && animelemtime(5) < 0
trigger1 = command != "hold_c"
value = 650
elem = animelemno(0) - 1

[state 250, Edge: Change Animation]
type = changeanim
triggerall = ailevel && anim = 651
triggerall = animelemtime(2) >= 0 && animelemtime(5) < 0
trigger1 = numtarget || pos y > 40
trigger2 = p2bodydist x < 96 && p2statetype = A && p2movetype = A
trigger3 = random < 48
value = 650
elem = animelemno(0) - 1

[state 650, Edge: Palette Effect]
type = palfx
trigger1 = anim = 651
trigger1 = animelemtime(2) >= 5 && animelemtime(5) < 0
time = 2
add = ceil(64 + cos(time * pi / 4.0) * 64), 0, 0

[state 650, Voice]
type = playsnd
triggerall = random < 1000
trigger1 = anim = 650 && !animelemtime(2)
trigger2 = anim = 651 && !animelemtime(5)
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 650, Sound]
type = playsnd
trigger1 = anim = 650 && !animelemtime(2)
trigger2 = anim = 651 && !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 650, Edge: Offset]
type = offset
trigger1 = anim = 651
trigger1 = animelemtime(2) >= 0 && animelemtime(5) < 0
x = 1.0 * cos(time * pi / 1.5)
y = 1.0 * cos(time * pi / 1.5)

[state 650, Set Velocity]
type = velset
trigger1 = anim = 651 && !animelemtime(6)
y = -3.90625

[state 650, Increment Velocity]
type = veladd
trigger1 = anim = 650
trigger2 = anim = 651 && animelemtime(6) < 0
y = 0.5859375

[state 650, Increment Velocity]
type = veladd
trigger1 = anim = 651 && animelemtime(6) >= 0
y = 0.5078125

[state 650, Edge Effect]
type = helper
trigger1 = anim = 651 && !animelemtime(6)
helpertype = normal
name = "Edge Effect"
ID = 6035
stateno = 6035
postype = p1
pos = 34, -12
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 220, Edge: Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 220, Edge: Attack Distance]
type = attackdist
trigger1 = anim = 650
trigger2 = anim = 651 && !animelemtime(4)
value = const(size.attack.dist)
persistent = 0

[state 650, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = anim = 650 && !animelemtime(3)
attr = A, NA
damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := -8)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -4.6875
guard.velocity = -7.6875
air.velocity = cond(var(25), -0.78125, -4.296875), cond(var(25), -7.03125, -6.640625)
; air.velocity = cond(var(25), -6.25, -3.125), cond(var(25), 13.28125, -6.640625)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = var(9) || var(25)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 650, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = anim = 651 && !animelemtime(6)
attr = A, NA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0)))
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := -8)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(16)
ground.hittime = 18 + 4 * var(16)
guard.slidetime = 18 + 4 * var(16)
guard.hittime = 18 + 4 * var(16)
air.hittime = 100
ground.velocity = -1.5625 * (vel x > 0), 12.109375
guard.velocity = -11.0
air.velocity = -1.5625 * (vel x > 0), 12.109375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
ID = 650
nochainID = 450
p2stateno = 995

[state 650, Idle]
type = statetypeset
trigger1 = anim = 650 && animelemtime(4) >= 0
trigger2 = anim = 651 && animelemtime(7) >= 0
movetype = I
persistent = 0

[state 650, Control]
type = ctrlset
trigger1 = time > 64
value = 1

[state 650, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; EXA 1
;=========================================================================
[Statedef 700]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 700, Set Position]
type = posset
trigger1 = !time
y = 0

[state 700, Change Animation]
type = changeanim
trigger1 = !time
value = 700

[state 700, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 800
value = 2, 3 + random % 3
volumescale = 100
channel = 0

[state 700, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 1
volumescale = 100
channel = 1

[state 700, Increment Position]
type = posadd
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
x = 9.765625

[state 700, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(5)
attr = S, NA
damage = ceil(cond(55 * fvar(0) < 7, 7, 55 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -56)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.8828125, -6.8359375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 0, 0
envshake.time = 8
envshake.ampl = 4
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(48 * (0.5 ** var(10)) < 24, 24, 48 * (0.5 ** var(10))), 48))
fall.animtype = medium
nochainID = 450

[state 700, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 700, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; EXA 2
;=========================================================================
[Statedef 705]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 705, Set Position]
type = posset
trigger1 = !time
y = 0

[state 705, Change Animation]
type = changeanim
trigger1 = !time
value = 705

[state 705, Voice]
type = playsnd
trigger1 = !animelemtime(5)
trigger1 = random < 1000
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 705, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 705, Increment Position]
type = posadd
trigger1 = animelemtime(2) >= 0 && animelemtime(5) < 0
x = 1.5625

[state 705, Increment Position]
type = posadd
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
x = 4.6875

[state 705, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(6)
attr = S, NA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -0.9765625, -9.59375
guard.velocity = -12.0
air.velocity = -0.9765625, -9.59375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0, 0
givepower = 0, 0
envshake.time = 10
envshake.ampl = 5
fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(60 * (0.5 ** var(10)) < 28, 28, 60 * (0.5 ** var(10))), 60))
fall.animtype = hard
nochainID = 450

[state 705, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 705, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; EXA 3
;=========================================================================
[Statedef 710]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 710, Set Position]
type = posset
trigger1 = !time
y = 0

[state 710, Change Animation]
type = changeanim
trigger1 = !time
value = 710

[state 710, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 6 + random % 2
volumescale = 100
channel = 0

[state 710, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 710, Increment Position]
type = posadd
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
x = 9.765625

[state 710, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(5)
trigger1 = p2statetype != A
attr = S, NA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -64)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -12.5
guard.velocity = -12.5
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 710, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(5)
trigger1 = p2statetype = A
attr = S, NA
damage = ceil(cond(91 * fvar(0) < 7, 7, 91 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -64)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -12.5
guard.velocity = -12.5
air.velocity = -10.9375, 9.765625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
ID = 710
nochainID = 450
p2stateno = 995

[state 710, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 710, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Grab -  Attempt
;=========================================================================
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 800, Direction]
type = null
triggerall = !time
trigger1 = !ailevel
trigger1 = var(22) := cond(command = "x" || command = "y" || command = "z", 805, 825)
trigger2 = ailevel
trigger2 = var(22) := cond(random < 500, 805, 825)

[state 800, Change Animation]
type = changeanim
trigger1 = !time
value = 800

[state 800, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 800, random % 2
volumescale = 100
channel = 0

[state 800, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 800, Throw]
type = hitdef
trigger1 = p2movetype != H
trigger1 = !animelemtime(2)
attr = S, NT
hitflag = M-
numhits = 0
getpower = 0
priority = 1, miss
hitsound = -1 + (0 * (var(3) := 800))
guardsound = -1 + (0 * (var(4) := -1))
sparkno = -1 + (0 * (var(5) := -1))
guard.sparkno = -1 + 0 * (var(6) := -1)
fall = 1
fall.recover = 0
ID = var(22)
p1facing = 1
p2facing = 1
p1stateno = cond(command = "holdback", var(22), 801)

[state 800, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[state 800, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Grab - Turn
;=========================================================================
[Statedef 801]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 801, Set Position]
type = posset
trigger1 = !time
y = 0

[state 801, Change Animation]
type = changeanim
trigger1 = !time
value = 801

[state 801, Width]
type = width
trigger1 = !time
edge = 30, 30

[state 801, Turn]
type = turn
trigger1 = !animelemtime(3)

[state 801, Target State]
type = targetstate
trigger1 = !time
value = 802

[state 801, Target Facing]
type = targetfacing
trigger1 = 1
value = -1

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 32, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 16, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 24, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 42, 0

[state 801, End State]
type = changestate
trigger1 = !animtime
value = var(22)
ctrl = 0

;=========================================================================
; Target Hit Type High
;=========================================================================
[Statedef 802]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 802, Change Animation]
type = changeanim2
trigger1 = !time
value = 802

[state 802, Priority]
type = sprpriority
trigger1 = time = 4
value = 1

[state 802, Priority]
type = sprpriority
trigger1 = time = 16
value = -1

[state 802, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Hit Type Low
;=========================================================================
[Statedef 803]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 803, Change Animation]
type = changeanim2
trigger1 = !time
value = 803

[state 803, Priority]
type = sprpriority
trigger1 = time = 4
value = 1

[state 803, Priority]
type = sprpriority
trigger1 = time = 16
value = -1

[state 803, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; High Toss
;=========================================================================
[Statedef 805]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 805, Change Animation]
type = changeanim
trigger1 = !time
value = 805

[state 805, Width]
type = width
trigger1 = !animelemtime(1)
edge = 50, 0

[state 805, Width]
type = width
trigger1 = !animelemtime(7)
edge = 50, 0

[state 805, Turn]
type = turn
trigger1 = !animelemtime(7)

[state 805, Voice]
type = playsnd
trigger1 = !animelemtime(7)
value = 805, 0
volumescale = 100
channel = 0

[state 805, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 1, 3
volumescale = 100
channel = 1

[state 805, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 805, Target State]
type = targetstate
trigger1 = !time
value = 810

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 42, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 40, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 38, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 30, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 15, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 10, 0

[state 805, Target Bind]
type = targetbind
trigger1 = !animelemtime(7)
pos = 30, -20

[state 805, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(7)
value = ceil(cond(91 * fvar(0) < 7, -7, -91 * fvar(0)))

[state 805, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(7)
value = 48

[state 805, Target State]
type = targetstate
trigger1 = !animelemtime(7)
value = 811

[state 825, Add Power]
type = poweradd
trigger1 = !animelemtime(7)
value = 72

[state 825, Juggle and Dampener Hit Counters]
type = null
trigger1 = !animelemtime(7)
trigger1 = var(10) := var(10) + 1 || var(11) := 1 || var(12) := var(12) + 1

[state 825, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Target Grabbed
;=========================================================================
[Statedef 810]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 810, Change Animation]
type = changeanim2
trigger1 = !time
value = 810

[state 810, Priority]
type = sprpriority
trigger1 = time = 17
value = 2

[state 810, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Tossed
;=========================================================================
[Statedef 811]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 811, Change Animation]
type = changeanim2
trigger1 = !time
value = 811

[state 811, Set Velocity]
type = velset
trigger1 = !time
x = cond(gethitvar(chainid) = 805, 3.515625, 3.515625)
y = cond(gethitvar(chainid) = 805, -7.421875, -3.515625)

[state 811, Velocity]
type = veladd
trigger1 = time
y = 0.5859375

[state 811, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10

[State 811, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100

[state 811, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 300
value = 5050

;=========================================================================
; Far Toss
;=========================================================================
[Statedef 825]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 805, Change Animation]
type = changeanim
trigger1 = !time
value = 805

[state 805, Width]
type = width
trigger1 = !animelemtime(1)
edge = 50, 0

[state 805, Width]
type = width
trigger1 = !animelemtime(7)
edge = 50, 0

[state 805, Turn]
type = turn
trigger1 = !animelemtime(7)

[state 805, Voice]
type = playsnd
trigger1 = !animelemtime(7)
value = 805, 0
volumescale = 100
channel = 0

[state 805, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 1, 3
volumescale = 100
channel = 1

[state 805, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 805, Target State]
type = targetstate
trigger1 = !time
value = 810

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 42, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 40, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 38, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 30, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 15, 0

[state 805, Target Bind]
type = targetbind
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 10, 0

[state 805, Target Bind]
type = targetbind
trigger1 = !animelemtime(7)
pos = 30, -20

[state 805, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(7)
value = ceil(cond(91 * fvar(0) < 7, -7, -91 * fvar(0)))

[state 805, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(7)
value = 48

[state 805, Target State]
type = targetstate
trigger1 = !animelemtime(7)
value = 811

[state 825, Add Power]
type = poweradd
trigger1 = !animelemtime(7)
value = 72

[state 825, Juggle and Dampener Hit Counters]
type = null
trigger1 = !animelemtime(7)
trigger1 = var(10) := var(10) + 1 || var(11) := 1 || var(12) := var(12) + 1

[state 825, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Grab -  Attempt
;=========================================================================
[Statedef 840]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 0

[state 840, Direction]
type = null
triggerall = !time
trigger1 = !ailevel
trigger1 = var(22) := cond(command = "x" || command = "y" || command = "z", 845, 845)
trigger2 = ailevel
trigger2 = var(22) := cond(random < 500, 845, 845)

[state 840, Change Animation]
type = changeanim
trigger1 = !time
value = 840

[state 840, Animation Loop]
type = varset
trigger1 = !animelemtime(5)
var(0) = 2
persistent = 0

[state 840, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(5)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 3

[state 840, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 840, random % 2
volumescale = 100
channel = 0
persistent = 0

[state 840, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1
persistent = 0

[state 840, Increment Velocity]
type = veladd
trigger1 = 1
y = 0.5859375

[state 840, Throw]
type = hitdef
trigger1 = !var(25)
trigger1 = p2movetype != H
trigger1 = !animelemtime(2)
pausetime = 0, 5
attr = A, NT
hitflag = A-
numhits = 0
getpower = 0
priority = 1, miss
hitsound = -1 + (0 * (var(3) := 800))
guardsound = -1 + (0 * (var(4) := -1))
sparkno = -1 + (0 * (var(5) := -1))
guard.sparkno = -1 + 0 * (var(6) := -1)
fall = 1
fall.recover = 0
ID = var(22)
p1facing = 1
p2facing = 1
p1stateno = var(22)

[state 840, Throw]
type = hitdef
trigger1 = var(10) < 65535 && !var(11) && var(25)
trigger1 = p2stateno != [150, 155]
trigger1 = !animelemtime(2)
pausetime = 0, 5
attr = A, NT
hitflag = AF
numhits = 0
getpower = 0
priority = 1, miss
hitsound = -1 + (0 * (var(3) := 800))
guardsound = -1 + (0 * (var(4) := -1))
sparkno = -1 + (0 * (var(5) := -1))
guard.sparkno = -1 + 0 * (var(6) := -1)
fall = 1
fall.recover = 0
ID = var(22)
p1facing = 1
p2facing = 1
p1stateno = var(22)

[state 840, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[state 840, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Energy Bash
;=========================================================================
[Statedef 845]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = 0, 0
sprpriority = 1

[state 845, Change Animation]
type = changeanim
trigger1 = !time
value = 845

[state 845, Width]
type = width
trigger1 = !animelemtime(4)
edge = 60, 0

[state 845, Turn]
type = turn
trigger1 = !time
trigger1 = command = "holdback"

[state 845, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 805, 0
volumescale = 100
channel = 0

[state 845, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 845, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 200, 220
volumescale = 100
channel = 2

[state 845, Shake]
type = envshake
trigger1 = !animelemtime(4)
time = 12
ampl = 6

[state 845, Add Hit]
type = hitadd
trigger1 = !animelemtime(4)
value = 1

[state 845, Set Velocity]
type = velset
trigger1 = animelemtime(4) = 10
x = -3.90625
y = -7.03125

[state 845, Increment Velocity]
type = veladd
trigger1 = animelemtime(4) > 10
y = 0.5859375

[state 845, Energy]
type = helper
trigger1 = !animelemtime(1)
helpertype = normal
name = "Energy"
ID = 855
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 845, Energy]
type = helper
trigger1 = !animelemtime(4)
helpertype = normal
name = "Energy"
ID = 856
stateno = 7000
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5

[state 845, Hit Spark]
type = helper
trigger1 = !animelemtime(4)
trigger1 = var(5) := 3
helpertype = normal
name = "Hit Spark"
ID = 6100
stateno = 6100
postype = p1
pos = 24, -32
ownpal = 1
keyctrl = 0
pausemovetime = 65536
supermovetime = 65536

[state 845, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 845, Target State]
type = targetstate
trigger1 = !time
value = 850

[state 845, Target Facing]
type = targetfacing
trigger1 = !time
value = -1

[state 845, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -5, -70

[state 845, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -3, -68

[state 845, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -1, -66

[state 845, Target Bind]
type = targetbind
trigger1 = !animelemtime(4)
pos = 25, -40

[state 845, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(4)
value = ceil(cond(110 * fvar(0) < 7, -7, -110 * fvar(0)))

[state 845, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(4)
value = 50

[state 845, Target State]
type = targetstate
trigger1 = !animelemtime(4)
value = 851

[state 845, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 72

[state 845, Juggle and Dampener Hit Counters]
type = null
trigger1 = !animelemtime(4)
trigger1 = var(10) := var(10) + 1 || var(11) := 1 || var(12) := var(12) + 1

[state 845, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52
ctrl = 0

;=========================================================================
; Target Grabbed
;=========================================================================
[Statedef 850]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 850, Change Animation]
type = changeanim2
trigger1 = !time
value = 850

[state 850, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0

[state 850, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Bashed
;=========================================================================
[Statedef 851]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 851, Change Animation]
type = changeanim2
trigger1 = !time
value = 851

[state 851, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 851, Angle]
type = angledraw
trigger1 = animelemtime(2) < 0
value = 45

[state 845, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
y = -const(size.mid.pos.y)

[state 851, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = -10.9375
y = 10.9375

[state 851, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0
y = 0.5859375

[state 851, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = -10

[state 851, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5110
ctrl = 0

[state 851, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 300
value = 5050