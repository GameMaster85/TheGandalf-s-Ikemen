; _______________________________
;| Nash by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< NORMAL STATES >========================================
;============================================================================================

;=========< Standing Weak Punch >==========
[Statedef 200]
type = S
physics = S
movetype = A
anim = 200
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 200, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 1, 6)
channel = 0
[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 200, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 18
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = ifelse(var(20), -3.12, -5.62)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-80 * const(size.yscale))
hitsound = s2, 0
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 200, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Far Medium Punch >==========
[Statedef 210]
type = S
physics = S
movetype = A
anim = 210
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 210, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 210, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 210, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
ground.velocity = ifelse(var(20), -5.05, -9.22), 0
guard.velocity = ifelse(var(20), -5.05, -9.22)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-74 * const(size.yscale))
hitsound = s2, 1
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 210, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Close Medium Punch >==========
[Statedef 211]
type = S
physics = S
movetype = A
anim = 211
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 211, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 211, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 211, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
ground.velocity = ifelse(var(20), -5.05, -9.22), 0
guard.velocity = ifelse(var(20), -5.05, -9.22)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-70 * const(size.yscale))
hitsound = s2, 1
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 211, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 211, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Far Strong Punch >==========
[Statedef 220]
type = S
physics = S
movetype = A
anim = 220
ctrl = 0
velset = 0, 0
sprpriority = -1
poweradd = 18 * !var(20)
facep2 = 1

[State 220, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 220, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 220, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelemtime(3) = 1
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 90 < 7, 7, fvar(11) * 90)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 12
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -7.4 / ((var(20) > 0) + 1.0), -5.2
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 10
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-76 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = -1

[State 220, spr]
type = sprpriority
trigger1 = animelemtime(5) >= 0
value = 0
[State 220, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Close Strong Punch >==========
[Statedef 221]
type = S
physics = S
movetype = A
anim = 221
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 221, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 221, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1

[State 221, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 15
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -4.25 / ((var(20) > 0) + 1.0), -7.5
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 13
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-70 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 221, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3 && !movecontact && !movereversed
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 15
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -4.25 / ((var(20) > 0) + 1.0), -7.5
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 13
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-115 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 221, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Weak Kick >==========
[Statedef 230]
type = S
physics = S
movetype = A
anim = 230
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 230, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 1, 6)
channel = 0
[State 230, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1

[State 230, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 18
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = ifelse(var(20), -3.12, -5.62)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-22 * const(size.yscale))
hitsound = s2, 3
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 230, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Knee Bazooka >==========
[Statedef 235]
type = S
physics = S
movetype = A
anim = 235
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 235, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 1, 6)
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 235, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 40
[State 235, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 235, Pos]
type = posadd
trigger1 = animelem = 1 || animelem = 2 || animelem = 3
x = ceil(10 * const(size.xscale));20
[State 235, Vel]
type = velset
trigger1 = animelem = 3
x = 3;5
y = -7

[State 235, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N
[State 235, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.95

[State 235, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = ifelse(var(20), -3.12, -5.62)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-68 * const(size.yscale))
hitsound = s2, 3
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 235, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 235, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 236


;--- LAND ---
[Statedef 236]
type = S
physics = S
ctrl = 0
anim = 236
velset = 0, 0
movehitpersist = 1
[State 236, Pos]
type = posset
trigger1 = 1
y = 0
[State 236, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 236, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 236, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Far Medium Kick >==========
[Statedef 240]
type = S
physics = N
movetype = A
anim = 240
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 240, Vel]
type = varset
trigger1 = !time && prevstateno != 710
var(0) = ifelse(command = "holdfwd", 2, ifelse(command = "holdback", -2, 0))
[State 240, Vel]
type = velset
trigger1 = animelem = 2
x = var(0)
[State 240, Vel]
type = velset
trigger1 = animelem = 7
x = 0

[State 240, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 240, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 240, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
ground.velocity = ifelse(var(20), -5.05, -9.22), 0
guard.velocity = ifelse(var(20), -5.05, -9.22)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-64 * const(size.yscale))
hitsound = s2, 4
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 240, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3 && prevstateno = 710
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
ground.velocity = -6 / ((var(20) > 0) + 1.0), -4.5
guard.velocity = ifelse(var(20), -5.05, -9.22)
air.velocity = -6 / ((var(20) > 0) + 1.0), -4.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-64 * const(size.yscale))
hitsound = s2, 4
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 240, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Close Medium Kick >==========
[Statedef 241]
type = S
physics = S
movetype = A
anim = 241
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 241, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 241, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 241, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
ground.velocity = ifelse(var(20), -5.05, -9.22), 0
guard.velocity = ifelse(var(20), -5.05, -9.22)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-88 * const(size.yscale))
hitsound = s2, 4
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 241, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 241, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Far Strong Kick >==========
[Statedef 250]
type = S
physics = N
movetype = A
anim = 250
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 250, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 250, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 250, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 12
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -7.4 / ((var(20) > 0) + 1.0), -5.2
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 10
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-56 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 250, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Step Kick >==========
[Statedef 255]
type = S
physics = N
movetype = A
anim = 255
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 255, Vel]
type = velset
trigger1 = !time
x = 3.9
[State 255, Vel]
type = velset
trigger1 = animelem = 3
x = 0

