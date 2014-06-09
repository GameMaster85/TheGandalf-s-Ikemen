; _______________________________
;| Nash by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< SPECIAL STATES >=======================================
;============================================================================================

;======================< SONIC BOOM >=============================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[State 1000, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "z" || command = "rlsz"), 2, ifelse((command = "y" || command = "rlsy"), 1, 0))
[State 1000, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0))

[State 1000, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2
value = 5, 0
channel = 0
[State 1000, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 0

[State 1000, FX]
type = helper
trigger1 = !numhelper(1010) && animelem = 3
helpertype = normal
stateno = 1010
ID = 1010
name = "Sonic Boom FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1000, Sonic Boom]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1005
ID = 1000
name = "Sonic Boom"
postype = p1
pos = ceil(47 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< EX SONIC BOOM >=============================
[Statedef 1020]
type = S
physics = S
movetype = A
anim = 1020
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1020, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1020, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1020, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1020, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1020, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-52 * const(size.xscale)), ceil(-75 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1020, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2
value = 5, 0
channel = 0
[State 1020, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 0

[State 1020, FX]
type = helper
trigger1 = !numhelper(1010) && animelem = 3
helpertype = normal
stateno = 1010
ID = 1010
name = "Sonic Boom FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1020, Sonic Boom]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1025
ID = 1020
name = "Sonic Boom"
postype = p1
pos = ceil(47 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1020, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< SOMMERSAULT SHELL >=============================
[Statedef 1100]
type = A
physics = N
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[State 1100, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "c" || command = "rlsc"), 2, ifelse((command = "b" || command = "rlsb"), 1, 0))
[State 1100, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0))
[State 1100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1102, ifelse(var(10) = 1, 1101, 1100))

[State 1100, nothitby]
type = nothitby
trigger1 = time <= 6
value = SCA
time = 1
ignorehitpause = 1

[State 1100, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.8
[State 1100, Vel]
type = velset
trigger1 = animelem = 4
x = 2
y = ifelse(anim = 1102, -11.6, ifelse(anim = 1101, -10.3, -9))

[State 1100, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 3
value = 5, 2
channel = 0
[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 7, 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40
[State 1100, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1100, FX]
type = helper
trigger1 = !numhelper(1105) && animelem = 3
helpertype = normal
stateno = 1105
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1100, Hit]
type = hitdef
trigger1 = var(14) < 1
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (ifelse(var(10) = 2, 102, ifelse(var(10) = 1, 118, 104))) < 7, 7, fvar(11) * (ifelse(var(10) = 2, 102, ifelse(var(10) = 1, 118, 104))))), ifelse(var(10) = 2, 15, 13)
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; ifelse(var(10) = 2, 68, ifelse(var(10) = 1, 53, 50))
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-30 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1100, Hit]
type = hitdef
triggerall = var(14) < 1
trigger1 = animelem = 4 && var(10) < 2 && !movecontact && !movereversed
trigger2 = animelem = 4 && var(10) = 2 && !movehit
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; ifelse(var(10) = 2, 67, ifelse(var(10) = 1, 52, 49))
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-30 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1100, Hit]
type = hitdef
trigger1 = var(14) < ifelse(var(10) < 2 || (!movecontact && !movereversed), 1, 2)
trigger1 = animelem = 6 && anim = 1102
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -5.1 / ((var(20) > 0) + 1.0), -5.15
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.1 / ((var(20) > 0) + 1.0), -5.15
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 50
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-60 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1100, statetype]
type = statetypeset
trigger1 = (anim = [1100, 1101]) && animelemtime(6) >= 0
trigger2 = anim = 1102 && animelemtime(8) >= 0
movetype = I
[State 1100, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1103


;--- LAND ---
[Statedef 1103]
type = S
physics = S
ctrl = 0
anim = 1103
velset = 0, 0
movehitpersist = 1
[State 1103, Pos]
type = posset
trigger1 = 1
y = 0
[State 1103, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< EX SOMMERSAULT SHELL >=============================
[Statedef 1120]
type = A
physics = N
movetype = A
anim = 1120
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1120, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1120, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1120, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1120, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1120, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(16 * const(size.xscale)), ceil(-63 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1120, nothitby]
type = nothitby
trigger1 = time <= 6
value = SCA
time = 1
ignorehitpause = 1

[State 1120, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.8
[State 1120, Vel]
type = velset
trigger1 = animelem = 4
x = 2
y = -11.6

[State 1120, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 3
value = 5, 2
channel = 0
[State 1120, Snd]
type = playsnd
trigger1 = animelem = 3
value = 7, 1

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40
[State 1120, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1120, Sommersault Shell]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1125
ID = 1120
name = "Sommersault Shell"
postype = p1
pos = ceil(86 * const(size.xscale)), ceil(-115 * const(size.yscale))
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1
[State 1120, FX]
type = helper
trigger1 = !numhelper(1105) && animelem = 3
helpertype = normal
stateno = 1105
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1120, Hit]
type = hitdef
trigger1 = var(14) < (2 + hitcount)
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 13
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -5.67, -7.5
guard.velocity = -12.75
air.velocity = -5.67, -7.5
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 67
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-30 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1120, Hit]
type = hitdef
trigger1 = var(14) < (2 + hitcount)
trigger1 = animelem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -5.67, -7.5
guard.velocity = -12.75
air.velocity = -5.67, -7.5
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 50
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-30 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1120, Hit]
type = hitdef
trigger1 = var(14) < (2 + hitcount)
trigger1 = animelem = 6
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -5.1, -5.15
guard.velocity = -12.75
air.velocity = -5.1, -5.15
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120; 50
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-60 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1120, statetype]
type = statetypeset
trigger1 = (anim = [1120, 1101]) && animelemtime(6) >= 0
trigger2 = anim = 1102 && animelemtime(8) >= 0
movetype = I
[State 1120, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1103


;======================< MOONSAULT SLASH >=============================
[Statedef 1200]
type = A
physics = N
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)

