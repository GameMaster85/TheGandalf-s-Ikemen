; _______________________________
;| Yuri by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< NORMAL STATES >========================================
;============================================================================================

;=========< Standing Far Weak Punch >==========
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
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 200, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -71
hitsound = s2, 0
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 200, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -71
hitsound = s2, 0
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
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


;=========< Standing Close Weak Punch >==========
[Statedef 201]
type = S
physics = S
movetype = A
anim = 201
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 201, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 201, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 201, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -74
hitsound = s2, 0
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
nochainID = -1

[State 201, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -74
hitsound = s2, 0
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
nochainID = -1

[State 201, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 201, End]
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 210, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 210, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -74
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 210, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -74
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 211, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 211, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -78
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -2, -6
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 211, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -78
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -2, -6
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 211, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
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
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 220, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 220, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 220, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 83 < 7, 7, fvar(11) * 83)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -70
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 220, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 83 < 7, 7, fvar(11) * 83)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -70
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 220, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 221, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 221, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -54
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 221, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 4 && !movecontact && !movereversed
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -119
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 221, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -54
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 221, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 4 && !movecontact && !movereversed
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -119
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 221, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Far Weak Kick >==========
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
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 230, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1

[State 230, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -73
hitsound = s2, 3
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 230, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -73
hitsound = s2, 3
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
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


;=========< Standing Close Weak Kick >==========
[Statedef 231]
type = S
physics = S
movetype = A
anim = 231
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 231, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 231, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1

[State 231, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -12
hitsound = s2, 3
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 231, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -12
hitsound = s2, 3
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 231, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 231, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Far Medium Kick >==========
[Statedef 240]
type = S
physics = S
movetype = A
anim = 240
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 240, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 240, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 4
channel = 1

[State 240, posfix]
type = posadd
trigger1 = animelem = 2 || animelem = 3
x = ifelse((animelem = 2), 16, 8)
[State 240, posfix]
type = posadd
trigger1 = animelem = 6 || animelem = 7
x = ifelse((animelem = 6), -8, -16)

[State 240, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -16
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 240, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -16
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 240, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 241, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 241, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -59
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -2, -6
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 241, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -59
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -2, -6
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
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


;=========< En Yoku >==========
[Statedef 245]
type = S
physics = S
movetype = A
anim = 245
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 245, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 3
channel = 0
[State 245, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 245, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 40
[State 245, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 245, Vel]
type = velset
trigger1 = animelem = 3
x = 4
y = -6

[State 245, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N
[State 245, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.725

[State 245, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -52
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 245, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -52
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 245, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 246


;--- LAND ---
[Statedef 246]
type = S
physics = S
ctrl = 0
anim = 246
velset = 0, 0
movehitpersist = 1
[State 246, Pos]
type = posset
trigger1 = 1
y = 0
[State 246, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 246, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 246, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Standing Far Strong Kick >==========
[Statedef 250]
type = S
physics = S
movetype = A
anim = 250
ctrl = 0
velset = 0, 0
sprpriority = -1
poweradd = 18 * !var(20)
facep2 = 1

[State 250, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 250, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 250, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -70
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -5
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 0
fall.recover = 1
p1sprpriority = -1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 250, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3 && prevstateno = 710
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -70
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = -6, -4.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -4.5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120; 16
p1sprpriority = -1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 250, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -70
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -5
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 0
fall.recover = 1
p1sprpriority = -1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 250, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3 && prevstateno = 710
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -70
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = -6, -4.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -4.5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120; 16
p1sprpriority = -1
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


;=========< Standing Close Strong Kick >==========
[Statedef 251]
type = S
physics = S
movetype = A
anim = 251
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)
facep2 = 1

[State 251, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 251, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 251, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -59
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 251, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -59
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 251, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 251, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Enbu Kyaku >==========
;--- 2nd ---
[Statedef 311]
type = S
physics = S
movetype = A
anim = 240
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 311, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 311, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 4
channel = 1

[State 311, posfix]
type = posadd
trigger1 = animelem = 2 || animelem = 3
x = ifelse((animelem = 2), 16, 8)
[State 311, posfix]
type = posadd
trigger1 = animelem = 6 || animelem = 7
x = ifelse((animelem = 6), -8, -16)

[State 311, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -16
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
guard.velocity = -8
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 311, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -16
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
guard.velocity = -8
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 311, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 311, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- 3rd ---
[Statedef 312]
type = S
physics = S
movetype = A
anim = 210
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 312, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 312, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 312, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -74
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
guard.velocity = -8
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 312, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -74
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
guard.velocity = -8
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 312, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 312, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Final ---
[Statedef 313]
type = S
physics = S
movetype = A
anim = 313
ctrl = 0
velset = 0, 0
poweradd = 18 * !var(20)

[State 313, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 313, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 313, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 5
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -68
hitsound = s2, 5
guardsound = s3, 0
animtype = Back
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = -6, -8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -8
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120; 60
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 313, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 5
attr = S, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -68
hitsound = s2, 5
guardsound = s3, 0
animtype = Back
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = -6, -8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -8
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120; 60
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 313, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 313, End]
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
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 400, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -38
hitsound = s2, 0
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 400, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -38
hitsound = s2, 0
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 410, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 410, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -12
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
down.hittime = 15 + 3 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 410, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MA
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -12
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
down.hittime = 15 + 3 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
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
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1

[State 420, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -66
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 420, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3 && !movecontact && !movereversed
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -116
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 420, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -66
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 420, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3 && !movecontact && !movereversed
forcenofall = !var(20)
attr = C, NA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -116
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -3, -9
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
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
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 430, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1

[State 430, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -8
hitsound = s2, 3
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
down.hittime = 12 + 2 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 430, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MA
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -8
hitsound = s2, 3
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -5, 0
ground.cornerpush.veloff = 0;-10
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
down.hittime = 12 + 2 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 440, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 440, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -30
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
down.hittime = 15 + 3 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 440, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MA
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -30
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
down.hittime = 15 + 3 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 440, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 440, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -30
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
down.hittime = 15 + 3 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 440, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MA
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -30
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * var(9)
ground.slidetime = 15 + 3 * var(9)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -7.49, -14.01)
air.hittime = 18 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
down.hittime = 15 + 3 * var(9)
down.velocity = -3, -5
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 440, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouching Strong Kick >==========
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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 450, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 450, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -29
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = -1, -8.24
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -1, -8.24
air.cornerpush.veloff = 0
down.hittime = 18 + 4 * var(9)
down.velocity = -3, -5
down.ground.cornerpush.veloff = 0;-22
guard.velocity = -11
yaccel = 0.677
fall = 1
fall.recover = 1
fall.recovertime = 120
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 450, hit -]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = var(14) >= 1
trigger1 = animelem = 3
attr = C, NA
hitflag = MA
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -29
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4 * var(9)
ground.slidetime = 18 + 4 * var(9)
ground.velocity = -1, -8.24
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -10.47, -20.01)
air.hittime = 18 + 4 * var(9)
air.velocity = -1, -8.24
air.cornerpush.veloff = 0
down.hittime = 18 + 4 * var(9)
down.velocity = -3, -5
down.ground.cornerpush.veloff = 0;-22
guard.velocity = -11
yaccel = 0.677
fall = 1
fall.recover = 1
fall.recovertime = 120
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 450, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
trigger1 = animelem = 1 && random < 600
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 600, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 600, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 0
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -4 / ((var(20) > 0) + 1.0), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.30, -7.51)
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
guard.hittime = 12
guard.velocity = -5
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 600, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 610, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 610, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 1
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 11 + 3 * var(9)
ground.slidetime = 11 + 3 * var(9)
ground.velocity = -4 / ((var(20) > 0) + 1.0), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.30, -7.51)
air.hittime = 11 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
guard.hittime = 18
guard.velocity = -8
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 610, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 620, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 620, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 76 < 7, 7, fvar(11) * 76)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -50
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * var(9)
ground.slidetime = 12 + 4 * var(9)
ground.velocity = -4 / ((var(20) > 0) + 1.0), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.30, -7.51)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -5
air.cornerpush.veloff = 0
guard.hittime = 20
guard.velocity = -11
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 620, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
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
trigger1 = animelem = 1 && random < 630
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 630, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1

[State 630, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -58
hitsound = s2, 3
guardsound = s3, 0
animtype = Light
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
ground.velocity = -4 / ((var(20) > 0) + 1.0), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.30, -7.51)
air.hittime = 18 + 2 * var(9)
air.velocity = -3, -5
air.cornerpush.veloff = 0
guard.hittime = 12
guard.velocity = -5
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 630, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 640, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 640, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -77
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 11 + 3 * var(9)
ground.slidetime = 11 + 3 * var(9)
ground.velocity = -4 / ((var(20) > 0) + 1.0), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.30, -7.51)
air.hittime = 11 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
guard.hittime = 18
guard.velocity = -8
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
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


;=========< Yuri Ori >==========
[Statedef 645]
type = A
physics = N
movetype = A
anim = 645
ctrl = 0
sprpriority = 1
poweradd = 18 * !var(20)

[State 645, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0
[State 645, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 4
channel = 1

[State 645, Turn]
type = turn
trigger1 = !time

[State 645, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 4
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 65 < 7, 7, fvar(11) * 65)), 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -33
hitsound = s2, 4
guardsound = s3, 0
animtype = Medium
air.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 3 * var(9)
ground.slidetime = 18 + 3 * var(9)
ground.velocity = -4 / ((var(20) > 0) + 1.0), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.30, -7.51)
air.hittime = 11 + 3 * var(9)
air.velocity = -5, -5
air.cornerpush.veloff = 0
guard.hittime = 18
guard.velocity = -8
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 645, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 645, Accel]
type = gravity
trigger1 = time >= 0
[State 645, Land]
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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 650, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1

[State 650, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 83 < 7, 7, fvar(11) * 83)), 0
getpower = ifelse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8010 + (random % 8)
guard.sparkno = s8000
sparkxy = var(21) := -10, var(22) := -33
hitsound = s2, 5
guardsound = s3, 0
animtype = Hard
air.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * var(9)
ground.slidetime = 12 + 4 * var(9)
ground.velocity = -4 / ((var(20) > 0) + 1.0), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.30, -7.51)
air.hittime = 18 + 4 * var(9)
air.velocity = -6, -5
air.cornerpush.veloff = 0
guard.hittime = 20
guard.velocity = -11
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
fall.recover = 1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 650, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
guard.sparkno = -1
sparkxy = var(21) := -10, var(22) := -71
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
p1facing = 1
p2facing = 1
p1stateno = ifelse(command = "holdback", 803, 801) 

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
guard.sparkno = -1
sparkxy = var(21) := -10, var(22) := -71
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
p1facing = 1
p2facing = 1
p1stateno = ifelse(command = "holdback", 801, 803) 

[State 800, Snd]
type = playsnd
trigger1 = animelem = 3
value = 6, 0
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
[State 801, width]
type = width
trigger1 = 1
edge = 24, 24

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
pos = 48, 0

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
pos = 48, 0
[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 24, 0
[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0
[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 24, 0
[State 803, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 48, 0

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


;=========< Oni Harite >==========
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
trigger1 = !time
value = 811
[State 810, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 810, width]
type = width
trigger1 = 1
edge = 48, 0

[State 810, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0

[State 810, Bind]
type = targetbind
trigger1 = numtarget && animelemtime(2) < 0
pos = 48, 0
[State 810, Bind]
type = targetbind
trigger1 = numtarget && animelemtime(2) >= 0 && animelemtime(5) < 0
pos = 16, 0
[State 810, Bind]
type = targetbind
trigger1 = numtarget && animelem = 5
pos = 38, -16

[State 810, damage]
type = targetlifeadd
trigger1 = animelem = 5
value = ceil(ifelse(111 * fvar(11) < 7, -7, -111 * fvar(11)))
[State 810, givepower]
type = targetpoweradd
trigger1 = animelem = 5
value = 36
[State 810, getpower]
type = poweradd
trigger1 = animelem = 6 && !var(20)
value = 72

[State 810, Juggle]
type = varadd
trigger1 = animelem = 5
var(14) = 1

[State 810, throw]
type = targetstate
trigger1 = animelem = 6
value = 812

[State 810, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 0
channel = 1
[State 810, Snd]
type = playsnd
trigger1 = numtarget && animelem = 5
value = 7, 4
[State 810, Sparks]
type = explod
trigger1 = numtarget && animelem = 5
anim = 8020 + (random % 8)
sprpriority = 5
postype = p1
pos = 38, -78
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
[State 810, Shake]
type = envshake
trigger1 = numtarget && animelem = 5
time = 14
ampl = -4

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
y = -6

[State 812, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 812, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5052), 5052, 5030)

[State 812, Anim]
type = changeanim
trigger1 = anim = 5030 && vel y >= 1
trigger1 = selfanimexist(5035)
value = 5035

[State 812, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050

[State 812, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 812, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;=========< Silent Nage >==========
[Statedef 820]
type = A
physics = N
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

[State 820, throw]
type = targetstate
trigger1 = !time
value = 821
[State 820, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 820, width]
type = width
trigger1 = animelemtime(6) >= 0
edge = 0, 48

[State 820, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 3
channel = 0

[State 820, Vel]
type = veladd
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
y = 0.5
[State 820, Vel]
type = velset
trigger1 = animelem = 5
x = -2
y = 4

[State 820, Anim]
type = changeanim
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger1 = pos y < 0
value = 820
elem = ifelse(pos y <= 14, 5, 6)
[State 820, Vel]
type = velset
trigger1 = animelemtime(6) >= 0
x = 0
y = 0
[State 895, Pos]
type = posset
trigger1 = animelemtime(6) >= 0
y = 0

[State 820, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
statetype = A
physics = N
[State 820, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N

[State 820, Bind 0]
type = bindtotarget
trigger1 = numtarget && animelemtime(5) < 0
pos = 32, 54, mid
[State 820, Bind 5]
type = targetbind
trigger1 = numtarget && animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 15, -60
[State 820, Bind 6]
type = targetbind
trigger1 = numtarget && animelemtime(6) >= 0 && animelemtime(7) < 0
pos = -10, -45
[State 820, Bind 7]
type = targetbind
trigger1 = numtarget && animelem = 7
pos = -50, -61

[State 820, Pos]
type = posset
trigger1 = pos y > 32 && animelemtime(5) < 0
y = 32
[State 820, Pos]
type = posset
trigger1 = pos y > 15 && animelemtime(5) >= 0 && animelemtime(6) < 0
y = 15

[State 820, damage]
type = targetlifeadd
trigger1 = animelem = 7
value = ceil(ifelse(125 * fvar(11) < 7, -7, -125 * fvar(11)))
[State 820, givepower]
type = targetpoweradd
trigger1 = animelem = 7
value = 36
[State 820, getpower]
type = poweradd
trigger1 = animelem = 7 && !var(20)
value = 72

[State 820, Juggle]
type = varadd
trigger1 = animelem = 6
var(14) = 1

[State 820, throw]
type = targetstate
trigger1 = animelem = 6
value = 822

[State 820, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 5100
[State 820, Dust]
type = explod
trigger1 = animelem = 6
anim = 8104
sprpriority = -3
postype = p1
pos = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 820, Turn]
type = turn
trigger1 = animelem = 15
[State 820, End]
type = changestate
trigger1 = !animtime
value = 825 


;--- End ---
[Statedef 825]
type = S
physics = S
movetype = I
anim = 825
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 825, Vel]
type = veladd
trigger1 = anim = 825 && animelemtime(2) >= 0
y = 0.25
[State 825, Vel]
type = velset
trigger1 = anim = 825 && animelem = 2
y = -4.5
[State 825, statetype]
type = statetypeset
trigger1 = anim = 825 && animelemtime(2) >= 0
statetype = A
physics = N

[State 825, Anim]
type = changeanim
trigger1 = anim = 825 && animelemtime(2) >= 0
trigger1 = vel y > 0 && pos y >= 0
value = 826
[State 825, Turn]
type = turn
trigger1 = anim = 826 && animelem = 1

[State 825, Vel]
type = velset
trigger1 = anim = 826
x = 0
y = 0
[State 825, Pos]
type = posset
trigger1 = anim = 826
y = 0
[State 825, statetype]
type = statetypeset
trigger1 = anim = 826
statetype = S
physics = S

[State 825, Snd]
type = playsnd
trigger1 = anim = 826 && animelem = 1
value = 4, 2
channel = 0

[State 825, End]
type = changestate
trigger1 = anim = 826 && !animtime
value = 0 
ctrl = 1


;--- TARGET ---
[Statedef 821]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 821, Anim]
type = changeanim2
trigger1 = !time
value = 821
[State 821, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[Statedef 822]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0

[State 821, Anim]
type = changeanim2
trigger1 = !time
value = 822

[State 822, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.5

[State 822, Vel]
type = velset
trigger1 = animelem = 2
x = 6
y = -8

[State 822, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 822, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -const(size.ground.back)
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
var(10) = (random < 666)

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
guard.sparkno = -1
sparkxy = var(21) := -10, var(22) := -71
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
p1facing = ifelse(command = "holdback", -1, 1)
p2facing = 1
p1stateno = 860 

[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 6, 0
channel = 0
[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1

[State 850, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 850, Accel]
type = gravity
trigger1 = time >= 0
[State 850, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;=========< Izuna Otoshi >==========
[Statedef 860]
type = A
physics = N
movetype = A
anim = 860
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 860, throw]
type = targetstate
trigger1 = !time
value = 861
[State 860, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 860, width]
type = width
trigger1 = 1
edge = 48, 48

[State 860, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 0
channel = 0

[State 860, Vel]
type = posset
trigger1 = pos y > 0 && animelemtime(5) < 0
y = 0
[State 860, Vel]
type = velset
trigger1 = animelemtime(5) < 0
y = 0
[State 860, Vel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.5

[State 860, Bind 1]
type = bindtotarget
trigger1 = numtarget && animelemtime(2) < 0
pos = 0, 0
[State 860, Bind 2]
type = targetbind
trigger1 = numtarget && animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -32, -106
[State 860, Bind 3]
type = targetbind
trigger1 = numtarget && animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -54, -68
[State 860, Bind 4]
type = targetbind
trigger1 = numtarget && animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -45, -33
[State 860, Bind 5]
type = targetbind
trigger1 = numtarget && animelemtime(5) >= 0
pos = -20, 0

[State 860, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 862


[Statedef 862]
type = A
physics = N
movetype = A
anim = 862
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 862, throw]
type = targetstate
trigger1 = !time
value = 863
[State 862, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 862, width]
type = width
trigger1 = 1
edge = 48, 0

[State 862, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0
[State 863, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.25
[State 862, Vel]
type = velset
trigger1 = animelem = 2
x = -2
y = -4

[State 862, Snd]
type = playsnd
trigger1 = !time
value = 0, 8110
[State 862, Dust]
type = explod
trigger1 = !time
anim = 8110
sprpriority = -3
postype = p1
pos = -18, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 862, Shake]
type = envshake
trigger1 = !time
time = 14
ampl = -6

[State 862, Bind]
type = targetbind
trigger1 = numtarget && animelemtime(2) < 0
pos = -18, 0

[State 862, damage]
type = targetlifeadd
trigger1 = animelem = 1
value = ceil(ifelse(125 * fvar(11) < 7, -7, -125 * fvar(11)))
[State 862, givepower]
type = targetpoweradd
trigger1 = animelem = 1
value = 36
[State 862, getpower]
type = poweradd
trigger1 = animelem = 1 && !var(20)
value = 72

[State 862, Juggle]
type = varadd
trigger1 = animelem = 1
var(14) = 1

[State 862, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 864


[Statedef 864]
type = S
physics = S
ctrl = 0
anim = 864
velset = 0, 0

[State 864, Pos]
type = posset
trigger1 = 1
y = 0

[State 864, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 864, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 864, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 861]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 861, Anim]
type = changeanim2
trigger1 = !time
value = 861
[State 861, Camera]
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

[State 863, Vel]
type = velset
trigger1 = animelem = 2
x = -4
y = -6
[State 863, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.5

[State 863, End]
type = selfstate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && pos y >= 0
value = 5110


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
value = 5940, 0
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