[State 255, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 255, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 255, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 0;76
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 12
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -7.4 / ((var(20) > 0) + 1.0), -5.2
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 10
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-56 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 255, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 255, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Close Strong Kick >==========
[Statedef 251]
type = S
physics = S
movetype = A
anim = 251
ctrl = 0
velset = 0, 0
sprpriority = -1
poweradd = 18 * !var(20)
facep2 = 1

[State 251, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 251, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1

[State 251, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 5
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 90 < 7, 7, fvar(11) * 90)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 15
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -4.25 / ((var(20) > 0) + 1.0), -7.5
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 13
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-86 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = -1

[State 251, spr]
type = sprpriority
trigger1 = animelemtime(7) >= 0
value = 0
[State 251, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 251, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Crouching Weak Punch >==========
[Statedef 400]
type = C
physics = C
movetype = A
anim = 400
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 400, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 1, 6)
channel = 0
[State 400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 400, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 18
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = ifelse(var(20), -3.12, -5.62)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-47 * const(size.yscale))
hitsound = s2, 0
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 400, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 400, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Medium Punch >==========
[Statedef 410]
type = C
physics = C
movetype = A
anim = 410
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 410, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 410, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 410, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
ground.velocity = ifelse(var(20), -5.05, -9.22), 0
guard.velocity = ifelse(var(20), -5.05, -9.22)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-47 * const(size.yscale))
hitsound = s2, 1
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 410, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 410, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Strong Punch >==========
[Statedef 420]
type = C
physics = C
movetype = A
anim = 420
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 420, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1

[State 420, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 83 < 7, 7, fvar(11) * 83)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 18
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -2.5 / ((var(20) > 0) + 1.0), -8
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 16
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-80 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 420, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3 && !movecontact && !movereversed
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 15
ground.velocity = ifelse(var(20), -6.83, -12.65), 0
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.7
ground.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 13
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-128 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 420, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 420, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Weak Kick >==========
[Statedef 430]
type = C
physics = C
movetype = A
anim = 430
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 430, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 1, 6)
channel = 0
[State 430, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1

[State 430, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 18
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = ifelse(var(20), -3.12, -5.62)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-11 * const(size.yscale))
hitsound = s2, 3
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 430, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 430, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Medium Kick >==========
[Statedef 440]
type = C
physics = C
movetype = A
anim = 440
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 440, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 440, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 440, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelemtime(3) = 1
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
ground.velocity = ifelse(var(20), -5.05, -9.22), 0
guard.velocity = ifelse(var(20), -5.05, -9.22)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
ground.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-12 * const(size.yscale))
hitsound = s2, 4
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 440, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Far Strong Kick >==========
[Statedef 450]
type = C
physics = C
movetype = A
anim = 450
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 450, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 450, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 450, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 90 < 7, 7, fvar(11) * 90)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
guard.hittime = 18
air.hittime = 12
ground.velocity = -1.33, -6.85
guard.velocity = ifelse(var(20), -6.83, -12.65)
air.velocity = -1.33, -6.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-18 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 450, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 450, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Jumping Weak Punch >==========
[Statedef 600]
type = A
physics = N
movetype = A
anim = 600
ctrl = 0
sprpriority = 1
poweradd = 0

