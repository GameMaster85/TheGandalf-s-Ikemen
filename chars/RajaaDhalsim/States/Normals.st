; Dhalsim By RajaaBoy

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
trigger1 = !animelemtime(2)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 200, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 0
volumescale = 100
channel = 1

[state 200, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = S, NA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -72)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = -3.5, -8.7890625
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
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 200, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SWP - Edge
;=========================================================================
[Statedef 205]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 205, Set Position]
type = posset
trigger1 = !time
y = 0

[state 205, Change Animation]
type = changeanim
trigger1 = !time
value = 206

[state 205, Edge: Change Animation]
type = changeanim
triggerall = !ailevel && anim = 206
triggerall = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger1 = command != "hold_x"
value = 205
elem = animelemno(0)

[state 205, Edge: Change Animation]
type = changeanim
triggerall = ailevel && anim = 206
triggerall = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger1 = p2statetype = A || p2movetype = H || p2bodydist x < const(size.ground.front)
trigger2 = cond(numenemy, enemynear,movetype = A && enemynear,time > 5 && animelemtime(1) < 28, 0)
trigger3 = cond(numenemy, !enemynear,ailevel && enemynear,command != "holdback" && random < 128, 0)
trigger4 = random < 32
value = 205
elem = animelemno(0)

[state 205, Edge: Palette Effect]
type = palfx
trigger1 = anim = 206
trigger1 = animelemtime(1) >= 8
trigger1 = animelemtime(2) < 0
trigger1 = command = "hold_x"
time = 2
add = ceil(64 + cos(time * pi / 4.0) * 64), 0, 0

[state 205, Voice]
type = playsnd
trigger1 = !animelemtime(2)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 205, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 0
volumescale = 100
channel = 1

[state 205, Edge: Voice]
type = playsnd
trigger1 = anim = 206
trigger1 = !animelemtime(2)
value = 1600, 2
volumescale = 100
channel = 0

[state 205, Edge: Offset]
type = offset
trigger1 = anim = 206
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
x = 1.0 * cos(time * pi / 1.5)
y = 1.0 * cos(time * pi / 1.5)

[state 205, Edge Effect]
type = helper
trigger1 = anim = 206
trigger1 = !animelemtime(3)
name = "Edge Effect"
ID = 6035
stateno = 6035
postype = p1
pos = 64, -40
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 205, Edge: Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 205, Edge: Attack Distance]
type = attackdist
trigger1 = anim = 205
trigger2 = anim = 206 && !animelemtime(2)
value = const(size.attack.dist)
persistent = 0