[State 1200, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "c" || command = "rlsc"), 2, ifelse((command = "b" || command = "rlsb"), 1, 0))
[State 1200, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(random < 500, 2, ifelse(random < 500, 1, 0))
[State 1200, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1202, ifelse(var(10) = 1, 1201, 1200))

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = ifelse(vel y >= 10, 0.5, 1)
[State 1200, Vel]
type = velset
trigger1 = animelem = 4
x = ifelse(anim = 1202, 8, ifelse(anim = 1201, 6, 4))

[State 1200, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 4
value = 4, 2
channel = 0
[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 1

[State 1200, FX]
type = helper
trigger1 = !numhelper(1205) && animelem = 5
helpertype = normal
stateno = 1205
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = var(14) < 1
trigger1 = animelem = 5
ID = 1200
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (83 + var(10) * 7) < 7, 7, fvar(11) * (83 + var(10) * 7))), (12 + var(10))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -6, 8
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-30 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1200, p2state]
type = targetstate
trigger1 = movehit && numtarget(1200)
trigger1 = !(target, time) && (target(1200), stateno = [5000, 5010])
value = 7070
ID = 1200
ignorehitpause = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1200, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1203


;--- LAND ---
[Statedef 1203]
type = S
physics = S
ctrl = 0
anim = 1203
velset = 0, 0
movehitpersist = 1
[State 1203, Pos]
type = posset
trigger1 = 1
y = 0
[State 1203, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1203, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1203, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Slammed Against Ground ---
[Statedef 7070]
type = A
movetype = H
physics = N
velset = 0, 0
[State 7070, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5980), 5980, 5012)
[State 7070, Vel]
type = hitvelset
trigger1 = hitshakeover
x = 1
y = 1
[State 7070, End]
type = changestate
trigger1 = hitshakeover && pos y >= 0
value = 7071

[Statedef 7071]
type = L
movetype = H
physics = N
velset = 0, 0
[State 7071, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)
[State 7071, hurt]
type = hitfalldamage
trigger1 = !time
[State 7071, Shake]
type = envshake
trigger1 = !time
time = 14
freq = 120
ampl = -4
[State 7071, Pos]
type = posset
trigger1 = 1
y = 0
[State 7071, Snd]
type = playsnd
trigger1 = !time
value = f7, 2
[State 7071, FX]
type = explod
trigger1 = !time
anim = f62
postype = p1
pos = 0, 0
sprpriority = -3
[State 7071, End]
type = changestate
trigger1 = !animtime
value = 7072