[State 600, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 600
value = 4, ifelse(random < 500, 1, 6)
channel = 0
[State 600, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 600, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 15
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = ifelse(var(20), -3.12, -5.62)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 13
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-50 * const(size.yscale))
hitsound = s2, 0
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 600, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 600, Accel]
type = gravity
trigger1 = time >= 0
[State 600, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Jumping Medium Punch >==========
[Statedef 610]
type = A
physics = N
movetype = A
anim = 610
ctrl = 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 610, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 610, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 610, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3 * var(9)
ground.slidetime = 10 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = -10.25 / ((var(20) > 0) + 1.0)
air.velocity = -6.25 / ((var(20) > 0) + 1.0), -5.9
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-108 * const(size.yscale))
hitsound = s2, 1
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 610, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 610, Accel]
type = gravity
trigger1 = time >= 0
[State 610, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Jumping Strong Punch >==========
[Statedef 620]
type = A
physics = N
movetype = A
anim = 620
ctrl = 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 620, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 620, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 620, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * var(9)
ground.slidetime = 10 + 4 * var(9)
guard.hittime = 18
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = -14.75 / ((var(20) > 0) + 1.0)
air.velocity = -6.25 / ((var(20) > 0) + 1.0), -5.9
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-64 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 620, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 620, Accel]
type = gravity
trigger1 = time >= 0
[State 620, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Jumping Weak Kick >==========
[Statedef 630]
type = A
physics = N
movetype = A
anim = 630
ctrl = 0
sprpriority = 1
poweradd = 0

[State 630, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 630
value = 4, ifelse(random < 500, 1, 6)
channel = 0
[State 630, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1

[State 630, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(8 / ((var(20) > 0) + 1.0)), ceil(8 / ((var(20) > 0) + 1.0))
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 15
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = ifelse(var(20), -3.12, -5.62)
air.velocity = -5.25 / ((var(20) > 0) + 1.0), -6.75
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 13
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-90 * const(size.yscale))
hitsound = s2, 3
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 630, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 630, Accel]
type = gravity
trigger1 = time >= 0
[State 630, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Jumping Medium Kick >==========
[Statedef 640]
type = A
physics = N
movetype = A
anim = 640
ctrl = 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 640, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 0, 5)
channel = 0
[State 640, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 640, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(10 / ((var(20) > 0) + 1.0)), ceil(10 / ((var(20) > 0) + 1.0))
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3 * var(9)
ground.slidetime = 10 + 3 * var(9)
guard.hittime = 15
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = -10.25 / ((var(20) > 0) + 1.0)
air.velocity = -6.25 / ((var(20) > 0) + 1.0), -5.9
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -8.83, -17.2)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-52 * const(size.yscale))
hitsound = s2, 4
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 640, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 640, Accel]
type = gravity
trigger1 = time >= 0
[State 640, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Jumping Strong Kick >==========
[Statedef 650]
type = A
physics = N
movetype = A
anim = 650
ctrl = 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 650, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 4)
channel = 0
[State 650, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 650, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) < 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * var(9)
ground.slidetime = 10 + 4 * var(9)
guard.hittime = 18
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -3.12, -5.62), 0
guard.velocity = -14.75 / ((var(20) > 0) + 1.0)
air.velocity = -6.25 / ((var(20) > 0) + 1.0), -5.9
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0;ifelse(var(20), -5.44, -9.83)
guard.cornerpush.veloff = 0;ifelse(var(20), -12.42, -24.4)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120; 12
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-36 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 650, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 650, Accel]
type = gravity
trigger1 = time >= 0
[State 650, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Throw Attempt >==========
[Statedef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 800, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = (command = "2k")
[State 800, Strength]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(var(20), 0, (random < 666))

[State 800, Tech Hit]
type = varset
trigger1 = 1
var(19) = 0
[State 800, Tech Hit]
type = varset
trigger1 = numenemy
trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799])
var(19) = 7

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !var(38)
attr = S, NT
hitflag = M-
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-80 * const(size.yscale))
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
numhits = 0
p1facing = ifelse(command = "holdback", -1, 1) 
p2facing = 1
p1stateno = 810

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2 && var(10)
trigger1 = !var(38)
attr = S, NT
hitflag = M-
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-80 * const(size.yscale))
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
numhits = 0
p1stateno = ifelse(command = "holdfwd", 820, 803)