[state 205, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 205 && !animelemtime(2)
attr = S, NA
damage = ceil(cond(23 * fvar(0) < 7, 7, 23 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -72)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = -3.5, -8.7890625
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

[state 205, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 205 && !animelemtime(3)
trigger1 = !movecontact && !movereversed
attr = S, NA
damage = ceil(cond(23 * fvar(0) < 7, 7, 23 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -40)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = -3.5, -8.7890625
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

[state 225, Edge: Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 206 && !animelemtime(3)
attr = S, NA
damage = ceil(cond(83 * fvar(0) < 7, 7, 83 * fvar(0)))
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -40)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -8.59375 + 5.0 * (var(9) > 0), -8.59375 * (var(9) > 0)
guard.velocity = -8.59375
air.velocity = -8.59375 + 5.0 * (var(9) > 0), -8.59375
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = var(9)
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = back
nochainID = 450

[state 205, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 205, End State]
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
trigger1 = !animelemtime(5)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 210, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 1
volumescale = 100
channel = 1

[state 210, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(6)
attr = S, NA
damage = ceil(cond(53 * fvar(0) < 7, 7, 53 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 216), 0 * (var(8) := -56)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -7.03125
guard.velocity = -7.03125
air.velocity = -5.46875, -7.03125
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
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 210, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SMP - Edge
;=========================================================================
[Statedef 215]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 215, Set Position]
type = posset
trigger1 = !time
y = 0

[state 215, Change Animation]
type = changeanim
trigger1 = !time
value = 216

[state 215, Edge: Change Animation]
type = changeanim
triggerall = !ailevel && anim = 216
triggerall = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger1 = command != "hold_y"
value = 215
elem = animelemno(0)

[state 215, Edge: Change Animation]
type = changeanim
triggerall = ailevel && anim = 216
triggerall = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger1 = p2movetype = H || p2bodydist x < const(size.ground.front)
trigger2 = cond(numenemy, enemynear,movetype = A && enemynear,time > 5 && animelemtime(1) < 12, 0)
trigger3 = cond(numenemy, !enemynear,ailevel && enemynear,command != "holdback" && random < 128, 0)
trigger4 = random < 32
value = 215
elem = animelemno(0)

[state 215, Edge: Palette Effect]
type = palfx
trigger1 = anim = 216
trigger1 = animelemtime(1) >= 8
trigger1 = animelemtime(2) < 0
trigger1 = command = "hold_y"
time = 2
add = ceil(64 + cos(time * pi / 4.0) * 64), 0, 0

[state 215, Voice]
type = playsnd
trigger1 = !animelemtime(2)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 215, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 1
volumescale = 100
channel = 1

[state 215, Edge: Voice]
type = playsnd
trigger1 = anim = 216
trigger1 = !animelemtime(2)
value = 1600, 2
volumescale = 100
channel = 0

[state 215, Edge: Offset]
type = offset
trigger1 = anim = 216
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
x = 1.0 * cos(time * pi / 1.5)
y = 1.0 * cos(time * pi / 1.5)

[state 215, Edge Effect]
type = helper
trigger1 = anim = 216
trigger1 = !animelemtime(3)
name = "Edge Effect"
ID = 6035
stateno = 6035
postype = p1
pos = 36, -128
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 215, Edge: Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 215, Edge: Attack Distance]
type = attackdist
trigger1 = anim = 215
trigger2 = anim = 216 && !animelemtime(2)
value = const(size.attack.dist)
persistent = 0

[state 215, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 215 && !animelemtime(2)
attr = S, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -80)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -7.03125
guard.velocity = -7.03125
air.velocity = -4.6875, -8.59375
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

[state 215, Edge: Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 216 && !animelemtime(3)
attr = S, NA
damage = ceil(cond(98 * fvar(0) < 7, 7, 98 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := -128)
animtype = up
ground.type = low
air.animtype = up
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = 0.0, -12.109375
guard.velocity = -12.0
air.velocity = 0.0, -12.109375
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
fall.animtype = up
nochainID = 450

[state 215, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 215, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SSP
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
value = 220

[state 220, Voice]
type = playsnd
trigger1 = !animelemtime(5)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 220, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 220, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(6)
attr = S, NA
damage = ceil(cond(83 * fvar(0) < 7, 7, 83 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 248), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375
guard.velocity = -10.9375
air.velocity = -6.0, -6.4453125
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

[state 220, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 220, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SSP - Edge
;=========================================================================
[Statedef 225]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 225, Set Position]
type = posset
trigger1 = !time
y = 0

[state 225, Change Animation]
type = changeanim
trigger1 = !time
value = 226

[state 225, Edge: Change Animation]
type = changeanim
triggerall = !ailevel && anim = 226
triggerall = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = command != "hold_z"
value = 225
elem = animelemno(0)

[state 225, Edge: Change Animation]
type = changeanim
triggerall = ailevel && anim = 226
triggerall = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = p2statetype = A || p2movetype = H || p2bodydist x < const(size.ground.front)
trigger2 = cond(numenemy, enemynear,movetype = A && enemynear,time > 5 && animelemtime(2) < 12, 0)
trigger3 = cond(numenemy, !enemynear,ailevel && enemynear,command != "holdback" && random < 128, 0)
trigger4 = random < 32
value = 225
elem = animelemno(0)

[state 225, Edge: Palette Effect]
type = palfx
trigger1 = anim = 226
trigger1 = animelemtime(2) >= 5
trigger1 = animelemtime(3) < 0
trigger1 = command = "hold_z"
time = 2
add = ceil(64 + cos(time * pi / 4.0) * 64), 0, 0

[state 225, Voice]
type = playsnd
trigger1 = anim = 225
trigger1 = !animelemtime(2)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 225, Sound]
type = playsnd
trigger1 = anim = 225
trigger1 = !animelemtime(2)
value = 1, 3
volumescale = 100
channel = 1

[state 225, Edge: Voice]
type = playsnd
trigger1 = anim = 226
trigger1 = !animelemtime(2)
value = 1600, 0
volumescale = 100
channel = 0

[state 225, Edge: Voice]
type = playsnd
trigger1 = anim = 226
trigger1 = !animelemtime(3)
value = 1600, 1
volumescale = 100
channel = 0

[state 225, Edge: Offset]
type = offset
trigger1 = anim = 226
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
x = 1.0 * cos(time * pi / 1.5)
y = 1.0 * cos(time * pi / 1.5)

[state 225, Edge Effect]
type = helper
trigger1 = anim = 226
trigger1 = !animelemtime(4)
name = "Edge Effect"
ID = 6035
stateno = 6035
postype = p1
pos = 64, -48
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 225, Edge: Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 225, Edge: Attack Distance]
type = attackdist
trigger1 = anim = 225
trigger2 = anim = 226 && !animelemtime(3)
value = const(size.attack.dist)
persistent = 0

[state 225, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 225 && !animelemtime(2)
attr = S, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -72)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -8.59375
guard.velocity = -8.59375
air.velocity = -6.0, -6.4453125
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

[state 225, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 225 && !animelemtime(3)
attr = S, NA
damage = ceil(cond(45 * fvar(0) < 7, 7, 45 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -8.59375
guard.velocity = -8.59375
air.velocity = -6.0, -6.4453125
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

[state 410, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = anim = 226 && !animelemtime(4)
attr = C, NA
damage = ceil(cond(70 * fvar(0) < 7, 7, 70 * fvar(0)))
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -48)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375, 0.0
guard.velocity = -10.9375
air.velocity = -10.9375, 0.0
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
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 48, 48, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
ID = 226
nochainID = 450
p2stateno = 990

[state 225, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 225, End State]
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
value = 2, 0
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
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(4)
attr = S, NA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 184), 0 * (var(8) := -24)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = -4.5, -8.7890625
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
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 230, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SWK
;=========================================================================
[Statedef 235]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 235, Set Position]
type = posset
trigger1 = !time
y = 0

[state 235, Change Animation]
type = changeanim
trigger1 = !time
value = 235

[state 235, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 235, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 235, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = S, NA
damage = ceil(cond(38 * fvar(0) < 7, 7, 38 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -48)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.640625
guard.velocity = -6.640625
air.velocity = -6.640625, -8.7890625
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

[state 235, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 235, End State]
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
trigger1 = !animelemtime(5)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 240, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 1
volumescale = 100
channel = 1

[state 210, Increment Position]
type = posadd
trigger1 = animelemno(0) = 3
x = 1.0

[state 240, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 3.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(6)
attr = S, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 216), 0 * (var(8) := -80)
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
air.velocity = -3.5, -9.375
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
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 240, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SMK
;=========================================================================
[Statedef 245]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 245, Set Position]
type = posset
trigger1 = !time
y = 0

[state 245, Change Animation]
type = changeanim
trigger1 = !time
value = 245

[state 245, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 245, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 245, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = S, NA
damage = ceil(cond(68 * fvar(0) < 7, 7, 68 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -64)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -6.640625, -9.375
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

[state 245, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 245, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SSK
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
value = 250

[state 250, Voice]
type = playsnd
trigger1 = !animelemtime(5)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 250, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 250, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 3.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(6)
attr = S, NA
damage = ceil(cond(83 * fvar(0) < 7, 7, 83 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 216), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -9.375
guard.velocity = -9.375
air.velocity = -4.6875, -8.59375
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

[state 250, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 250, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; SSK
;=========================================================================
[Statedef 255]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 255, Set Position]
type = posset
trigger1 = !time
y = 0

[state 255, Change Animation]
type = changeanim
trigger1 = !time
value = 255

[state 255, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 255, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 255, Width]
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

[state 255, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(4)
attr = S, NA
damage = ceil(cond(90 * fvar(0) < 7, 7, 90 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -72)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -13.0
guard.velocity = -13.0
air.velocity = -3.0, -11.71875
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

[state 255, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 255, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

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
trigger1 = !animelemtime(4)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 400, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 0
volumescale = 100
channel = 1

[state 400, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(5)
attr = C, NA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 216), 0 * (var(8) := -24)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = -6.0, -7.03125
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
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 400, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CWP
;=========================================================================
[Statedef 405]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 405, Set Position]
type = posset
trigger1 = !time
y = 0

[state 405, Change Animation]
type = changeanim
trigger1 = !time
value = 405

[state 405, Voice]
type = playsnd
trigger1 = !animelemtime(2)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 405, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 0
volumescale = 100
channel = 1

[state 405, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(2)
attr = C, NA
damage = ceil(cond(23 * fvar(0) < 7, 7, 23 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -48)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = -6.0, -7.03125
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

[state 405, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 405, End State]
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
physics = N
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
trigger1 = !animelemtime(4)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 410, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 1
volumescale = 100
channel = 1

[state 410, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(5)
attr = C, NA
damage = ceil(cond(53 * fvar(0) < 7, 7, 53 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 216), 0 * (var(8) := -24)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -8.59375
guard.velocity = -8.59375
air.velocity = -6.0, -7.03125
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
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 410, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CMP
;=========================================================================
[Statedef 415]
type = C
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 415, Set Position]
type = posset
trigger1 = !time
y = 0

[state 415, Change Animation]
type = changeanim
trigger1 = !time
value = 415

[state 415, Voice]
type = playsnd
trigger1 = !animelemtime(2)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 415, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 1
volumescale = 100
channel = 1

[state 415, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(2)
attr = C, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -48)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -8.59375
guard.velocity = -8.59375
air.velocity = -6.0, -7.03125
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

[state 415, Idle]
type = statetypeset
trigger1 = !animelemtime(4)
movetype = I

[state 415, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1
;=========================================================================
;CSP
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
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 420, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 420, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(5)
attr = C, NA
damage = ceil(cond(90 * fvar(0) < 7, 7, 90 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 216), 0 * (var(8) := -24)
animtype = hard
ground.type = low
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -10.9375
guard.velocity = -10.9375
air.velocity = -6.0, -7.03125
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
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 420, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CSP
;=========================================================================
[Statedef 425]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 425, Set Position]
type = posset
trigger1 = !time
y = 0

[state 425, Change Animation]
type = changeanim
trigger1 = !time
value = 425

[state 425, Voice]
type = playsnd
trigger1 = !animelemtime(2)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 425, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 2
volumescale = 100
channel = 1

[state 425, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(2)
attr = C, NA
damage = ceil(cond(90 * fvar(0) < 7, 7, 90 * fvar(0)))
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
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
ground.velocity = -10.9375
guard.velocity = -10.9375
air.velocity = -6.0, -7.03125
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

[state 425, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 425, End State]
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
physics = N
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
value = 2, 0
volumescale = 100
channel = 0

[state 430, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 430, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 100, 1
volumescale = 100
channel = 1

[state 430, Set Velocity]
type = velset
trigger1 = !animelemtime(4)
x = 7.0

[state 430, Set Velocity]
type = veladd
trigger1 = animelemtime(4) > 0
trigger1 = animelemtime(9) < 0
x = -1.0

[state 430, Set Velocity]
type = velset
trigger1 = !animelemtime(9)
x = 0.0

[state 430, Dash Smoke]
type = helper
trigger1 = vel x
helpertype = normal
name = "Dash Smoke"
ID = 6005
stateno = 6005
postype = P1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536
persistent = 0

[state 430, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(4)
attr = C, NA
damage = ceil(cond(23 * fvar(0) < 7, 7, 23 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -8)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -7.0
guard.velocity = -7.0
air.velocity = -5.0, -5.0
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
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 430, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
;CWK
;=========================================================================
[Statedef 435]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 0
sprpriority = 1

[state 435, Set Position]
type = posset
trigger1 = !time
y = 0

[state 435, Change Animation]
type = changeanim
trigger1 = !time
value = 435

[state 435, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 435, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 435, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = C, NA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -8)
animtype = light
ground.type = low
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -5.0
guard.velocity = -5.0
air.velocity = -5.0, -5.0
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

[state 435, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 435, End State]
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
physics = N
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
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 440, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 440, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 100,1
volumescale = 100
channel = 1

[state 440, Set Velocity]
type = velset
trigger1 = !animelemtime(4)
x = 9.5

[state 440, Set Velocity]
type = veladd
trigger1 = animelemtime(4) > 0
trigger1 = animelemtime(9) < 0
x = -1.0

[state 440, Set Velocity]
type = velset
trigger1 = !animelemtime(9)
x = 0.0

[state 440, Dash Smoke]
type = helper
trigger1 = vel x
helpertype = normal
name = "Dash Smoke"
ID = 6005
stateno = 6005
postype = P1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536
persistent = 0

[state 440, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(4)
attr = C, NA
damage = ceil(cond(53 * fvar(0) < 7, 7, 53 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -8)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -8.5
guard.velocity = -8.5
air.velocity = -3.0, -8.0
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
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 440, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CMK
;=========================================================================
[Statedef 445]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 16
sprpriority = 1

[state 445, Set Position]
type = posset
trigger1 = !time
y = 0

[state 445, Change Animation]
type = changeanim
trigger1 = !time
value = 445

[state 445, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 445, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 445, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = C, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -8)
animtype = medium
ground.type = low
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -8.5
guard.velocity = -8.5
air.velocity = -3.0, -8.0
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

[state 445, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 445, End State]
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
physics = N
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
trigger1 = !animelemtime(3)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 450, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 450, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 100, 1
volumescale = 100
channel = 1

[state 450, Set Velocity]
type = velset
trigger1 = !animelemtime(4)
x = 11.0

[state 450, Set Velocity]
type = veladd
trigger1 = animelemtime(4) > 0
trigger1 = animelemtime(11) < 0
x = -1.0

[state 450, Set Velocity]
type = velset
trigger1 = !animelemtime(11)
x = 0.0

[state 450, Dash Smoke]
type = helper
trigger1 = vel x
helpertype = normal
name = "Dash Smoke"
ID = 6005
stateno = 6005
postype = P1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536
persistent = 0

[state 450, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(4)
attr = C, NA
damage = ceil(cond(75 * fvar(0) < 7, 7, 75 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -8)
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
guard.velocity = -13.0
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
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
forcestand = 1
ID = 450
nochainID = 450

[state 450, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 450, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; CSK
;=========================================================================
[Statedef 455]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 32
sprpriority = 1

[state 455, Set Position]
type = posset
trigger1 = !time
y = 0

[state 455, Change Animation]
type = changeanim
trigger1 = !time
value = 455

[state 455, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 455, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 455, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = !animelemtime(3)
attr = C, NA
damage = ceil(cond(83 * fvar(0) < 7, 7, 83 * fvar(0)))
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -8)
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
guard.velocity = -13.0
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
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
forcestand = 1
ID = 450
nochainID = 450

[state 455, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 455, End State]
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
value = 2, 0
volumescale = 100
channel = 0

[state 600, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 600, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 600, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 600, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 600, Hit]
type = hitdef
trigger1 = p2dist y > -40
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(30 * fvar(0) < 7, 7, 30 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := 24)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 600, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 600, Control]
type = ctrlset
trigger1 = time > 32
value = 1

[state 600, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 600, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; AWP
;=========================================================================
[Statedef 605]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 0
sprpriority = 1

[state 605, Change Animation]
type = changeanim
trigger1 = !time
value = 605

[state 605, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 605, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 605, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 605, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 605, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 605, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(3)
attr = A, NA
damage = ceil(cond(38 * fvar(0) < 7, 7, 38 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -48)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 605, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 605, Control]
type = ctrlset
trigger1 = time > 32
value = 1

[state 605, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 605, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
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
value = 2, 1
volumescale = 100
channel = 0

[state 610, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 610, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 610, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 610, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 610, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(53 * fvar(0) < 7, 7, 53 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 176), 0 * (var(8) := -88)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 610, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 610, Control]
type = ctrlset
trigger1 = time > 48
value = 1

[state 610, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 610, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; AMP
;=========================================================================
[Statedef 615]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 16
sprpriority = 1

[state 615, Change Animation]
type = changeanim
trigger1 = !time
value = 615

[state 615, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 615, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 615, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 615, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 615, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 615, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(3)
attr = A, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -88)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 615, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 615, Control]
type = ctrlset
trigger1 = time > 48
value = 1

[state 615, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 615, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
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
trigger1 = !animelemtime(3)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 620, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 620, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 620, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 620, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 620, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(83 * fvar(0) < 7, 7, 83 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 128), 0 * (var(8) := -16)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25) && (prevstateno = [600, 655]), -3.0, -6.0), cond(var(25) && (prevstateno = [600, 655]), 12.5, -5.25)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = (var(25) && prevstateno = [600, 655])
air.fall = var(9)
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

[state 620, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 620, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; ASP
;=========================================================================
[Statedef 625]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 625, Change Animation]
type = changeanim
trigger1 = !time
value = 625

[state 625, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 625, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 625, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 625, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 625, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 625, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(3)
attr = A, NA
damage = ceil(cond(90 * fvar(0) < 7, 7, 90 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -56)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25) && (prevstateno = [600, 655]), -3.0, -6.0), cond(var(25) && (prevstateno = [600, 655]), 12.5, -5.25)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = (var(25) && prevstateno = [600, 655])
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 625, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 625, Control]
type = ctrlset
trigger1 = time > 64
value = 1

[state 625, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 625, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
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
value = 2, 0
volumescale = 100
channel = 0

[state 630, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 630, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 630, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 630, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 630, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(38 * fvar(0) < 7, 7, 38 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 152), 0 * (var(8) := -32)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 630, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 630, Control]
type = ctrlset
trigger1 = time > 32
value = 1

[state 630, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 630, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; AWK
;=========================================================================
[Statedef 635]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 0
sprpriority = 1

[state 635, Change Animation]
type = changeanim
trigger1 = !time
value = 635

[state 635, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 600
value = 2, 0
volumescale = 100
channel = 0

[state 635, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 635, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 635, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 635, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 635, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(3)
attr = A, NA
damage = ceil(cond(45 * fvar(0) < 7, 7, 45 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 1)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -48)
animtype = light
ground.type = high
air.animtype = light
air.type = low
ground.slidetime = 12 + 2 * var(9)
ground.hittime = 12 + 2 * var(9)
guard.slidetime = 12 + 2 * var(9)
guard.hittime = 12 + 2 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 635, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 635, Control]
type = ctrlset
trigger1 = time > 32
value = 1

[state 635, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 635, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
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
value = 2, 1
volumescale = 100
channel = 0

[state 640, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 640, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 640, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 640, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 640, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(4)
attr = A, NA
damage = ceil(cond(53 * fvar(0) < 7, 7, 53 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 152), 0 * (var(8) := -32)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 640, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 640, Control]
type = ctrlset
trigger1 = time > 48
value = 1

[state 640, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 640, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; AMK
;=========================================================================
[Statedef 645]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 16
sprpriority = 1

[state 645, Change Animation]
type = changeanim
trigger1 = !time
value = 645

[state 645, Voice]
type = playsnd
trigger1 = !animelemtime(3)
trigger1 = random < 800
value = 2, 1
volumescale = 100
channel = 0

[state 645, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 645, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 645, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 645, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 645, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(3)
attr = A, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 2)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -48)
animtype = medium
ground.type = high
air.animtype = medium
air.type = low
ground.slidetime = 15 + 3 * var(9)
ground.hittime = 15 + 3 * var(9)
guard.slidetime = 15 + 3 * var(9)
guard.hittime = 15 + 3 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25), -1.75, -3.5), cond(var(25), -5.0, -7.5)
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

[state 645, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 645, Control]
type = ctrlset
trigger1 = time > 48
value = 1

[state 645 Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 645, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; ASK
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
value = 650

[state 650, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 650, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 650, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 650, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 650, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 650, Hit]
type = hitdef
trigger1 = p2bodydist x > const(size.ground.front) * 2.0
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(6)
attr = A, NA
damage = ceil(cond(90 * fvar(0) < 7, 7, 90 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 192), 0 * (var(8) := -88)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25) && (prevstateno = [600, 655]), -9.0, -6.0), cond(var(25) && (prevstateno = [600, 655]), 7.5, -5.25)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = (var(25) && prevstateno = [600, 655])
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 650, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 650, Control]
type = ctrlset
trigger1 = time > 64
value = 1

[state 650, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 650, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; ASK
;=========================================================================
[Statedef 655]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 655, Change Animation]
type = changeanim
trigger1 = !time
value = 655

[state 655, Voice]
type = playsnd
trigger1 = !animelemtime(4)
trigger1 = random < 1000
value = 2, 2
volumescale = 100
channel = 0

[state 655, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 2
volumescale = 100
channel = 1

[state 655, Set Position]
type = posset
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = pos y > -16
y = -16

[state 655, Multiply Velocity]
type = velmul
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
x = 0.9
y = 0.9

[state 655, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
y = const(movement.yaccel)

[state 655, Hit]
type = hitdef
trigger1 = var(10) < 5 + 5 * var(25) && !var(11)
trigger1 = !animelemtime(5)
attr = A, NA
damage = ceil(cond(98 * fvar(0) < 7, 7, 98 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -6.5
air.velocity = cond(var(25) && (prevstateno = [600, 655]), -9.0, -6.0), cond(var(25) && (prevstateno = [600, 655]), 7.5, -5.25)
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = (var(25) && prevstateno = [600, 655])
air.fall = var(9)
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 655, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 655,tolanaa]
type = ctrlset
trigger1 = time > 64
value = 1

[state 655, Re-Levitate]
type = changestate
trigger1 = numhelper(4000)
trigger1 = helper(4000),var(41)
trigger1 = animtime >= -6
value = 1800
anim = 1801

[state 655, End State]
type = changestate
trigger1 = cond(numhelper(4000), !helper(4000),var(41), 1)
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Yoga Drill - Z
;=========================================================================
[Statedef 700]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 700, Change Animation]
type = changeanim
trigger1 = !time
value = 700

[state 700, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 2, random % 2
volumescale = 100
channel = 0

[state 700, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 3
volumescale = 100
channel = 1

[state 700, Set Velocity]
type = velset
trigger1 = !animelemtime(1)
x = 5.90625
y = 2.97083333

[state 700, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = animelemtime(2) >= 0
trigger1 = !movecontact && !movereversed
attr = A, NA
damage = ceil(cond(68 * fvar(0) < 7, 7, 68 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -64)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -11.0
air.velocity = -4.5, -7.5
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

[state 700, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Yoga Drill - A
;=========================================================================
[Statedef 705]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 705, Change Animation]
type = changeanim
trigger1 = !time
value = 705

[state 705, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 2, random % 2
volumescale = 100
channel = 0

[state 705, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 3
volumescale = 100
channel = 1

[state 705, Set Velocity]
type = velset
trigger1 = !animelemtime(1)
x = 5.90625
y = 2.97083333

[state 705, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = animelemtime(2) >= 0
trigger1 = !movecontact && !movereversed
attr = A, NA
damage = ceil(cond(53 * fvar(0) < 7, 7, 53 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -32)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -11.0
air.velocity = -4.5, -7.5
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 700, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Yoga Drill - B
;=========================================================================
[Statedef 710]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 710, Change Animation]
type = changeanim
trigger1 = !time
value = 710

[state 710, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 2, random % 2
volumescale = 100
channel = 0

[state 710, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 3
volumescale = 100
channel = 1

[state 710, Set Velocity]
type = velset
trigger1 = !animelemtime(1)
x = 3.65625
y = 4.40833332

[state 710, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = animelemtime(2) >= 0
trigger1 = !movecontact && !movereversed
attr = A, NA
damage = ceil(cond(60 * fvar(0) < 7, 7, 60 * fvar(0)))
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 3)
guard.sparkno = -1 + 0 * (var(6) := 3)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -24)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 18 + 4 * var(9)
ground.hittime = 18 + 4 * var(9)
guard.slidetime = 18 + 4 * var(9)
guard.hittime = 18 + 4 * var(9)
air.hittime = 104
ground.velocity = -6.5
guard.velocity = -11.0
air.velocity = -4.5, -7.5
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 710, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Yoga Drill - C
;=========================================================================
[Statedef 715]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
poweradd = 32
sprpriority = 1

[state 715, Change Animation]
type = changeanim
trigger1 = !time
value = 715

[state 715, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 2, random % 2
volumescale = 100
channel = 0

[state 715, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 3
volumescale = 100
channel = 1

[state 715, Set Velocity]
type = velset
trigger1 = !animelemtime(1)
x = 1.40625
y = 5.84583332

[state 715, Hit]
type = hitdef
trigger1 = var(10) < 5 && !var(11)
trigger1 = animelemtime(2) >= 0
trigger1 = !movecontact && !movereversed
attr = A, NA
damage = ceil(cond(68 * fvar(0) < 7, 7, 68 * fvar(0)))
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
ground.velocity = -6.5
guard.velocity = -11.0
air.velocity = -4.5, -7.5
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 72, 48
givepower = 48, 48
envshake.time = 10
envshake.ampl = 5
fall = 0
air.fall = 1
fall.recover = !var(9)
fall.recovertime = ceil(cond(var(10), cond(72 * (0.5 ** var(10)) < 32, 32, 72 * (0.5 ** var(10))), 72))
fall.animtype = hard
nochainID = 450

[state 715, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Grab - Attempt
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
value = 800, 0
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
p1stateno = cond(var(22) = 805 && command = "holdback" || var(22) = 825 && command != "holdback", 801, var(22))

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
pos = 56, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 24, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 0, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = 24, 0

[state 801, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 56, 0

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
; Head Bash
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
trigger1 = !time
edge = 80, 0

[state 805, Change Animation]
type = varset
trigger1 = anim = 805
trigger1 = !animtime
var(0) = 140

[state 805, Change Animation]
type = varadd
trigger1 = var(0)
var(0) = -1

[state 805, Change Animation]
type = changeanim
trigger1 = anim = 805
trigger1 = !animtime
value = 806

[state 805, Change Animation]
type = varadd
triggerall = var(0)
triggerall = anim = 806
triggerall = animelemtime(4) > 6
trigger1 = command = "Head_Bash"
trigger2 = ailevel
var(0) = 2

[state 805, Change Animation]
type = varadd
triggerall = var(0)
triggerall = anim = 806
triggerall = animelemtime(4) > 6
trigger1 = numtarget(var(22))
trigger1 = target(var(22)),command = "Head_Bash"
var(0) = -1

[state 805, Change Animation]
type = changeanim
triggerall = var(0)
triggerall = anim = 806
triggerall = animelemtime(4) > 6
trigger1 = command = "Head_Bash"
trigger2 = ailevel
value = 806

[state 805, Change Animation]
type = changeanim
trigger1 = anim = 806
trigger1 = !animtime
trigger1 = !var(0)
value = 807

[state 805, Voice]
type = playsnd
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim = 806 && !animelemtime(3)
value = 805, 0
volumescale = 100
channel = 0

[state 805, Voice]
type = playsnd
trigger1 = anim = 807
trigger1 = !animelemtime(3)
value = 1500, 0
volumescale = 100
channel = 0

[state 805, Sound]
type = playsnd
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim > 805 && !animelemtime(3)
value = 200, 220
volumescale = 100
channel = 2

[state 805, Shake]
type = envshake
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim > 805 && !animelemtime(3)
time = 10
ampl = 5

[state 805, Add Hit]
type = hitadd
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim > 805 && !animelemtime(3)
value = 1

[state 805, Attack Distance]
type = attackdist
trigger1 = 1
value = 0

[state 805, Target State]
type = targetstate
trigger1 = !time
value = 810

[state 805, Target Facing]
type = targetfacing
trigger1 = !time
value = -1

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 805
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 56, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 805
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 72, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 805
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 76, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 805
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = 56, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 805
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
pos = 48, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 805
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0
pos = 52, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 805
trigger1 = animelemtime(7) >= 0
pos = 48, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 806
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 48, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 806
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 52, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 806
trigger1 = animelemtime(3) >= 0
pos = 48, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 807
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 48, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 807
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 52, 0

[state 805, Target Bind]
type = targetbind
trigger1 = anim = 807
trigger1 = !animelemtime(3)
pos = 48, 0

[state 805, Target State]
type = targetstate
trigger1 = anim = 806
trigger1 = animelemtime(1) = 	1
value = 811

[state 805, Target State]
type = targetstate
trigger1 = anim = 807
trigger1 = animelemtime(1) = 	1
value = 812

[state 805, Target Damage]
type = targetlifeadd
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim > 805 && !animelemtime(3)
value = ceil(cond(cond(anim = 805, 60 , 15) * fvar(0) < 7, -7, cond(anim = 805, -60 , -15) * fvar(0)))
kill = anim = 807

[state 805, Target Power]
type = targetpoweradd
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim > 805 && !animelemtime(3)
value = 16

[state 805, Target State]
type = targetstate
trigger1 = anim = 807
trigger1 = !animelemtime(3)
value = 813

[state 805, Add Power]
type = poweradd
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim > 805 && !animelemtime(3)
value = 16

[state 805, Juggle and Dampener Hit Counters]
type = null
trigger1 = anim = 807
trigger1 = !animelemtime(4)
trigger1 = var(10) := var(10) + 1 || var(11) := 1 || var(12) := var(12) + 1

[state 805, Hit Spark]
type = helper
triggerall = var(5) := 3
trigger1 = anim = 805 && !animelemtime(7)
trigger2 = anim > 805 && !animelemtime(3)
name = "Hit Spark"
ID = 6100
stateno = 6100
postype = p1
pos = 48, -72
ownpal = 1
keyctrl = 0
pausemovetime = 65536
supermovetime = 65536

[state 805, End State]
type = changestate
trigger1 = anim = 807
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Target Grabbed
;=========================================================================
[Statedef 810]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 810, Change Animation]
type = changeanim2
trigger1 = !time
value = 810

[state 810, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 810, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Dazed
;=========================================================================
[Statedef 811]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 811, Change Animation]
type = changeanim2
trigger1 = !time
value = 811

[state 811, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 811, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Bashed
;=========================================================================
[Statedef 812]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 812, Change Animation]
type = changeanim2
trigger1 = !time
value = 812

[state 812, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 812, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Knocked Down
;=========================================================================
[Statedef 813]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 813, Change Animation]
type = changeanim2
trigger1 = time = 5
value = 813

[state 813, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 813, Set Velocity]
type = velset
trigger1 = time = 5
x = -2.75
y = -8.0

[state 813, Increment Velocity]
type = veladd
trigger1 = time > 5
y = 0.5859375

[state 813, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10

[state 813, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100
ctrl = 0

;=========================================================================
; Throw
;=========================================================================
[Statedef 825]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 825, Change Animation]
type = changeanim
trigger1 = !time
value = 825

[state 825, Width]
type = width
trigger1 = !animelemtime(1)
trigger2 = !animelemtime(7)
edge = 48 + 24 * !animelemtime(7), 16

[state 800, Turn]
type = turn
trigger1 = !animelemtime(7)

[state 825, Voice]
type = playsnd
trigger1 = !animelemtime(7)
value = 2, 1
volumescale = 100
channel = 0

[state 825, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 1, 2
volumescale = 100
channel = 1

[state 825, Attack Distance]
type = attackdist
trigger1 = 1
value = 0

[state 825, Target State]
type = targetstate
trigger1 = !time
value = 830

[state 825, Target Bind]
type = targetbind
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
pos = 50, 0

[state 825, Target Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 65, 0

[state 825, Target Bind]
type = targetbind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 70, 0

[state 825, Target Bind]
type = targetbind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = 50, 0

[state 825, Target Bind]
type = targetbind
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
pos = 30, -72

[state 825, Target Bind]
type = targetbind
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0
pos = 32, -76

[state 825, Target Bind]
type = targetbind
trigger1 = !animelemtime(7)
pos = 55, -75

[state 825, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(7)
value = ceil(cond(150 * fvar(0) < 7, -7, -150 * fvar(0)))

[state 825, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(7)
value = 48

[state 825, Target State]
type = targetstate
trigger1 = !animelemtime(7)
value = 831

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
[Statedef 830]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 830, Change Animation]
type = changeanim2
trigger1 = !time
value = 830

[state 830, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0

[state 830, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Target Thrown
;=========================================================================
[Statedef 831]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 831, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 831, Set Velocity]
type = velset
trigger1 = !time
x = 4.5
y = -6.5

[state 831, Increment Velocity]
type = veladd
trigger1 = time
y = 0.5859375

[state 831, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10

[state 831, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100
ctrl = 0