[Statedef 7072]
type = L
movetype = H
physics = N
[State 7072, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5161), 5161, 5160)
[State 7072, Pos]
type = posset
trigger1 = !time
y = 0
[State 7072, Vel]
type = velset
trigger1 = !time
y = -2.4
[State 7072, accel]
type = veladd
trigger1 = 1
y = 0.6
[State 7072, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5110


;======================< EX MOONSAULT SLASH >=============================
[Statedef 1220]
type = A
physics = N
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500

[State 1220, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1220, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1220, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1220, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1220, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(2 * const(size.xscale)), ceil(-78 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = ifelse(vel y >= 10, 0.5, 1)
[State 1220, Vel]
type = velset
trigger1 = animelem = 4
x = 10

[State 1220, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 4
value = 4, 2
channel = 0
[State 1220, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 1

[State 1220, FX]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1205
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1220, autoguard]
type = reversaldef
trigger1 = animelem = 3
reversal.attr = SCA, NA, SA
pausetime = 12, 12
sparkno = s8001
hitsound = s3, 0
numhits = 0

[State 1220, Hit]
type = hitdef
trigger1 = var(14) < 2
trigger1 = animelem = 5
ID = 1220
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 114 < 7, 7, fvar(11) * 114)), 14
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -6, 8
guard.velocity = -12.75
air.velocity = -5.67, -6.67
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-30 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1220, p2state]
type = targetstate
trigger1 = movehit && numtarget(1220)
trigger1 = !(target, time) && (target(1220), stateno = [5000, 5010])
value = 7070
ID = 1220
ignorehitpause = 1

[State 1220, statetype]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1220, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1203


;======================< SHADOW WARP >=============================
[Statedef 1300]
type = S
physics = N
movetype = I
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = -2
facep2 = 1

[State 1300, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "c" || command = "rlsc"), 2, ifelse((command = "b" || command = "rlsb"), 1, 0))
[State 1300, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(random < 500, 2, ifelse(random < 666, 1, 0))
[State 1300, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1302, ifelse(var(10) = 1, 1301, 1300))

[State 1300, Push]
type = playerpush
trigger1 = animelemtime(3) < 0
value = 0
[State 1300, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
value = SCA, AA, AP, AT
time = 1

[State 1300, Vel]
type = velset
trigger1 = animelem = 2
x = 10
[State 1300, Vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 2
value = 7, 4
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 101

[State 1300, FX]
type = helper
trigger1 = !numhelper(1305) && animelem = 2
helpertype = normal
stateno = 1305
ID = 1305
name = "Warp FX"
postype = p1
ownpal = 1
[State 1300, palfx]
type = palfx
trigger1 = animelemtime(2) >= -1 && animelemtime(3) <= -1
time = 10
add = -255, -255, -255
sinadd = 255, 255, 255, 40

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< PUNCH ZERO COUNTER >=============================
[Statedef 2900]
type = S
physics = S
movetype = A
anim = 2900
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 2900, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2
value = 4, 2
channel = 0
[State 2900, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5

[State 2900, nothitby]
type = nothitby
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-75 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 13
ground.velocity = -6.5, -5.85
guard.velocity = -12.75
air.velocity = -6.5, -5.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 32
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
kill = 0
forcestand = 1

[State 2900, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< KICK ZERO COUNTER >=============================
[Statedef 2950]
type = C
physics = C
movetype = A
anim = 2950
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 2950, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1
value = 4, 2
channel = 0
[State 2950, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5

[State 2950, nothitby]
type = nothitby
trigger1 = animelemtime(5) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2950, Hit]
type = hitdef
trigger1 = animelem = 5
attr = C, SA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-18 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 13
ground.velocity = -7.8, -5.1
guard.velocity = -12.75
air.velocity = -7.8, -5.1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 31
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
kill = 0
forcestand = 1

[State 2950, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 2950, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1