[State 800, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 3
value = 4, 8
channel = 0
[State 800, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1

[State 800, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = 0
[State 801, throw]
type = targetstate
trigger1 = !time && numtarget
value = 802
[State 801, throw]
type = targetfacing
trigger1 = !time && numtarget
value = -1

[State 801, Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1
[State 801, Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890

[State 801, facing]
type = targetfacing
trigger1 = 1
value = -1
[State 801, Bind 1]
type = targetbind
trigger1 = numtarget
pos = ceil(48 * const(size.xscale)), 0

[State 801, End]
type = changestate
trigger1 = !numtarget
value = 0
ctrl = 1
[State 801, End]
type = changestate
trigger1 = 1
value = ifelse(var(10), 820, 810)


[Statedef 803]
type = S
movetype = A
physics = S
anim = 803
ctrl = 0
sprpriority = 0
[State 803, throw]
type = targetstate
trigger1 = !time && numtarget
value = 804
[State 803, throw]
type = targetfacing
trigger1 = !time && numtarget
value = -1
[State 803, width]
type = width
trigger1 = 1
edge = 24, 24

[State 803, Turn]
type = turn
trigger1 = animelem = 3
[State 803, facing]
type = targetfacing
trigger1 = 1
value = -1

[State 803, Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1
[State 803, Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890

[State 803, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
trigger2 = animelemtime(5) >= 0
pos = ceil(48 * const(size.xscale)), 0
[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger2 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = ceil(24 * const(size.xscale)), 0
[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0

[State 801, End]
type = changestate
trigger1 = !numtarget
value = 0
ctrl = 1
[State 803, End]
type = changestate
trigger1 = animelemtime(5) >= 0
value = ifelse(var(10), 820, 810)


;--- TARGET ---
[Statedef 802]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 1
[State 802, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 802, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


[Statedef 804]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 1
[State 804, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 804, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 804, Anim]
type = changeanim2
trigger1 = !time
value = 804
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;=========< Dragon Suplex >==========
[Statedef 810]
type = S
physics = S
movetype = A
anim = 810
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 810, Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1
[State 810, Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890

[State 810, throw]
type = targetstate
trigger1 = !time && numtarget
value = 811
[State 810, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 810, width]
type = width
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
edge = 90, 0

[State 810, Bind 1]
type = targetbind
trigger1 = numtarget && animelemtime(2) < 0
pos = ceil(-24 * const(size.xscale)), ceil(-58 * const(size.yscale))
[State 810, Bind 2]
type = targetbind
trigger1 = numtarget && animelemtime(2) >= 0 && animelemtime(3) < 0
pos = ceil(-42 * const(size.xscale)), ceil(-81 * const(size.yscale))
[State 810, Bind 3]
type = targetbind
trigger1 = numtarget && animelemtime(3) >= 0 && animelemtime(4) < 0
pos = ceil(-38 * const(size.xscale)), ceil(-81 * const(size.yscale))
[State 810, Bind 4]
type = targetbind
trigger1 = numtarget && animelemtime(4) >= 0 && animelemtime(6) < 0
pos = ceil(34 * const(size.xscale)), ceil(-100 * const(size.yscale))
[State 810, Bind 6]
type = targetbind
trigger1 = numtarget && animelemtime(6) >= 0 && animelemtime(7) < 0
pos = ceil(82 * const(size.xscale)), 0

[State 810, damage]
type = targetlifeadd
trigger1 = animelem = 6
value = ceil(ifelse(111 * fvar(11) < 7, -7, -111 * fvar(11)))
[State 810, givepower]
type = targetpoweradd
trigger1 = animelem = 7
value = 36
[State 810, getpower]
type = poweradd
trigger1 = animelem = 6 && !var(20)
value = 72

[State 810, Juggle]
type = varadd
trigger1 = animelem = 6
var(14) = 1

[State 810, throw]
type = targetstate
trigger1 = animelem = 7
value = 812

[State 810, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 3
value = 4, 4
channel = 0
[State 810, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1

[State 810, Snd]
type = playsnd
trigger1 = numtarget && animelem = 6
value = 0, 5101
[State 810, Shake]
type = envshake
trigger1 = numtarget && animelem = 6
time = 18
ampl = -6
[State 810, Dust]
type = explod
trigger1 = numtarget && animelem = 6
anim = 8110
sprpriority = -3
postype = p1
pos = 82, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0 
ctrl = 1


;--- TARGET ---
[Statedef 811]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 811, Anim]
type = changeanim2
trigger1 = !time
value = 811
[State 811, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0


[Statedef 812]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 812, Vel]
type = velset
trigger1 = !time
x = -4
y = -7.5

[State 812, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 812, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 812, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -10
value = 5100

;--- Target Fall Recovery ---
[Statedef 813]
type = A
movetype = H
physics = N

[State 813, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 813, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5201


;=========< Knee Gatling >==========
[Statedef 820]
type = S
physics = S
movetype = A
anim = 820
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 820, Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1
[State 820, Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890

[State 820, width]
type = width
trigger1 = 1
edge = 48, 0

[State 820, End]
type = changestate
triggerall = (animelemtime(11) < 0 || animelemtime(19) >= 0) && hitcount >= 1
trigger1 = time >= (120 + var(12)) || hitcount >= 11
trigger2 = numtarget
trigger2 = !(target, alive)
trigger3 = !numtarget
value = 821 

[State 820, Anim]
type = changeanim
triggerall = anim = 820 && animelemtime(24) < 0
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
value = 820
elem = animelemno(0) + 1
[State 820, Anim]
type = changeanim
trigger1 = anim = 820 && animelemtime(24) < 0
trigger1 = animelemtime(animelemno(0)) >= 1
value = 820
elem = animelemno(0) + 1

[State 820, mashvar]
type = varset
trigger1 = !time
var(12) = 0
[State 820, mashvar]
type = varadd
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
var(12) = 1
[State 820, mashvar]
type = varadd
triggerall = numtarget
trigger1 = target, command = "x" || target, command = "y" || target, command = "z"
trigger2 = target, command = "a" || target, command = "b" || target, command = "c"
trigger3 = target, command = "up" || target, command = "down" || target, command = "back" || target, command = "fwd"
var(12) = -1
[State 820, Flash]
type = palfx
triggerall = anim = 820 && animelemtime(24) < 0
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32

[State 820, throw]
type = targetstate
trigger1 = numtarget
value = ifelse((animelemtime(11) >= 0 && animelemtime(19) < 0), 823, 822)
[State 820, throw]
type = targetfacing
trigger1 = numtarget
value = -1

[State 820, Bind]
type = targetbind
trigger1 = numtarget
trigger1 = target, stateno = 822
pos = ceil(65 * const(size.xscale)), 0
[State 820, Bind]
type = targetbind
trigger1 = numtarget
trigger1 = target, stateno = 823
pos = ceil(51 * const(size.xscale)), ceil(-78 * const(size.yscale))

[State 820, damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 13 && !hitcount
value = ceil(ifelse(42 * fvar(11) < 7, -7, -42 * fvar(11)))
[State 820, damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 13 && hitcount
value = ceil(ifelse(14 * fvar(11) < 7, -7, -14 * fvar(11)))

[State 820, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 10
value = 4, 1
channel = 0
[State 820, Snd]
type = playsnd
trigger1 = animelem = 10
value = 1, 4
channel = 1

[State 820, Hit]
type = hitadd
trigger1 = numtarget && animelem = 13
value = 1
[State 820, hitcount]
type = varadd
trigger1 = numtarget && animelem = 13
var(13) = 1

[State 820, Snd]
type = playsnd
trigger1 = numtarget && animelem = 13
value = 2, 4
[State 820, Sparks]
type = explod
trigger1 = numtarget && animelem = 13
anim = 8010 + (random % 8)
sprpriority = 5
postype = p1
pos = ceil(53 * const(size.xscale)), ceil(-69 * const(size.yscale))
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
[State 820, Shake]
type = envshake
trigger1 = numtarget && animelem = 13
time = 14
ampl = 4


;--- FINISH ---
[Statedef 821]
type = S
physics = S
movetype = A
anim = 821
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 821, throw]
type = targetstate
trigger1 = !time
value = 824
[State 821, throw]
type = targetfacing
trigger1 = time <= 1
value = -1
[State 821, throw]
type = targetstate
trigger1 = animelem = 4
value = 825

[State 821, width]
type = width
trigger1 = 1
edge = 48, 0

[State 821, Bind 1]
type = targetbind
trigger1 = numtarget && animelemtime(3) < 0
pos = ceil(65 * const(size.xscale)), 0
[State 821, Bind 3]
type = targetbind
trigger1 = numtarget && animelemtime(3) >= 0 && animelemtime(4) < 0
pos = ceil(88 * const(size.xscale)), ceil(-95 * const(size.yscale))
[State 821, Bind 4]
type = targetbind
trigger1 = numtarget && animelem = 4
pos = ceil(45 * const(size.xscale)), ceil(-53 * const(size.yscale))

[State 821, damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 3
value = ceil(ifelse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
[State 821, givepower]
type = targetpoweradd
trigger1 = numtarget && animelem = 3
value = 36
[State 821, getpower]
type = poweradd
trigger1 = numtarget && animelem = 3 && !var(20)
value = 72

[State 821, Juggle]
type = varadd
trigger1 = animelem = 3
var(14) = 1

[State 820, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2
value = 4, 2
channel = 0
[State 820, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 821, Hit]
type = hitadd
trigger1 = numtarget && animelem = 3
value = 1
[State 821, Snd]
type = playsnd
trigger1 = numtarget && animelem = 3
value = 2, 5
[State 821, Sparks]
type = explod
trigger1 = numtarget && animelem = 3
anim = 8010 + (random % 8)
sprpriority = 5
postype = p1
pos = ceil(88 * const(size.xscale)), ceil(-95 * const(size.yscale))
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
[State 821, Shake]
type = envshake
trigger1 = numtarget && animelem = 3
time = 14
ampl = 4

[State 821, End]
type = changestate
trigger1 = !animtime
value = 0 
ctrl = 1


;--- TARGET ---
[Statedef 822]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 822, Anim]
type = changeanim2
trigger1 = !time
value = 822
[State 822, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0
[State 822, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32

[Statedef 823]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 823, Anim]
type = changeanim2
trigger1 = !time
value = 823
[State 823, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0
[State 823, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32

[Statedef 824]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 824, Anim]
type = changeanim2
trigger1 = !time
value = 824
[State 824, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[Statedef 825]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 825, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5030)

[State 825, Anim]
type = changeanim
trigger1 = (anim = [5030, 5035]) && !animtime
value = 5050

[State 825, Vel]
type = velset
trigger1 = time = 2
x = -6.5
y = -5.85

[State 825, Accel]
type = veladd
trigger1 = time >= 2
y = 0.5

[State 825, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 825, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;=========< Air Throw Attempt >==========
[Statedef 850]
type = A
physics = N
movetype = A
anim = 850
ctrl = 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 850, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = (command = "2k")
[State 850, Strength]
type = varset
trigger1 = !time && AIlevel
var(10) = (random < 500)

[State 850, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 850, Hit]
type = hitdef
trigger1 = var(14) < 1 || var(20)
trigger1 = !var(38)
trigger1 = animelem = 1
attr = A, NT
hitflag = AF
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-88 * const(size.yscale))
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
fall.recover = 1
numhits = 0
p1stateno = 860 

[State 850, Hit]
type = hitdef
trigger1 = var(14) < 1 || var(20)
trigger1 = !var(38)
trigger1 = animelem = 1 && var(10)
attr = A, NT
hitflag = AF
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := ceil(-88 * const(size.yscale))
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
p2facing = 1
p1stateno = 870 

[State 850, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 3
value = 4, 8
channel = 0
[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1

[State 850, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = I
[State 850, Accel]
type = gravity
trigger1 = time >= 0
[State 850, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Flying Buster Drop >==========
[Statedef 860]
type = A
physics = N
movetype = A
anim = 860
ctrl = 0
velset = ifelse(vel x > 4, 4, ifelse(vel x < -4, -4, vel x)), 0
sprpriority = 1

[State 860, throw]
type = targetstate
trigger1 = !time && numtarget
value = 862
[State 860, throw]
type = targetfacing
trigger1 = time <= 1
value = 1

[State 860, Pos]
type = posset
trigger1 = pos y > 0 && animelemtime(2) < 0
y = 0
[State 860, Pos]
type = posfreeze
trigger1 = animelemtime(2) < 0
value = 1
[State 860, Vel]
type = velset
trigger1 = animelem = 2
y = -1
[State 860, Vel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.5

[State 860, Bind]
type = targetbind
trigger1 = numtarget
pos = ceil(4 * const(size.xscale)), ceil(-113 * const(size.yscale))

[State 860, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2
value = 4, 4
channel = 0

[State 860, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 861


[Statedef 861]
type = C
physics = N
movetype = A
anim = 861
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 861, throw]
type = targetstate
trigger1 = numtarget && !time
value = 863
[State 861, throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 864

[State 861, Pos]
type = posset
trigger1 = !time
y = 0

[State 861, Hit]
type = hitadd
trigger1 = !time
value = 1
[State 861, Snd]
type = playsnd
trigger1 = !time
value = 2, 2
[State 861, Sparks]
type = explod
trigger1 = !time
anim = 8010 + (random % 8)
sprpriority = 5
postype = p1
pos = ceil(3 * const(size.xscale)), ceil(-64 * const(size.yscale))
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
[State 861, Shake]
type = envshake
trigger1 = !time
time = 14
ampl = -4

[State 861, Bind]
type = targetbind
trigger1 = numtarget && animelemtime(2) < 0
pos = ceil(3 * const(size.xscale)), ceil(-48 * const(size.yscale))

[State 861, damage]
type = targetlifeadd
trigger1 = !time
value = ceil(ifelse(100 * fvar(11) < 7, -7, -100 * fvar(11)))
[State 861, givepower]
type = targetpoweradd
trigger1 = !time
value = 36
[State 861, getpower]
type = poweradd
trigger1 = !time && !var(20)
value = 72

[State 861, Juggle]
type = varadd
trigger1 = !time
var(14) = 1

[State 861, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 862]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 862, Anim]
type = changeanim2
trigger1 = !time
value = 862
[State 862, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[Statedef 863]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0
[State 863, Anim]
type = changeanim2
trigger1 = !time
value = 863
[State 863, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[Statedef 864]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 864, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5030)

[State 864, Anim]
type = changeanim
trigger1 = (anim = [5030, 5035]) && !animtime
value = 5050

[State 864, Vel]
type = velset
trigger1 = !time
x = 3.88
y = -7.5

[State 864, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 864, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 864, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;=========< Airjack >==========
[Statedef 870]
type = A
physics = N
movetype = A
anim = 870
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 870, throw]
type = targetstate
trigger1 = !time && numtarget
value = 872
[State 870, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 870, Pos]
type = posset
trigger1 = pos y > 0 && animelemtime(5) < 0
y = 0
[State 870, Vel]
type = velset
trigger1 = animelem = 5
x = -2.6
y = -5.5
[State 870, Vel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.5

[State 870, Bind 1]
type = targetbind
trigger1 = numtarget && animelemtime(4) < 0
pos = ceil(45 * const(size.xscale)), ceil(-102 * const(size.yscale))

[State 870, Bind 5]
type = targetbind
trigger1 = numtarget && animelem = 4
pos = ceil(81 * const(size.xscale)), ceil(-29 * const(size.yscale))
[State 870, throw]
type = targetstate
trigger1 = numtarget && animelem = 4
value = 873

[State 870, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 3
value = 4, 2
channel = 0
[State 870, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 870, Hit]
type = hitadd
trigger1 = numtarget && animelem = 4
value = 1
[State 870, Snd]
type = playsnd
trigger1 = numtarget && animelem = 4
value = 2, 5
[State 870, Sparks]
type = explod
trigger1 = numtarget && animelem = 4
anim = 8010 + (random % 8)
sprpriority = 5
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-75 * const(size.yscale))
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
[State 870, Shake]
type = envshake
trigger1 = numtarget && animelem = 4
time = 14
ampl = 4

[State 870, damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 4
value = ceil(ifelse(125 * fvar(11) < 7, -7, -125 * fvar(11)))
[State 870, givepower]
type = targetpoweradd
trigger1 = numtarget && animelem = 4
value = 36
[State 870, getpower]
type = poweradd
trigger1 = numtarget && animelem = 4 && !var(20)
value = 72

[State 870, Juggle]
type = varadd
trigger1 = animelem = 4
var(14) = 1

[State 870, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 871


[Statedef 871]
type = C
physics = N
movetype = A
anim = 871
ctrl = 0
velset = 0, 0
sprpriority = 1
[State 871, Pos]
type = posset
trigger1 = !time
y = 0
[State 871, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 871, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 871, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 872]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 872, Anim]
type = changeanim2
trigger1 = !time
value = 872
[State 872, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[Statedef 873]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 873, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5030)

[State 873, Anim]
type = changeanim
trigger1 = (anim = [5030, 5035]) && !animtime
value = 5050

[State 873, Vel]
type = velset
trigger1 = time = 2
x = -7
y = -5

[State 873, Accel]
type = veladd
trigger1 = time >= 2
y = 0.5

[State 873, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 873, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;===========< Target Escaped >==========
[Statedef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 890, Bind]
type = targetbind
trigger1 = !time && numtarget
pos = 0, 0
[State 890, p2state]
type = targetstate
trigger1 = !time && numtarget
value = 895
[State 890, Throw]
type = targetfacing
trigger1 = !time && numtarget
value = -1

[State 890, Pos]
type = posadd
trigger1 = !time
x = 24

[State 890, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 890, Push]
type = playerpush
trigger1 = 1
value = 0

[State 890, Pos]
type = posset
trigger1 = !time
y = 0
[State 890, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 890, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5000, 3
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 0, 700

[State 890, FX]
type = explod
trigger1 = !time
anim = 8000
ID = 8000
sprpriority = 5
postype = p1
pos = 0, -48
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 890, End]
type = changestate
trigger1 = time >= 27
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5945), 5945, 130)
[State 895, Anim]
type = changeanim
trigger1 = !time && !selfanimexist(5945) && selfanimexist(5910)
value = 5910
[State 895, Anim]
type = changeanim
trigger1 = time >= 20 && anim = 130
value = 140

[State 895, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 895, Push]
type = playerpush
trigger1 = 1
value = 0

[State 895, Pos]
type = posset
trigger1 = !time
y = 0
[State 895, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 27
value = 0
ctrl = 1
